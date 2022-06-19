package kotlinx.serialization.json.internal;

import com.appsflyer.share.Constants;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0019\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\f\n��\n\u0002\u0010\b\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/serialization/json/internal/EscapeCharMappings;", "", "()V", "ESCAPE_2_CHAR", "", "initC2ESC", "", Constants.URL_CAMPAIGN, "", "esc", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/EscapeCharMappings.class */
public final class EscapeCharMappings {
    public static final char[] ESCAPE_2_CHAR = new char[117];
    public static final EscapeCharMappings INSTANCE;

    static {
        EscapeCharMappings escapeCharMappings = new EscapeCharMappings();
        INSTANCE = escapeCharMappings;
        for (int i = 0; i <= 31; i++) {
            escapeCharMappings.initC2ESC(i, 'u');
        }
        escapeCharMappings.initC2ESC(8, 'b');
        escapeCharMappings.initC2ESC(9, 't');
        escapeCharMappings.initC2ESC(10, 'n');
        escapeCharMappings.initC2ESC(12, 'f');
        escapeCharMappings.initC2ESC(13, 'r');
        escapeCharMappings.initC2ESC('/', '/');
        escapeCharMappings.initC2ESC('\"', '\"');
        escapeCharMappings.initC2ESC('\\', '\\');
    }

    private EscapeCharMappings() {
    }

    private final void initC2ESC(char c, char c2) {
        initC2ESC((int) c, c2);
    }

    private final void initC2ESC(int i, char c) {
        if (c != 'u') {
            ESCAPE_2_CHAR[c] = (char) i;
        }
    }
}
