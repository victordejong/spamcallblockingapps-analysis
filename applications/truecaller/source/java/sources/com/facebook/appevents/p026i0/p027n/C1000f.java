package com.facebook.appevents.p026i0.p027n;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.DatePicker;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import com.amazon.device.ads.DtbConstants;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u00132\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\fH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\fH\u0007J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0016\u0010\u0018\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\u001f\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0014\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\"\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u001e\u0010#\u001a\u0004\u0018\u00010\f2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010'\u001a\u00020%2\u0006\u0010\u0011\u001a\u00020\fH\u0002J\b\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\fH\u0003J\u0018\u0010,\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\f2\b\u0010&\u001a\u0004\u0018\u00010\fJ\u0010\u0010-\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u001a\u0010.\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\f2\b\u0010/\u001a\u0004\u0018\u00010\u001cH\u0007J \u00100\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u000203H\u0007J\u0018\u00104\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u00101\u001a\u00020\u0016H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��¨\u00065"}, d2 = {"Lcom/facebook/appevents/codeless/internal/ViewHierarchy;", "", "()V", "CLASS_RCTROOTVIEW", "", "CLASS_RCTVIEWGROUP", "CLASS_TOUCHTARGETHELPER", "ICON_MAX_EDGE_LENGTH", "", "METHOD_FIND_TOUCHTARGET_VIEW", "RCTRootViewReference", "Ljava/lang/ref/WeakReference;", "Landroid/view/View;", "TAG", "methodFindTouchTargetView", "Ljava/lang/reflect/Method;", "findRCTRootView", ViewAction.VIEW, "getChildrenOfView", "", "getClassTypeBitmask", "getDictionaryOfView", "Lorg/json/JSONObject;", "getDimensionOfView", "getExistingClass", "Ljava/lang/Class;", "className", "getExistingOnClickListener", "Landroid/view/View$OnClickListener;", "getExistingOnTouchListener", "Landroid/view/View$OnTouchListener;", "getHintOfView", "getParentOfView", "Landroid/view/ViewGroup;", "getTextOfView", "getTouchReactView", "location", "", "RCTRootView", "getViewLocationOnScreen", "initTouchTargetHelperMethods", "", "isAdapterViewItem", "", "isRCTButton", "isRCTRootView", "setOnClickListener", "newListener", "updateAppearanceOfView", "json", "displayDensity", "", "updateBasicInfoOfView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.n.f */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/f.class */
public final class C1000f {

    /* renamed from: b */
    public static final String f2757b = "com.facebook.appevents.i0.n.f";

    /* renamed from: d */
    public static Method f2759d;

    /* renamed from: a */
    public static final C1000f f2756a = new C1000f();

    /* renamed from: c */
    public static WeakReference<View> f2758c = new WeakReference<>(null);

    /* renamed from: a */
    public static final List<View> m41929a(View view) {
        if (C1220a.m41623b(C1000f.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof ViewGroup) {
                int childCount = ((ViewGroup) view).getChildCount();
                int i = 0;
                if (childCount > 0) {
                    while (true) {
                        int i2 = i + 1;
                        arrayList.add(((ViewGroup) view).getChildAt(i));
                        if (i2 >= childCount) {
                            break;
                        }
                        i = i2;
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1000f.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0082, code lost:
        if (r0.isInstance(r0) != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f2 A[Catch: all -> 0x0152, TRY_ENTER, TryCatch #2 {all -> 0x0152, blocks: (B:5:0x000e, B:11:0x0024, B:15:0x0030, B:35:0x00a4, B:39:0x00b5, B:43:0x00c0, B:48:0x00d2, B:53:0x00e2, B:57:0x00f2, B:59:0x00f9, B:62:0x0103, B:66:0x0112, B:71:0x0124, B:73:0x012b, B:17:0x003f, B:20:0x0050, B:22:0x005d, B:25:0x006a, B:27:0x0077), top: B:83:0x000e }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m41928b(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p026i0.p027n.C1000f.m41928b(android.view.View):int");
    }

    /* renamed from: c */
    public static final JSONObject m41927c(View view) {
        if (C1220a.m41623b(C1000f.class)) {
            return null;
        }
        try {
            l.e(view, ViewAction.VIEW);
            if (l.a(view.getClass().getName(), "com.facebook.react.ReactRootView")) {
                f2758c = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                m41916n(view, jSONObject);
                JSONArray jSONArray = new JSONArray();
                List<View> m41929a = m41929a(view);
                int i = 0;
                int size = m41929a.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i2 = i + 1;
                        jSONArray.put(m41927c(m41929a.get(i)));
                        if (i2 > size) {
                            break;
                        }
                        i = i2;
                    }
                }
                jSONObject.put("childviews", jSONArray);
            } catch (JSONException e) {
            }
            return jSONObject;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1000f.class);
            return null;
        }
    }

    /* renamed from: f */
    public static final View.OnClickListener m41924f(View view) {
        if (C1220a.m41623b(C1000f.class)) {
            return null;
        }
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            l.d(declaredField, "forName(\"android.view.View\").getDeclaredField(\"mListenerInfo\")");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(view);
            if (obj == null) {
                return null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            l.d(declaredField2, "forName(\"android.view.View\\$ListenerInfo\").getDeclaredField(\"mOnClickListener\")");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (obj2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.View.OnClickListener");
            }
            return (View.OnClickListener) obj2;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return null;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1000f.class);
            return null;
        }
    }

    /* renamed from: g */
    public static final View.OnTouchListener m41923g(View view) {
        try {
            if (C1220a.m41623b(C1000f.class)) {
                return null;
            }
            try {
                try {
                    Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                    l.d(declaredField, "forName(\"android.view.View\").getDeclaredField(\"mListenerInfo\")");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(view);
                    if (obj == null) {
                        return null;
                    }
                    Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener");
                    l.d(declaredField2, "forName(\"android.view.View\\$ListenerInfo\").getDeclaredField(\"mOnTouchListener\")");
                    declaredField2.setAccessible(true);
                    Object obj2 = declaredField2.get(obj);
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type android.view.View.OnTouchListener");
                    }
                    return (View.OnTouchListener) obj2;
                } catch (ClassNotFoundException e) {
                    C1168q0.m41696F(f2757b, e);
                    return null;
                }
            } catch (IllegalAccessException e2) {
                C1168q0.m41696F(f2757b, e2);
                return null;
            } catch (NoSuchFieldException e3) {
                C1168q0.m41696F(f2757b, e3);
                return null;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1000f.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
        if (r0 == null) goto L17;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m41922h(android.view.View r3) {
        /*
            java.lang.Class<com.facebook.appevents.i0.n.f> r0 = com.facebook.appevents.p026i0.p027n.C1000f.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            if (r0 == 0) goto La
            r0 = 0
            return r0
        La:
            r0 = r3
            boolean r0 = r0 instanceof android.widget.EditText     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L1c
            r0 = r3
            android.widget.EditText r0 = (android.widget.EditText) r0     // Catch: java.lang.Throwable -> L48
            java.lang.CharSequence r0 = r0.getHint()     // Catch: java.lang.Throwable -> L48
            r3 = r0
            goto L30
        L1c:
            r0 = r3
            boolean r0 = r0 instanceof android.widget.TextView     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L2e
            r0 = r3
            android.widget.TextView r0 = (android.widget.TextView) r0     // Catch: java.lang.Throwable -> L48
            java.lang.CharSequence r0 = r0.getHint()     // Catch: java.lang.Throwable -> L48
            r3 = r0
            goto L30
        L2e:
            r0 = 0
            r3 = r0
        L30:
            r0 = r3
            if (r0 != 0) goto L37
            goto L42
        L37:
            r0 = r3
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L48
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L46
        L42:
            java.lang.String r0 = ""
            r3 = r0
        L46:
            r0 = r3
            return r0
        L48:
            r3 = move-exception
            r0 = r3
            java.lang.Class<com.facebook.appevents.i0.n.f> r1 = com.facebook.appevents.p026i0.p027n.C1000f.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p026i0.p027n.C1000f.m41922h(android.view.View):java.lang.String");
    }

    /* renamed from: i */
    public static final ViewGroup m41921i(View view) {
        if (!C1220a.m41623b(C1000f.class) && view != null) {
            try {
                ViewParent parent = view.getParent();
                ViewGroup viewGroup = null;
                if (parent instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent;
                }
                return viewGroup;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1000f.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: j */
    public static final String m41920j(View view) {
        CharSequence charSequence;
        Object selectedItem;
        if (C1220a.m41623b(C1000f.class)) {
            return null;
        }
        try {
        } catch (Throwable th) {
            C1220a.m41624a(th, C1000f.class);
            return null;
        }
        if (!(view instanceof TextView)) {
            if (view instanceof Spinner) {
                if (((Spinner) view).getCount() > 0 && (selectedItem = ((Spinner) view).getSelectedItem()) != null) {
                    charSequence = selectedItem.toString();
                }
                charSequence = null;
            } else {
                int i = 0;
                if (view instanceof DatePicker) {
                    charSequence = String.format("%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(((DatePicker) view).getYear()), Integer.valueOf(((DatePicker) view).getMonth()), Integer.valueOf(((DatePicker) view).getDayOfMonth())}, 3));
                    l.d(charSequence, "java.lang.String.format(format, *args)");
                } else if (view instanceof TimePicker) {
                    Integer currentHour = ((TimePicker) view).getCurrentHour();
                    l.d(currentHour, "view.currentHour");
                    int intValue = currentHour.intValue();
                    Integer currentMinute = ((TimePicker) view).getCurrentMinute();
                    l.d(currentMinute, "view.currentMinute");
                    charSequence = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(intValue), Integer.valueOf(currentMinute.intValue())}, 2));
                    l.d(charSequence, "java.lang.String.format(format, *args)");
                } else if (view instanceof RadioGroup) {
                    int checkedRadioButtonId = ((RadioGroup) view).getCheckedRadioButtonId();
                    int childCount = ((RadioGroup) view).getChildCount();
                    if (childCount > 0) {
                        while (true) {
                            int i2 = i + 1;
                            View childAt = ((RadioGroup) view).getChildAt(i);
                            if (childAt.getId() == checkedRadioButtonId && (childAt instanceof RadioButton)) {
                                charSequence = ((RadioButton) childAt).getText();
                                break;
                            } else if (i2 >= childCount) {
                                break;
                            } else {
                                i = i2;
                            }
                        }
                    }
                    charSequence = null;
                } else {
                    if (view instanceof RatingBar) {
                        charSequence = String.valueOf(((RatingBar) view).getRating());
                    }
                    charSequence = null;
                }
            }
            C1220a.m41624a(th, C1000f.class);
            return null;
        }
        charSequence = ((TextView) view).getText();
        if (view instanceof Switch) {
            charSequence = ((Switch) view).isChecked() ? "1" : DtbConstants.NETWORK_TYPE_UNKNOWN;
        }
        String str = "";
        if (charSequence != null) {
            String obj = charSequence.toString();
            if (obj != null) {
                str = obj;
            }
        }
        return str;
    }

    /* renamed from: n */
    public static final void m41916n(View view, JSONObject jSONObject) {
        if (C1220a.m41623b(C1000f.class)) {
            return;
        }
        try {
            l.e(view, ViewAction.VIEW);
            l.e(jSONObject, "json");
            try {
                C1000f c1000f = f2756a;
                String m41920j = m41920j(view);
                String m41922h = m41922h(view);
                Object tag = view.getTag();
                CharSequence contentDescription = view.getContentDescription();
                jSONObject.put("classname", view.getClass().getCanonicalName());
                jSONObject.put("classtypebitmask", m41928b(view));
                jSONObject.put("id", view.getId());
                if (!C0998d.m41931b(view)) {
                    jSONObject.put("text", C1168q0.m41677f(C1168q0.m41684R(m41920j), ""));
                } else {
                    jSONObject.put("text", "");
                    jSONObject.put("is_user_input", true);
                }
                jSONObject.put("hint", C1168q0.m41677f(C1168q0.m41684R(m41922h), ""));
                if (tag != null) {
                    jSONObject.put(RemoteMessageConst.Notification.TAG, C1168q0.m41677f(C1168q0.m41684R(tag.toString()), ""));
                }
                if (contentDescription != null) {
                    jSONObject.put("description", C1168q0.m41677f(C1168q0.m41684R(contentDescription.toString()), ""));
                }
                jSONObject.put("dimension", c1000f.m41926d(view));
            } catch (JSONException e) {
                C1168q0.m41696F(f2757b, e);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1000f.class);
        }
    }

    /* renamed from: d */
    public final JSONObject m41926d(View view) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("top", view.getTop());
                jSONObject.put("left", view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
                jSONObject.put("scrollx", view.getScrollX());
                jSONObject.put("scrolly", view.getScrollY());
                jSONObject.put(RemoteMessageConst.Notification.VISIBILITY, view.getVisibility());
            } catch (JSONException e) {
            }
            return jSONObject;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: e */
    public final Class<?> m41925e(String str) {
        Class<?> cls;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            cls = null;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            cls = null;
        }
        return cls;
    }

    /* renamed from: k */
    public final View m41919k(float[] fArr, View view) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            m41918l();
            Method method = f2759d;
            if (method == null || view == null) {
                return null;
            }
            try {
                try {
                    if (method == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    Object invoke = method.invoke(null, fArr, view);
                    if (invoke == null) {
                        throw new NullPointerException("null cannot be cast to non-null type android.view.View");
                    }
                    View view2 = (View) invoke;
                    if (view2.getId() <= 0) {
                        return null;
                    }
                    ViewParent parent = view2.getParent();
                    if (parent == null) {
                        throw new NullPointerException("null cannot be cast to non-null type android.view.View");
                    }
                    return (View) parent;
                } catch (IllegalAccessException e) {
                    C1168q0.m41696F(f2757b, e);
                    return null;
                }
            } catch (InvocationTargetException e2) {
                C1168q0.m41696F(f2757b, e2);
                return null;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: l */
    public final void m41918l() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            if (f2759d != null) {
                return;
            }
            try {
                try {
                    Class<?> cls = Class.forName("com.facebook.react.uimanager.TouchTargetHelper");
                    l.d(cls, "forName(CLASS_TOUCHTARGETHELPER)");
                    Method declaredMethod = cls.getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                    f2759d = declaredMethod;
                    if (declaredMethod == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    declaredMethod.setAccessible(true);
                } catch (ClassNotFoundException e) {
                    C1168q0.m41696F(f2757b, e);
                }
            } catch (NoSuchMethodException e2) {
                C1168q0.m41696F(f2757b, e2);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: m */
    public final boolean m41917m(View view, View view2) {
        int[] iArr;
        if (C1220a.m41623b(this)) {
            return false;
        }
        try {
            l.e(view, ViewAction.VIEW);
            String name = view.getClass().getName();
            l.d(name, "view.javaClass.name");
            boolean z = false;
            if (l.a(name, "com.facebook.react.views.view.ReactViewGroup")) {
                float[] fArr = null;
                if (!C1220a.m41623b(this)) {
                    view.getLocationOnScreen(new int[2]);
                    fArr = new float[]{iArr[0], iArr[1]};
                }
                View m41919k = m41919k(fArr, view2);
                z = false;
                if (m41919k != null) {
                    z = false;
                    if (m41919k.getId() == view.getId()) {
                        z = true;
                    }
                }
            }
            return z;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return false;
        }
    }
}
