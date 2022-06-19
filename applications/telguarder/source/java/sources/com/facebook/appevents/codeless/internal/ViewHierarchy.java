package com.facebook.appevents.codeless.internal;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/internal/ViewHierarchy.class */
public class ViewHierarchy {
    private static final String CLASS_RCTROOTVIEW = "com.facebook.react.ReactRootView";
    private static final String CLASS_RCTTEXTVIEW = "com.facebook.react.views.view.ReactTextView";
    private static final String CLASS_RCTVIEWGROUP = "com.facebook.react.views.view.ReactViewGroup";
    private static final String CLASS_TOUCHTARGETHELPER = "com.facebook.react.uimanager.TouchTargetHelper";
    private static final int ICON_MAX_EDGE_LENGTH = 44;
    private static final String METHOD_FIND_TOUCHTARGET_VIEW = "findTouchTargetView";
    private static final String TAG = "com.facebook.appevents.codeless.internal.ViewHierarchy";
    private static WeakReference<View> RCTRootViewReference = new WeakReference<>(null);
    private static Method methodFindTouchTargetView = null;

    public static View findRCTRootView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        while (view != null) {
            try {
                if (isRCTRootView(view)) {
                    return view;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
                return null;
            }
        }
        return null;
    }

    public static List<View> getChildrenOfView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    arrayList.add(viewGroup.getChildAt(i));
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    public static int getClassTypeBitmask(View view) {
        int i;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return 0;
        }
        try {
            int i2 = view instanceof ImageView ? 2 : 0;
            int i3 = i2;
            if (view.isClickable()) {
                i3 = i2 | 32;
            }
            int i4 = i3;
            if (isAdapterViewItem(view)) {
                i4 = i3 | 512;
            }
            if (view instanceof TextView) {
                int i5 = i4 | 1024 | 1;
                int i6 = i5;
                if (view instanceof Button) {
                    int i7 = i5 | 4;
                    if (view instanceof Switch) {
                        i6 = i7 | 8192;
                    } else {
                        i6 = i7;
                        if (view instanceof CheckBox) {
                            i6 = i7 | 32768;
                        }
                    }
                }
                i = i6;
                if (view instanceof EditText) {
                    i = i6 | 2048;
                }
            } else {
                if (!(view instanceof Spinner) && !(view instanceof DatePicker)) {
                    if (view instanceof RatingBar) {
                        i = i4 | 65536;
                    } else if (view instanceof RadioGroup) {
                        i = i4 | 16384;
                    } else {
                        i = i4;
                        if (view instanceof ViewGroup) {
                            i = i4;
                            if (isRCTButton(view, RCTRootViewReference.get())) {
                                i = i4 | 64;
                            }
                        }
                    }
                }
                i = i4 | 4096;
            }
            return i;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return 0;
        }
    }

    public static JSONObject getDictionaryOfView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            if (view.getClass().getName().equals(CLASS_RCTROOTVIEW)) {
                RCTRootViewReference = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                updateBasicInfoOfView(view, jSONObject);
                JSONArray jSONArray = new JSONArray();
                List<View> childrenOfView = getChildrenOfView(view);
                for (int i = 0; i < childrenOfView.size(); i++) {
                    jSONArray.put(getDictionaryOfView(childrenOfView.get(i)));
                }
                jSONObject.put(ViewHierarchyConstants.CHILDREN_VIEW_KEY, jSONArray);
            } catch (JSONException e) {
                Log.e(TAG, "Failed to create JSONObject for view.", e);
            }
            return jSONObject;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    private static JSONObject getDimensionOfView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ViewHierarchyConstants.DIMENSION_TOP_KEY, view.getTop());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, view.getLeft());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, view.getWidth());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, view.getHeight());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_SCROLL_X_KEY, view.getScrollX());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_SCROLL_Y_KEY, view.getScrollY());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_VISIBILITY_KEY, view.getVisibility());
            } catch (JSONException e) {
                Log.e(TAG, "Failed to create JSONObject for dimension.", e);
            }
            return jSONObject;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    private static Class<?> getExistingClass(String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    public static View.OnClickListener getExistingOnClickListener(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            Object obj = declaredField.get(view);
            if (obj == null) {
                return null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            View.OnClickListener onClickListener = null;
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
                onClickListener = (View.OnClickListener) declaredField2.get(obj);
            }
            return onClickListener;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    public static View.OnTouchListener getExistingOnTouchListener(View view) {
        try {
            if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
                return null;
            }
            try {
                try {
                    try {
                        Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                        if (declaredField != null) {
                            declaredField.setAccessible(true);
                        }
                        Object obj = declaredField.get(view);
                        if (obj == null) {
                            return null;
                        }
                        Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener");
                        View.OnTouchListener onTouchListener = null;
                        if (declaredField2 != null) {
                            declaredField2.setAccessible(true);
                            onTouchListener = (View.OnTouchListener) declaredField2.get(obj);
                        }
                        return onTouchListener;
                    } catch (ClassNotFoundException e) {
                        Utility.logd(TAG, e);
                        return null;
                    }
                } catch (NoSuchFieldException e2) {
                    Utility.logd(TAG, e2);
                    return null;
                }
            } catch (IllegalAccessException e3) {
                Utility.logd(TAG, e3);
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    public static String getHintOfView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            CharSequence hint = view instanceof EditText ? ((EditText) view).getHint() : view instanceof TextView ? ((TextView) view).getHint() : null;
            return hint == null ? "" : hint.toString();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    public static ViewGroup getParentOfView(View view) {
        if (!CrashShieldHandler.isObjectCrashing(ViewHierarchy.class) && view != null) {
            try {
                ViewParent parent = view.getParent();
                if (!(parent instanceof ViewGroup)) {
                    return null;
                }
                return (ViewGroup) parent;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0136 A[Catch: all -> 0x013d, TRY_ENTER, TryCatch #0 {all -> 0x013d, blocks: (B:5:0x000a, B:7:0x0011, B:9:0x001a, B:11:0x0020, B:17:0x003a, B:19:0x0041, B:21:0x004b, B:23:0x0057, B:24:0x005f, B:27:0x006a, B:28:0x009b, B:30:0x00a2, B:31:0x00cf, B:33:0x00d6, B:37:0x00ed, B:39:0x00fc, B:41:0x0103, B:43:0x0114, B:45:0x011b, B:50:0x0136), top: B:56:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getTextOfView(android.view.View r6) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.internal.ViewHierarchy.getTextOfView(android.view.View):java.lang.String");
    }

    public static View getTouchReactView(float[] fArr, View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            initTouchTargetHelperMethods();
            Method method = methodFindTouchTargetView;
            if (method == null || view == null) {
                return null;
            }
            try {
                View view2 = (View) method.invoke(null, fArr, view);
                if (view2 == null || view2.getId() <= 0) {
                    return null;
                }
                View view3 = (View) view2.getParent();
                View view4 = null;
                if (view3 != null) {
                    view4 = view3;
                }
                return view4;
            } catch (IllegalAccessException e) {
                Utility.logd(TAG, e);
                return null;
            } catch (InvocationTargetException e2) {
                Utility.logd(TAG, e2);
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    private static float[] getViewLocationOnScreen(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new float[]{iArr[0], iArr[1]};
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return null;
        }
    }

    private static void initTouchTargetHelperMethods() {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return;
        }
        try {
            if (methodFindTouchTargetView != null) {
                return;
            }
            try {
                Method declaredMethod = Class.forName(CLASS_TOUCHTARGETHELPER).getDeclaredMethod(METHOD_FIND_TOUCHTARGET_VIEW, float[].class, ViewGroup.class);
                methodFindTouchTargetView = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (ClassNotFoundException e) {
                Utility.logd(TAG, e);
            } catch (NoSuchMethodException e2) {
                Utility.logd(TAG, e2);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
        }
    }

    private static boolean isAdapterViewItem(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return false;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof AdapterView) {
                return true;
            }
            Class<?> existingClass = getExistingClass("android.support.v4.view.NestedScrollingChild");
            if (existingClass != null && existingClass.isInstance(parent)) {
                return true;
            }
            Class<?> existingClass2 = getExistingClass("androidx.core.view.NestedScrollingChild");
            if (existingClass2 == null) {
                return false;
            }
            return existingClass2.isInstance(parent);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return false;
        }
    }

    public static boolean isRCTButton(View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return false;
        }
        boolean z = false;
        try {
            if (view.getClass().getName().equals(CLASS_RCTVIEWGROUP)) {
                View touchReactView = getTouchReactView(getViewLocationOnScreen(view), view2);
                z = false;
                if (touchReactView != null) {
                    z = false;
                    if (touchReactView.getId() == view.getId()) {
                        z = true;
                    }
                }
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return false;
        }
    }

    public static boolean isRCTRootView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return false;
        }
        try {
            return view.getClass().getName().equals(CLASS_RCTROOTVIEW);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return false;
        }
    }

    public static boolean isRCTTextView(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return false;
        }
        try {
            return view.getClass().getName().equals(CLASS_RCTTEXTVIEW);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return false;
        }
    }

    public static boolean isRCTViewGroup(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return false;
        }
        try {
            return view.getClass().getName().equals(CLASS_RCTVIEWGROUP);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
            return false;
        }
    }

    public static void setOnClickListener(View view, View.OnClickListener onClickListener) {
        Field field;
        Field field2;
        Object obj;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return;
        }
        try {
            try {
                field2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                try {
                    field = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
                } catch (ClassNotFoundException | NoSuchFieldException e) {
                    field = null;
                    if (field2 != null) {
                    }
                    view.setOnClickListener(onClickListener);
                    return;
                }
            } catch (ClassNotFoundException | NoSuchFieldException e2) {
                field2 = null;
            }
            if (field2 != null || field == null) {
                view.setOnClickListener(onClickListener);
                return;
            }
            field2.setAccessible(true);
            field.setAccessible(true);
            try {
                field2.setAccessible(true);
                obj = field2.get(view);
            } catch (IllegalAccessException e3) {
                obj = null;
            }
            if (obj == null) {
                view.setOnClickListener(onClickListener);
            } else {
                field.set(obj, onClickListener);
            }
        } catch (Exception e4) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
        }
    }

    public static void updateAppearanceOfView(View view, JSONObject jSONObject, float f) {
        Bitmap bitmap;
        TextView textView;
        Typeface typeface;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return;
        }
        try {
            try {
                JSONObject jSONObject2 = new JSONObject();
                if ((view instanceof TextView) && (typeface = (textView = (TextView) view).getTypeface()) != null) {
                    jSONObject2.put(ViewHierarchyConstants.TEXT_SIZE, textView.getTextSize());
                    jSONObject2.put(ViewHierarchyConstants.TEXT_IS_BOLD, typeface.isBold());
                    jSONObject2.put(ViewHierarchyConstants.TEXT_IS_ITALIC, typeface.isItalic());
                    jSONObject.put(ViewHierarchyConstants.TEXT_STYLE, jSONObject2);
                }
                if (!(view instanceof ImageView)) {
                    return;
                }
                Drawable drawable = ((ImageView) view).getDrawable();
                if (!(drawable instanceof BitmapDrawable) || view.getHeight() / f > 44.0f || view.getWidth() / f > 44.0f || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null) {
                    return;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                jSONObject.put(ViewHierarchyConstants.ICON_BITMAP, Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
            } catch (JSONException e) {
                Utility.logd(TAG, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
        }
    }

    public static void updateBasicInfoOfView(View view, JSONObject jSONObject) {
        try {
            if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
                return;
            }
            try {
                String textOfView = getTextOfView(view);
                String hintOfView = getHintOfView(view);
                Object tag = view.getTag();
                CharSequence contentDescription = view.getContentDescription();
                jSONObject.put(ViewHierarchyConstants.CLASS_NAME_KEY, view.getClass().getCanonicalName());
                jSONObject.put(ViewHierarchyConstants.CLASS_TYPE_BITMASK_KEY, getClassTypeBitmask(view));
                jSONObject.put("id", view.getId());
                if (!SensitiveUserDataUtils.isSensitiveUserData(view)) {
                    jSONObject.put("text", Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(textOfView), ""));
                } else {
                    jSONObject.put("text", "");
                    jSONObject.put(ViewHierarchyConstants.IS_USER_INPUT_KEY, true);
                }
                jSONObject.put(ViewHierarchyConstants.HINT_KEY, Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(hintOfView), ""));
                if (tag != null) {
                    jSONObject.put(ViewHierarchyConstants.TAG_KEY, Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(tag.toString()), ""));
                }
                if (contentDescription != null) {
                    jSONObject.put("description", Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(contentDescription.toString()), ""));
                }
                jSONObject.put(ViewHierarchyConstants.DIMENSION_KEY, getDimensionOfView(view));
            } catch (JSONException e) {
                Utility.logd(TAG, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewHierarchy.class);
        }
    }
}
