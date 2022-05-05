package p459j.p460a.p582w0;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: j.a.w0.j2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/j2.class */
public class C14036j2 {
    /* renamed from: a */
    public static int m2733a(Intent intent, @NonNull String str, int i) {
        int i2 = i;
        if (intent != null) {
            i2 = intent.getIntExtra(str, i);
        }
        return i2;
    }

    /* renamed from: a */
    public static String m2734a(@NonNull Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append(intent.getAction());
        sb.append("[");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str : extras.keySet()) {
                Object obj = extras.get(str);
                String str2 = C14247d.f31851f;
                String obj2 = obj != null ? obj.toString() : C14247d.f31851f;
                if (obj != null) {
                    str2 = obj.getClass().getSimpleName();
                }
                sb.append(String.format("{%s: %s(%s)}", str, obj2, str2));
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Nullable
    /* renamed from: a */
    public static String m2732a(Intent intent, @NonNull String str, @Nullable String str2) {
        if (intent != null) {
            str2 = intent.getStringExtra(str);
        }
        return str2;
    }
}
