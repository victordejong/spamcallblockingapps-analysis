package p459j.p460a.p582w0;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* renamed from: j.a.w0.v4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/v4.class */
public class C14197v4 {
    /* renamed from: a */
    public static void m2250a(@NonNull Window window) {
        window.getDecorView().setSystemUiVisibility(5380);
    }

    /* renamed from: a */
    public static boolean m2251a(@NonNull Context context) {
        return ((PowerManager) context.getSystemService("power")).isInteractive();
    }

    @RequiresApi(api = 23)
    /* renamed from: b */
    public static void m2248b(@NonNull Window window) {
        window.getDecorView().setSystemUiVisibility(8192);
    }

    /* renamed from: b */
    public static boolean m2249b(@NonNull Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        return keyguardManager.inKeyguardRestrictedInputMode() || keyguardManager.isKeyguardLocked();
    }

    /* renamed from: c */
    public static void m2246c(@NonNull Window window) {
        window.getDecorView().setSystemUiVisibility(1280);
    }

    /* renamed from: c */
    public static boolean m2247c(@NonNull Context context) {
        return ((KeyguardManager) context.getSystemService("keyguard")).isKeyguardSecure();
    }
}
