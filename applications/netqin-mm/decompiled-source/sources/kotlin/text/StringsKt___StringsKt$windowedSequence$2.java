package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt___StringsKt$windowedSequence$2.class */
public final class StringsKt___StringsKt$windowedSequence$2 extends Lambda implements AbstractC10031l<Integer, R> {
    public final /* synthetic */ int $size;
    public final /* synthetic */ CharSequence $this_windowedSequence;
    public final /* synthetic */ AbstractC10031l $transform;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt___StringsKt$windowedSequence$2(CharSequence charSequence, int i, AbstractC10031l lVar) {
        super(1);
        this.$this_windowedSequence = charSequence;
        this.$size = i;
        this.$transform = lVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r0 > r5.$this_windowedSequence.length()) goto L_0x001a;
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
            if (r0 < 0) goto L_0x001a
            r0 = r7
            r8 = r0
            r0 = r7
            r1 = r5
            java.lang.CharSequence r1 = r1.$this_windowedSequence
            int r1 = r1.length()
            if (r0 <= r1) goto L_0x0024
        L_0x001a:
            r0 = r5
            java.lang.CharSequence r0 = r0.$this_windowedSequence
            int r0 = r0.length()
            r8 = r0
        L_0x0024:
            r0 = r5
            f.w.b.l r0 = r0.$transform
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

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }
}
