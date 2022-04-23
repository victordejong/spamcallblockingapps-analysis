package okio;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"okio/Okio__JvmOkioKt", "okio/Okio__OkioKt"}, d2 = {}, k = 4, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Okio.class */
public final class Okio {
    @NotNull
    /* renamed from: a */
    public static final Sink m146a(@NotNull File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.m133b(file);
    }

    @JvmName
    @NotNull
    /* renamed from: b */
    public static final Sink m145b() {
        return Okio__OkioKt.m124a();
    }

    @NotNull
    /* renamed from: c */
    public static final BufferedSink m144c(@NotNull Sink sink) {
        return Okio__OkioKt.m123b(sink);
    }

    @NotNull
    /* renamed from: d */
    public static final BufferedSource m143d(@NotNull Source source) {
        return Okio__OkioKt.m122c(source);
    }

    /* renamed from: e */
    public static final boolean m142e(@NotNull AssertionError assertionError) {
        return Okio__JvmOkioKt.m132c(assertionError);
    }

    @JvmOverloads
    @NotNull
    /* renamed from: f */
    public static final Sink m141f(@NotNull File file, boolean z) throws FileNotFoundException {
        return Okio__JvmOkioKt.m131d(file, z);
    }

    @NotNull
    /* renamed from: g */
    public static final Sink m140g(@NotNull OutputStream outputStream) {
        return Okio__JvmOkioKt.m130e(outputStream);
    }

    @NotNull
    /* renamed from: h */
    public static final Sink m139h(@NotNull Socket socket) throws IOException {
        return Okio__JvmOkioKt.m129f(socket);
    }

    @NotNull
    /* renamed from: j */
    public static final Source m137j(@NotNull File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.m127h(file);
    }

    @NotNull
    /* renamed from: k */
    public static final Source m136k(@NotNull InputStream inputStream) {
        return Okio__JvmOkioKt.m126i(inputStream);
    }

    @NotNull
    /* renamed from: l */
    public static final Source m135l(@NotNull Socket socket) throws IOException {
        return Okio__JvmOkioKt.m125j(socket);
    }
}
