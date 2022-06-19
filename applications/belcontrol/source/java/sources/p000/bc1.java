package p000;

import android.app.ProgressDialog;
import android.content.Context;
import java.lang.ref.WeakReference;
/* renamed from: bc1 */
/* loaded from: classes3-dex2jar.jar:bc1.class */
public class bc1 {

    /* renamed from: a */
    public static ProgressDialog f1913a;

    /* renamed from: b */
    public static int f1914b;

    /* renamed from: c */
    public static boolean f1915c;

    /* renamed from: d */
    public static WeakReference<Context> f1916d;

    /* renamed from: a */
    public static void m5677a() {
        m5676b(true);
    }

    /* renamed from: b */
    public static void m5676b(boolean z) {
        try {
            ProgressDialog progressDialog = f1913a;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        } catch (Throwable th) {
        }
        if (z) {
            f1915c = false;
        }
    }

    /* renamed from: c */
    public static void m5675c(Context context) {
        f1916d = new WeakReference<>(context);
        if (f1913a != null) {
            m5676b(false);
            f1913a = null;
        }
        if (f1915c) {
            m5673e(f1914b);
        }
    }

    /* renamed from: d */
    public static void m5674d() {
        m5672f(-1, -1);
    }

    /* renamed from: e */
    public static void m5673e(int i) {
        m5672f(-1, i);
    }

    /* renamed from: f */
    public static void m5672f(int i, int i2) {
        Context context = f1916d.get();
        if (context == null) {
            return;
        }
        if (f1913a == null) {
            ProgressDialog progressDialog = new ProgressDialog(context, 2131886412);
            f1913a = progressDialog;
            progressDialog.setIndeterminate(true);
            f1913a.setCancelable(false);
        }
        ProgressDialog progressDialog2 = f1913a;
        int i3 = i;
        if (i == -1) {
            i3 = 2131821245;
        }
        progressDialog2.setTitle(context.getString(i3));
        f1913a.setMessage(context.getString(i2 == -1 ? 2131821821 : i2));
        f1913a.show();
        f1914b = i2;
        f1915c = true;
    }
}
