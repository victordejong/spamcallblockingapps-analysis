package kotlin.text;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\u001a\u0011\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\b¨\u0006\u0004"}, m254d2 = {HttpRequest.PARAM_CHARSET, "Ljava/nio/charset/Charset;", "charsetName", "", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "CharsetsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharsetsKt.class */
public final class CharsetsKt {
    @InlineOnly
    private static final Charset charset(String str) {
        Charset forName = Charset.forName(str);
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(charsetName)");
        return forName;
    }
}
