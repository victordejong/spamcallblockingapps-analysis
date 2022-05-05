package p081h.p203i.p204a.p224e.p259j.p271l;

import androidx.annotation.NonNull;
import java.io.File;
import org.tensorflow.lite.TensorFlowLite;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10041x;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10011a0;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10023g0;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.EnumC10040w;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.EnumC10043z;
import p646n.p649b.p650a.C15203c;
/* renamed from: h.i.a.e.j.l.i7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/i7.class */
public final class C8166i7 implements AbstractC10041x {

    /* renamed from: a */
    public static final C6999k f18915a = new C6999k("CustomCompatChecker", "");

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10041x
    /* renamed from: a */
    public final C10011a0 mo13544a(@NonNull File file, @NonNull C10023g0 g0Var) {
        try {
            new C15203c(file).close();
            return C10011a0.f22642b;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 93);
            sb.append("The model is INCOMPATIBLE. It may contain unrecognized custom ops, or not FlatBuffer format: ");
            sb.append(valueOf);
            String sb2 = sb.toString();
            f18915a.m21337b("CustomCompatChecker", sb2);
            g0Var.m13578a(EnumC8223l4.INCOMPATIBLE_TFLITE_VERSION, TensorFlowLite.m9d(), false, EnumC10040w.CUSTOM);
            return new C10011a0(EnumC10043z.TFLITE_VERSION_INCOMPATIBLE, sb2);
        }
    }
}
