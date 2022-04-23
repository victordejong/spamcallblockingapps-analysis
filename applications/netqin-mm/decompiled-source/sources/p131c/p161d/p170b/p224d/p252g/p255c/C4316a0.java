package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbt;
/* renamed from: c.d.b.d.g.c.a0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/a0.class */
public final class C4316a0 {

    /* renamed from: a */
    public static final Class<?> f16479a = m25997a();

    /* renamed from: a */
    public static Class<?> m25997a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static zzbt m25996b() {
        Class<?> cls = f16479a;
        if (cls != null) {
            try {
                return (zzbt) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
            }
        }
        return zzbt.f29244a;
    }
}
