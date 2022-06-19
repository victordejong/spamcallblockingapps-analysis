package p291y;

import android.content.Context;
import android.graphics.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import java.io.Closeable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.KotlinVersion;
import org.json.JSONObject;
import p032c7.C0850c;
import p032c7.C0852e;
import p032c7.RunnableC0851d;
import p082e7.C2604a;
import p124i4.C3102d;
import p134j4.C3206g0;
import p156l4.C3496b;
import p168m5.C3642b;
import p189o4.AbstractC3882s;
import p307z6.C5110b;
/* renamed from: y.d */
/* loaded from: classes-dex2jar.jar:y/d.class */
public class C4951d implements AbstractC3882s {

    /* renamed from: b */
    public static String[] f15104b;

    /* renamed from: c */
    public static C4951d f15105c;

    /* renamed from: e */
    public static Method f15107e;

    /* renamed from: f */
    public static boolean f15108f;

    /* renamed from: g */
    public static Field f15109g;

    /* renamed from: h */
    public static boolean f15110h;

    /* renamed from: a */
    public static C4951d f15103a = new C4951d();

    /* renamed from: d */
    public static final C3206g0 f15106d = new C3206g0(0);

    /* renamed from: i */
    public static C3642b f15111i = new C3642b();

    /* renamed from: c */
    public static void m200c(Context context) {
        C3642b c3642b = f15111i;
        Context applicationContext = context.getApplicationContext();
        C3102d.m2638a(applicationContext, "Application Context cannot be null");
        if (!c3642b.f11925a) {
            c3642b.f11925a = true;
            C0852e m7277a = C0852e.m7277a();
            Objects.requireNonNull(m7277a.f3144c);
            C3206g0 c3206g0 = new C3206g0(2);
            C4951d c4951d = m7277a.f3143b;
            Handler handler = new Handler();
            Objects.requireNonNull(c4951d);
            m7277a.f3145d = new C5110b(handler, applicationContext, c3206g0, m7277a);
            applicationContext.getApplicationContext();
            WindowManager windowManager = C2604a.f9034a;
            C2604a.f9036c = applicationContext.getResources().getDisplayMetrics().density;
            C2604a.f9034a = (WindowManager) applicationContext.getSystemService("window");
            C0850c.f3137b.f3138a = applicationContext.getApplicationContext();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0024 -> B:11:0x001d). Please submit an issue!!! */
    /* renamed from: e */
    public static void m198e(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: f */
    public static String m197f() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }

    /* renamed from: g */
    public static float m196g(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: i */
    public static float m194i(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    /* renamed from: p */
    public static Object m187p(Object obj, Object obj2) {
        Objects.requireNonNull(obj, (String) obj2);
        return obj;
    }

    /* renamed from: q */
    public static boolean m186q(int i) {
        return i == 2 || i == 7 || i == 3;
    }

    /* renamed from: r */
    public static boolean m185r(int i, int i2) {
        int i3 = i;
        if (i == 5) {
            if (i2 != 5) {
                return true;
            }
            i3 = 5;
        }
        int i4 = i3;
        if (i3 == 6) {
            if (i2 != 6 && i2 != 5) {
                return true;
            }
            i4 = 6;
        }
        if (i4 != 4 || i2 == 4) {
            if (i4 == 3 && (i2 == 2 || i2 == 7 || i2 == 1 || i2 == 8)) {
                return true;
            }
            if (i4 != 2) {
                return false;
            }
            return i2 == 1 || i2 == 8;
        }
        return true;
    }

    /* renamed from: s */
    public static boolean m184s(int i) {
        return i == 5 || i == 6 || i == 4;
    }

    /* renamed from: a */
    public void m202a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m201b(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m201b(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: b */
    public void m201b(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            if (objArr.length > 0) {
                for (Object obj : objArr) {
                    if (obj == null) {
                        sb.append('\"');
                    } else {
                        if (obj instanceof String) {
                            String obj2 = obj.toString();
                            if (obj2.startsWith("{")) {
                                sb.append(obj2);
                            } else {
                                sb.append('\"');
                                sb.append(obj2);
                            }
                        } else {
                            sb.append(obj);
                        }
                        sb.append(",");
                    }
                    sb.append('\"');
                    sb.append(",");
                }
                sb.setLength(sb.length() - 1);
            }
            sb.append(")}");
            String sb2 = sb.toString();
            Handler handler = webView.getHandler();
            if (handler == null || Looper.myLooper() == handler.getLooper()) {
                webView.loadUrl(sb2);
            } else {
                handler.post(new RunnableC0851d(this, webView, sb2));
            }
        }
    }

    /* renamed from: d */
    public void mo199d(View view) {
        throw null;
    }

    /* renamed from: h */
    public float mo195h(View view) {
        throw null;
    }

    /* renamed from: j */
    public void mo193j(View view) {
        throw null;
    }

    /* renamed from: k */
    public void mo192k(View view, int i, int i2, int i3, int i4) {
        if (!f15108f) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                f15107e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsBase", "Failed to retrieve setFrame method", e);
            }
            f15108f = true;
        }
        Method method = f15107e;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    /* renamed from: l */
    public void mo191l(View view, float f) {
        throw null;
    }

    /* renamed from: m */
    public void mo190m(View view, int i) {
        if (!f15110h) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f15109g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f15110h = true;
        }
        Field field = f15109g;
        if (field != null) {
            try {
                f15109g.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* renamed from: n */
    public void mo189n(View view, Matrix matrix) {
        throw null;
    }

    /* renamed from: o */
    public void mo188o(View view, Matrix matrix) {
        throw null;
    }

    @Override // p189o4.AbstractC3882s
    public /* synthetic */ Object zza() {
        return new C3496b();
    }
}
