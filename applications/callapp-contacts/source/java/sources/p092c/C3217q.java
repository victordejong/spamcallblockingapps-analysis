package p092c;

import com.appsflyer.internal.referrer.Payload;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\f\u001a\u0016\u0010\r\u001a\u00020\u000b*\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u0006H\u0007\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u000f\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u0010\u001a%\u0010\r\u001a\u00020\u000b*\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0015\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\f\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0010\u001a%\u0010\u0016\u001a\u00020\u0017*\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0019\"\u001c\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004\"\u001c\u0010\u0005\u001a\u00020\u0006*\u00060\u0007j\u0002`\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\t¨\u0006\u001a"}, m4298d2 = {"logger", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "getLogger$Okio__JvmOkioKt", "()Ljava/util/logging/Logger;", "isAndroidGetsocknameError", "", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "(Ljava/lang/AssertionError;)Z", "appendingSink", "Lokio/Sink;", "Ljava/io/File;", "sink", "append", "Ljava/io/OutputStream;", "Ljava/net/Socket;", "Ljava/nio/file/Path;", "options", "", "Ljava/nio/file/OpenOption;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", Payload.SOURCE, "Lokio/Source;", "Ljava/io/InputStream;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "okio"}, m4297k = 5, m4296mv = {1, 4, 0}, m4293xs = "okio/Okio")
/* renamed from: c.q */
/* loaded from: classes-dex2jar.jar:c/q.class */
public final /* synthetic */ class C3217q {

    /* renamed from: a */
    private static final Logger f11602a = Logger.getLogger("okio.Okio");

    /* renamed from: a */
    public static final AbstractC3188ab m39160a(File appendingSink) throws FileNotFoundException {
        C18524p.m3840d(appendingSink, "$this$appendingSink");
        return m39157a(new FileOutputStream(appendingSink, true));
    }

    /* renamed from: a */
    private static AbstractC3188ab m39157a(OutputStream sink) {
        C18524p.m3840d(sink, "$this$sink");
        return new C3221t(sink, new C3191ae());
    }

    /* renamed from: a */
    public static final AbstractC3188ab m39155a(Socket sink) throws IOException {
        C18524p.m3840d(sink, "$this$sink");
        C3189ac c3189ac = new C3189ac(sink);
        OutputStream outputStream = sink.getOutputStream();
        C18524p.m3843b(outputStream, "getOutputStream()");
        return c3189ac.sink(new C3221t(outputStream, c3189ac));
    }

    /* renamed from: a */
    public static final AbstractC3190ad m39158a(InputStream source) {
        C18524p.m3840d(source, "$this$source");
        return new C3216p(source, new C3191ae());
    }

    /* renamed from: a */
    public static final boolean m39156a(AssertionError isAndroidGetsocknameError) {
        C18524p.m3840d(isAndroidGetsocknameError, "$this$isAndroidGetsocknameError");
        if (isAndroidGetsocknameError.getCause() != null) {
            String message = isAndroidGetsocknameError.getMessage();
            return message != null ? C18425p.m3919c((CharSequence) message, (CharSequence) "getsockname failed", false) : false;
        }
        return false;
    }

    /* renamed from: b */
    public static final AbstractC3190ad m39154b(File source) throws FileNotFoundException {
        C18524p.m3840d(source, "$this$source");
        return m39158a(new FileInputStream(source));
    }

    /* renamed from: b */
    public static final AbstractC3190ad m39153b(Socket source) throws IOException {
        C18524p.m3840d(source, "$this$source");
        C3189ac c3189ac = new C3189ac(source);
        InputStream inputStream = source.getInputStream();
        C18524p.m3843b(inputStream, "getInputStream()");
        return c3189ac.source(new C3216p(inputStream, c3189ac));
    }
}
