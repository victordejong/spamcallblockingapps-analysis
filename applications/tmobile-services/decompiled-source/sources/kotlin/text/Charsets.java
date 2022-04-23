package kotlin.text;

import com.facebook.stetho.common.Utf8Charset;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0003R\u0013\u0010\n\u001a\u00020\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\f\u001a\u00020\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\u000e\u001a\u00020\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\tR\u0016\u0010\u000f\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0003R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0003R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0003R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0003¨\u0006\u0015"}, d2 = {"Lkotlin/text/Charsets;", "Ljava/nio/charset/Charset;", "ISO_8859_1", "Ljava/nio/charset/Charset;", "US_ASCII", "UTF_16", "UTF_16BE", "UTF_16LE", "UTF32", "()Ljava/nio/charset/Charset;", "UTF_32", "UTF32_BE", "UTF_32BE", "UTF32_LE", "UTF_32LE", "UTF_8", "utf_32", "utf_32be", "utf_32le", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/Charsets.class */
public final class Charsets {
    @JvmField
    @NotNull

    /* renamed from: a */
    public static final Charset f21018a;

    /* renamed from: b */
    private static Charset f21019b;

    /* renamed from: c */
    private static Charset f21020c;

    /* renamed from: d */
    public static final Charsets f21021d = new Charsets();

    static {
        Charset forName = Charset.forName(Utf8Charset.NAME);
        Intrinsics.m1831d(forName, "Charset.forName(\"UTF-8\")");
        f21018a = forName;
        Intrinsics.m1831d(Charset.forName("UTF-16"), "Charset.forName(\"UTF-16\")");
        Intrinsics.m1831d(Charset.forName("UTF-16BE"), "Charset.forName(\"UTF-16BE\")");
        Intrinsics.m1831d(Charset.forName("UTF-16LE"), "Charset.forName(\"UTF-16LE\")");
        Intrinsics.m1831d(Charset.forName("US-ASCII"), "Charset.forName(\"US-ASCII\")");
        Intrinsics.m1831d(Charset.forName("ISO-8859-1"), "Charset.forName(\"ISO-8859-1\")");
    }

    private Charsets() {
    }

    @JvmName
    @NotNull
    /* renamed from: a */
    public final Charset m1571a() {
        Charset charset = f21020c;
        if (charset == null) {
            charset = Charset.forName("UTF-32BE");
            Intrinsics.m1831d(charset, "Charset.forName(\"UTF-32BE\")");
            f21020c = charset;
        }
        return charset;
    }

    @JvmName
    @NotNull
    /* renamed from: b */
    public final Charset m1570b() {
        Charset charset = f21019b;
        if (charset == null) {
            charset = Charset.forName("UTF-32LE");
            Intrinsics.m1831d(charset, "Charset.forName(\"UTF-32LE\")");
            f21019b = charset;
        }
        return charset;
    }
}
