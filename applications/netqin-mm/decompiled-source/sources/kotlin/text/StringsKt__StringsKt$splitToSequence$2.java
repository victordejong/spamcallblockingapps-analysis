package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10080c;
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt$splitToSequence$2.class */
public final class StringsKt__StringsKt$splitToSequence$2 extends Lambda implements AbstractC10031l<C10080c, String> {
    public final /* synthetic */ CharSequence $this_splitToSequence;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__StringsKt$splitToSequence$2(CharSequence charSequence) {
        super(1);
        this.$this_splitToSequence = charSequence;
    }

    public final String invoke(C10080c cVar) {
        C10059q.m1637b(cVar, "it");
        return StringsKt__StringsKt.m31a(this.$this_splitToSequence, cVar);
    }
}
