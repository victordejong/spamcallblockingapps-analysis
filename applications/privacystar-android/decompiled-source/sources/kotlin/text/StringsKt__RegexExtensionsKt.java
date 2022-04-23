package kotlin.text;

import com.privacystar.core.data.model.RequestQueueFields;
import java.util.Set;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\u001b\u0010��\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0087\b\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b¨\u0006\u0007"}, m254d2 = {"toRegex", "Lkotlin/text/Regex;", "", RequestQueueFields.OPTIONS, "", "Lkotlin/text/RegexOption;", "option", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__RegexExtensionsKt.class */
public class StringsKt__RegexExtensionsKt extends StringsKt__RegexExtensionsJVMKt {
    @InlineOnly
    private static final Regex toRegex(@NotNull String str) {
        return new Regex(str);
    }

    @InlineOnly
    private static final Regex toRegex(@NotNull String str, Set<? extends RegexOption> set) {
        return new Regex(str, set);
    }

    @InlineOnly
    private static final Regex toRegex(@NotNull String str, RegexOption regexOption) {
        return new Regex(str, regexOption);
    }
}
