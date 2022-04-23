package c;

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
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\f\u001a\u0016\u0010\r\u001a\u00020\u000b*\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u0006H\u0007\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u000f\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u0010\u001a%\u0010\r\u001a\u00020\u000b*\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0015\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\f\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0010\u001a%\u0010\u0016\u001a\u00020\u0017*\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0019\"\u001c\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004\"\u001c\u0010\u0005\u001a\u00020\u0006*\u00060\u0007j\u0002`\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\t¨\u0006\u001a"}, d2 = {"logger", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "getLogger$Okio__JvmOkioKt", "()Ljava/util/logging/Logger;", "isAndroidGetsocknameError", "", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "(Ljava/lang/AssertionError;)Z", "appendingSink", "Lokio/Sink;", "Ljava/io/File;", "sink", "append", "Ljava/io/OutputStream;", "Ljava/net/Socket;", "Ljava/nio/file/Path;", "options", "", "Ljava/nio/file/OpenOption;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", Payload.SOURCE, "Lokio/Source;", "Ljava/io/InputStream;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "okio"}, k = 5, mv = {1, 4, 0}, xs = "okio/Okio")
/* loaded from: classes-dex2jar.jar:c/q.class */
public final /* synthetic */ class q {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f6314a = Logger.getLogger("okio.Okio");

    public static final ab a(File appendingSink) throws FileNotFoundException {
        p.d(appendingSink, "$this$appendingSink");
        return a(new FileOutputStream(appendingSink, true));
    }

    private static ab a(OutputStream sink) {
        p.d(sink, "$this$sink");
        return new t(sink, new ae());
    }

    public static final ab a(Socket sink) throws IOException {
        p.d(sink, "$this$sink");
        ac acVar = new ac(sink);
        OutputStream outputStream = sink.getOutputStream();
        p.b(outputStream, "getOutputStream()");
        return acVar.sink(new t(outputStream, acVar));
    }

    public static final ad a(InputStream source) {
        p.d(source, "$this$source");
        return new p(source, new ae());
    }

    public static final boolean a(AssertionError isAndroidGetsocknameError) {
        p.d(isAndroidGetsocknameError, "$this$isAndroidGetsocknameError");
        if (isAndroidGetsocknameError.getCause() == null) {
            return false;
        }
        String message = isAndroidGetsocknameError.getMessage();
        return message != null ? kotlin.h.p.c((CharSequence) message, (CharSequence) "getsockname failed", false) : false;
    }

    public static final ad b(File source) throws FileNotFoundException {
        p.d(source, "$this$source");
        return a(new FileInputStream(source));
    }

    public static final ad b(Socket source) throws IOException {
        p.d(source, "$this$source");
        ac acVar = new ac(source);
        InputStream inputStream = source.getInputStream();
        p.b(inputStream, "getInputStream()");
        return acVar.source(new p(inputStream, acVar));
    }
}
