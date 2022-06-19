package kotlin.text;

import java.util.regex.Pattern;
import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\b¨\u0006\u0003"}, m400d2 = {"toRegex", "Lkotlin/text/Regex;", "Ljava/util/regex/Pattern;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/text/StringsKt")
/* loaded from: classes-dex2jar.jar:kotlin/text/StringsKt__RegexExtensionsJVMKt.class */
public class StringsKt__RegexExtensionsJVMKt extends StringsKt__IndentKt {
    private static final Regex toRegex(Pattern pattern) {
        return new Regex(pattern);
    }
}
