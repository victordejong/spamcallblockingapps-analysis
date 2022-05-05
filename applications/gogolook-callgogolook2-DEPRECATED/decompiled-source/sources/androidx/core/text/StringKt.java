package androidx.core.text;

import android.text.TextUtils;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0001H\u0086\b¨\u0006\u0002"}, m815d2 = {"htmlEncode", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/text/StringKt.class */
public final class StringKt {
    public static final String htmlEncode(String str) {
        C15149k.m377b(str, "$this$htmlEncode");
        String htmlEncode = TextUtils.htmlEncode(str);
        C15149k.m383a((Object) htmlEncode, "TextUtils.htmlEncode(this)");
        return htmlEncode;
    }
}
