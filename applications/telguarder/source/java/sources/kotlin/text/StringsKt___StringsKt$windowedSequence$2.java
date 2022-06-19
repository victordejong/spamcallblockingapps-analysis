package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m400d2 = {"<anonymous>", "R", FirebaseAnalytics.Param.INDEX, "", "invoke", "(I)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/text/StringsKt___StringsKt$windowedSequence$2.class */
final class StringsKt___StringsKt$windowedSequence$2 extends Lambda implements Function1<Integer, R> {
    final /* synthetic */ int $size;
    final /* synthetic */ CharSequence $this_windowedSequence;
    final /* synthetic */ Function1 $transform;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt___StringsKt$windowedSequence$2(CharSequence charSequence, int i, Function1 function1) {
        super(1);
        this.$this_windowedSequence = charSequence;
        this.$size = i;
        this.$transform = function1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r0 > r5.$this_windowedSequence.length()) goto L6;
     */
    /* JADX WARN: Type inference failed for: r0v6, types: [R, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final R invoke(int r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.$size
            r1 = r6
            int r0 = r0 + r1
            r7 = r0
            r0 = r7
            if (r0 < 0) goto L1a
            r0 = r7
            r8 = r0
            r0 = r7
            r1 = r5
            java.lang.CharSequence r1 = r1.$this_windowedSequence
            int r1 = r1.length()
            if (r0 <= r1) goto L24
        L1a:
            r0 = r5
            java.lang.CharSequence r0 = r0.$this_windowedSequence
            int r0 = r0.length()
            r8 = r0
        L24:
            r0 = r5
            kotlin.jvm.functions.Function1 r0 = r0.$transform
            r1 = r5
            java.lang.CharSequence r1 = r1.$this_windowedSequence
            r2 = r6
            r3 = r8
            java.lang.CharSequence r1 = r1.subSequence(r2, r3)
            java.lang.Object r0 = r0.invoke(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt___StringsKt$windowedSequence$2.invoke(int):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }
}
