package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "R", FirebaseAnalytics.Param.INDEX, "", "invoke", "(I)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt___StringsKt$windowedSequence$2.class */
final class StringsKt___StringsKt$windowedSequence$2 extends Lambda implements Function1<Integer, R> {

    /* renamed from: f */
    final /* synthetic */ CharSequence f21060f;

    /* renamed from: g */
    final /* synthetic */ int f21061g;

    /* renamed from: h */
    final /* synthetic */ Function1 f21062h;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r0 > r5.f21060f.length()) goto L_0x001a;
     */
    /* JADX WARN: Type inference failed for: r0v6, types: [R, java.lang.Object] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final R m1411b(int r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f21061g
            r1 = r6
            int r0 = r0 + r1
            r7 = r0
            r0 = r7
            if (r0 < 0) goto L_0x001a
            r0 = r7
            r8 = r0
            r0 = r7
            r1 = r5
            java.lang.CharSequence r1 = r1.f21060f
            int r1 = r1.length()
            if (r0 <= r1) goto L_0x0024
        L_0x001a:
            r0 = r5
            java.lang.CharSequence r0 = r0.f21060f
            int r0 = r0.length()
            r8 = r0
        L_0x0024:
            r0 = r5
            kotlin.jvm.functions.Function1 r0 = r0.f21062h
            r1 = r5
            java.lang.CharSequence r1 = r1.f21060f
            r2 = r6
            r3 = r8
            java.lang.CharSequence r1 = r1.subSequence(r2, r3)
            java.lang.Object r0 = r0.invoke(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt___StringsKt$windowedSequence$2.m1411b(int):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return m1411b(num.intValue());
    }
}
