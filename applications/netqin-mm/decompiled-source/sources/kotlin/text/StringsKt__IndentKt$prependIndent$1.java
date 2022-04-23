package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p576c0.C9925q;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__IndentKt$prependIndent$1.class */
public final class StringsKt__IndentKt$prependIndent$1 extends Lambda implements AbstractC10031l<String, String> {
    public final /* synthetic */ String $indent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__IndentKt$prependIndent$1(String str) {
        super(1);
        this.$indent = str;
    }

    public final String invoke(String str) {
        String str2;
        C10059q.m1637b(str, "it");
        if (C9925q.m1785a(str)) {
            str2 = str;
            if (str.length() < this.$indent.length()) {
                str2 = this.$indent;
            }
        } else {
            str2 = this.$indent + str;
        }
        return str2;
    }
}
