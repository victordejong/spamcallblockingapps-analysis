package p000;

import java.util.Objects;
import javax.annotation.Nullable;
/* renamed from: zl1 */
/* loaded from: classes3-dex2jar.jar:zl1.class */
public abstract class zl1 {

    /* renamed from: zl1$a */
    /* loaded from: classes3-dex2jar.jar:zl1$a.class */
    public class C1746a extends zl1 {

        /* renamed from: a */
        public final /* synthetic */ int f8826a;

        public C1746a(xl1 xl1Var, int i, byte[] bArr, int i2) {
            this.f8826a = i;
        }
    }

    /* renamed from: a */
    public static zl1 m1a(@Nullable xl1 xl1Var, byte[] bArr) {
        return m0b(xl1Var, bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static zl1 m0b(@Nullable xl1 xl1Var, byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "content == null");
        cm1.m5302b(bArr.length, i, i2);
        return new C1746a(xl1Var, i2, bArr, i);
    }
}
