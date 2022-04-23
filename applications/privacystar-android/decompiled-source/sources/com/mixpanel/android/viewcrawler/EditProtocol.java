package com.mixpanel.android.viewcrawler;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.mpmetrics.ResourceIds;
import com.mixpanel.android.util.ImageStore;
import com.mixpanel.android.util.JSONUtils;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.MPPair;
import com.mixpanel.android.viewcrawler.Pathfinder;
import com.mixpanel.android.viewcrawler.ViewVisitor;
import com.privacystar.core.service.googleplay.IABConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditProtocol.class */
public class EditProtocol {
    private static final String LOGTAG = "MixpanelAPI.EProtocol";
    private final Context mContext;
    private final ImageStore mImageStore;
    private final ViewVisitor.OnLayoutErrorListener mLayoutErrorListener;
    private final ResourceIds mResourceIds;
    private static final Class<?>[] NO_PARAMS = new Class[0];
    private static final List<Pathfinder.PathElement> NEVER_MATCH_PATH = Collections.emptyList();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException.class */
    public static class BadInstructionsException extends Exception {
        private static final long serialVersionUID = -4062004792184145311L;

        public BadInstructionsException(String str) {
            super(str);
        }

        public BadInstructionsException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException.class */
    public static class CantGetEditAssetsException extends Exception {
        public CantGetEditAssetsException(String str) {
            super(str);
        }

        public CantGetEditAssetsException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditProtocol$Edit.class */
    public static class Edit {
        public final List<String> imageUrls;
        public final ViewVisitor visitor;

        private Edit(ViewVisitor viewVisitor, List<String> list) {
            this.visitor = viewVisitor;
            this.imageUrls = list;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException.class */
    public static class InapplicableInstructionsException extends BadInstructionsException {
        private static final long serialVersionUID = 3977056710817909104L;

        public InapplicableInstructionsException(String str) {
            super(str);
        }
    }

    public EditProtocol(Context context, ResourceIds resourceIds, ImageStore imageStore, ViewVisitor.OnLayoutErrorListener onLayoutErrorListener) {
        this.mContext = context;
        this.mResourceIds = resourceIds;
        this.mImageStore = imageStore;
        this.mLayoutErrorListener = onLayoutErrorListener;
    }

    private Object convertArgument(Object obj, String str, List<String> list) throws BadInstructionsException, CantGetEditAssetsException {
        try {
            if ("java.lang.CharSequence".equals(str)) {
                return obj;
            }
            if (!"boolean".equals(str) && !"java.lang.Boolean".equals(str)) {
                if (!"int".equals(str) && !"java.lang.Integer".equals(str)) {
                    if (!"float".equals(str) && !"java.lang.Float".equals(str)) {
                        if (!"android.graphics.drawable.Drawable".equals(str) && !"android.graphics.drawable.BitmapDrawable".equals(str)) {
                            if ("android.graphics.drawable.ColorDrawable".equals(str)) {
                                return new ColorDrawable(((Number) obj).intValue());
                            }
                            throw new BadInstructionsException("Don't know how to interpret type " + str + " (arg was " + obj + ")");
                        }
                        return readBitmapDrawable((JSONObject) obj, list);
                    }
                    return Float.valueOf(((Number) obj).floatValue());
                }
                return Integer.valueOf(((Number) obj).intValue());
            }
            return obj;
        } catch (ClassCastException e) {
            throw new BadInstructionsException("Couldn't interpret <" + obj + "> as " + str);
        }
    }

    private Drawable readBitmapDrawable(JSONObject jSONObject, List<String> list) throws BadInstructionsException, CantGetEditAssetsException {
        int i;
        int i2;
        int i3;
        int i4;
        try {
            if (jSONObject.isNull("url")) {
                throw new BadInstructionsException("Can't construct a BitmapDrawable with a null url");
            }
            String string = jSONObject.getString("url");
            boolean z = false;
            if (jSONObject.isNull("dimensions")) {
                i4 = 0;
                i3 = 0;
                i2 = 0;
                i = 0;
            } else {
                JSONObject jSONObject2 = jSONObject.getJSONObject("dimensions");
                i4 = jSONObject2.getInt("left");
                i3 = jSONObject2.getInt("right");
                i2 = jSONObject2.getInt("top");
                i = jSONObject2.getInt("bottom");
                z = true;
            }
            try {
                Bitmap image = this.mImageStore.getImage(string);
                list.add(string);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(Resources.getSystem(), image);
                if (z) {
                    bitmapDrawable.setBounds(i4, i2, i3, i);
                }
                return bitmapDrawable;
            } catch (ImageStore.CantGetImageException e) {
                throw new CantGetEditAssetsException(e.getMessage(), e.getCause());
            }
        } catch (JSONException e2) {
            throw new BadInstructionsException("Couldn't read drawable description", e2);
        }
    }

    private PropertyDescription readPropertyDescription(Class<?> cls, JSONObject jSONObject) throws BadInstructionsException {
        Caller caller;
        try {
            String string = jSONObject.getString("name");
            String str = null;
            if (jSONObject.has("get")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("get");
                caller = new Caller(cls, jSONObject2.getString("selector"), NO_PARAMS, Class.forName(jSONObject2.getJSONObject(IABConstants.JSON_RESULT).getString("type")));
            } else {
                caller = null;
            }
            if (jSONObject.has("set")) {
                str = jSONObject.getJSONObject("set").getString("selector");
            }
            return new PropertyDescription(string, cls, caller, str);
        } catch (ClassNotFoundException e) {
            throw new BadInstructionsException("Can't read property JSON, relevant arg/return class not found", e);
        } catch (NoSuchMethodException e2) {
            throw new BadInstructionsException("Can't create property reader", e2);
        } catch (JSONException e3) {
            throw new BadInstructionsException("Can't read property JSON", e3);
        }
    }

    private Integer reconcileIds(int i, String str, ResourceIds resourceIds) {
        int i2;
        if (str == null) {
            i2 = -1;
        } else if (resourceIds.knownIdName(str)) {
            i2 = resourceIds.idFromName(str);
        } else {
            MPLog.m305w(LOGTAG, "Path element contains an id name not known to the system. No views will be matched.\nMake sure that you're not stripping your packages R class out with proguard.\nid name was \"" + str + "\"");
            return null;
        }
        if (-1 == i2 || -1 == i || i2 == i) {
            return -1 != i2 ? Integer.valueOf(i2) : Integer.valueOf(i);
        }
        MPLog.m311e(LOGTAG, "Path contains both a named and an explicit id, and they don't match. No views will be matched.");
        return null;
    }

    public Edit readEdit(JSONObject jSONObject) throws BadInstructionsException, CantGetEditAssetsException {
        ViewVisitor viewVisitor;
        ArrayList arrayList = new ArrayList();
        try {
            List<Pathfinder.PathElement> readPath = readPath(jSONObject.getJSONArray("path"), this.mResourceIds);
            if (readPath.size() == 0) {
                throw new InapplicableInstructionsException("Edit will not be bound to any element in the UI.");
            }
            if (jSONObject.getString("change_type").equals("property")) {
                String string = jSONObject.getJSONObject("property").getString("classname");
                if (string == null) {
                    throw new BadInstructionsException("Can't bind an edit property without a target class");
                }
                try {
                    PropertyDescription readPropertyDescription = readPropertyDescription(Class.forName(string), jSONObject.getJSONObject("property"));
                    JSONArray jSONArray = jSONObject.getJSONArray("args");
                    Object[] objArr = new Object[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                        objArr[i] = convertArgument(jSONArray2.get(0), jSONArray2.getString(1), arrayList);
                    }
                    Caller makeMutator = readPropertyDescription.makeMutator(objArr);
                    if (makeMutator == null) {
                        throw new BadInstructionsException("Can't update a read-only property " + readPropertyDescription.name + " (add a mutator to make this work)");
                    }
                    viewVisitor = new ViewVisitor.PropertySetVisitor(readPath, makeMutator, readPropertyDescription.accessor);
                } catch (ClassNotFoundException e) {
                    throw new BadInstructionsException("Can't find class for visit path: " + string, e);
                }
            } else if (jSONObject.getString("change_type").equals("layout")) {
                JSONArray jSONArray3 = jSONObject.getJSONArray("args");
                ArrayList arrayList2 = new ArrayList();
                int length = jSONArray3.length();
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = jSONArray3.optJSONObject(i2);
                    String string2 = optJSONObject.getString("view_id_name");
                    String string3 = optJSONObject.getString("anchor_id_name");
                    Integer reconcileIds = reconcileIds(-1, string2, this.mResourceIds);
                    Integer reconcileIds2 = string3.equals("0") ? 0 : string3.equals("-1") ? -1 : reconcileIds(-1, string3, this.mResourceIds);
                    if (reconcileIds == null || reconcileIds2 == null) {
                        MPLog.m305w(LOGTAG, "View (" + string2 + ") or anchor (" + string3 + ") not found.");
                    } else {
                        arrayList2.add(new ViewVisitor.LayoutRule(reconcileIds.intValue(), optJSONObject.getInt("verb"), reconcileIds2.intValue()));
                    }
                }
                viewVisitor = new ViewVisitor.LayoutUpdateVisitor(readPath, arrayList2, jSONObject.getString("name"), this.mLayoutErrorListener);
            } else {
                throw new BadInstructionsException("Can't figure out the edit type");
            }
            return new Edit(viewVisitor, arrayList);
        } catch (NoSuchMethodException e2) {
            throw new BadInstructionsException("Can't create property mutator", e2);
        } catch (JSONException e3) {
            throw new BadInstructionsException("Can't interpret instructions due to JSONException", e3);
        }
    }

    public ViewVisitor readEventBinding(JSONObject jSONObject, ViewVisitor.OnEventListener onEventListener) throws BadInstructionsException {
        try {
            String string = jSONObject.getString("event_name");
            String string2 = jSONObject.getString("event_type");
            List<Pathfinder.PathElement> readPath = readPath(jSONObject.getJSONArray("path"), this.mResourceIds);
            if (readPath.size() == 0) {
                throw new InapplicableInstructionsException("event '" + string + "' will not be bound to any element in the UI.");
            } else if ("click".equals(string2)) {
                return new ViewVisitor.AddAccessibilityEventVisitor(readPath, 1, string, onEventListener);
            } else {
                if ("selected".equals(string2)) {
                    return new ViewVisitor.AddAccessibilityEventVisitor(readPath, 4, string, onEventListener);
                }
                if ("text_changed".equals(string2)) {
                    return new ViewVisitor.AddTextChangeListener(readPath, string, onEventListener);
                }
                if ("detected".equals(string2)) {
                    return new ViewVisitor.ViewDetectorVisitor(readPath, string, onEventListener);
                }
                throw new BadInstructionsException("Mixpanel can't track event type \"" + string2 + "\"");
            }
        } catch (JSONException e) {
            throw new BadInstructionsException("Can't interpret instructions due to JSONException", e);
        }
    }

    List<Pathfinder.PathElement> readPath(JSONArray jSONArray, ResourceIds resourceIds) throws JSONException {
        int i;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i2);
            String optionalStringKey = JSONUtils.optionalStringKey(jSONObject, "prefix");
            String optionalStringKey2 = JSONUtils.optionalStringKey(jSONObject, "view_class");
            int optInt = jSONObject.optInt(FirebaseAnalytics.Param.INDEX, -1);
            String optionalStringKey3 = JSONUtils.optionalStringKey(jSONObject, "contentDescription");
            int optInt2 = jSONObject.optInt("id", -1);
            String optionalStringKey4 = JSONUtils.optionalStringKey(jSONObject, "mp_id_name");
            String optionalStringKey5 = JSONUtils.optionalStringKey(jSONObject, "tag");
            if ("shortest".equals(optionalStringKey)) {
                i = 1;
            } else if (optionalStringKey == null) {
                i = 0;
            } else {
                MPLog.m305w(LOGTAG, "Unrecognized prefix type \"" + optionalStringKey + "\". No views will be matched");
                return NEVER_MATCH_PATH;
            }
            Integer reconcileIds = reconcileIds(optInt2, optionalStringKey4, resourceIds);
            if (reconcileIds == null) {
                return NEVER_MATCH_PATH;
            }
            arrayList.add(new Pathfinder.PathElement(i, optionalStringKey2, optInt, reconcileIds.intValue(), optionalStringKey3, optionalStringKey5));
        }
        return arrayList;
    }

    public ViewSnapshot readSnapshotConfig(JSONObject jSONObject) throws BadInstructionsException {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = jSONObject.getJSONObject("config").getJSONArray("classes");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                Class<?> cls = Class.forName(jSONObject2.getString("name"));
                JSONArray jSONArray2 = jSONObject2.getJSONArray("properties");
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    arrayList.add(readPropertyDescription(cls, jSONArray2.getJSONObject(i2)));
                }
            }
            return new ViewSnapshot(this.mContext, arrayList, this.mResourceIds);
        } catch (ClassNotFoundException e) {
            throw new BadInstructionsException("Can't resolve types for snapshot configuration", e);
        } catch (JSONException e2) {
            throw new BadInstructionsException("Can't read snapshot configuration", e2);
        }
    }

    public MPPair<String, Object> readTweak(JSONObject jSONObject) throws BadInstructionsException {
        Object obj;
        try {
            String string = jSONObject.getString("name");
            String string2 = jSONObject.getString("type");
            if ("number".equals(string2)) {
                String string3 = jSONObject.getString("encoding");
                if ("d".equals(string3)) {
                    obj = Double.valueOf(jSONObject.getDouble(FirebaseAnalytics.Param.VALUE));
                } else if ("l".equals(string3)) {
                    obj = Long.valueOf(jSONObject.getLong(FirebaseAnalytics.Param.VALUE));
                } else {
                    throw new BadInstructionsException("number must have encoding of type \"l\" for long or \"d\" for double in: " + jSONObject);
                }
            } else if ("boolean".equals(string2)) {
                obj = Boolean.valueOf(jSONObject.getBoolean(FirebaseAnalytics.Param.VALUE));
            } else if ("string".equals(string2)) {
                obj = jSONObject.getString(FirebaseAnalytics.Param.VALUE);
            } else {
                throw new BadInstructionsException("Unrecognized tweak type " + string2 + " in: " + jSONObject);
            }
            return new MPPair<>(string, obj);
        } catch (JSONException e) {
            throw new BadInstructionsException("Can't read tweak update", e);
        }
    }
}
