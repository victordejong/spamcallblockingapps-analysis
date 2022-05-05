package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/util/DefaultIndenter.class */
public class DefaultIndenter extends DefaultPrettyPrinter.NopIndenter {
    public static final DefaultIndenter SYSTEM_LINEFEED_INSTANCE;
    public static final String SYS_LF;
    public final int charsPerLevel;
    public final String eol;
    public final char[] indents;

    static {
        String str;
        try {
            str = System.getProperty("line.separator");
        } catch (Throwable th) {
            str = "\n";
        }
        SYS_LF = str;
        SYSTEM_LINEFEED_INSTANCE = new DefaultIndenter("  ", SYS_LF);
    }

    public DefaultIndenter(String str, String str2) {
        this.charsPerLevel = str.length();
        this.indents = new char[str.length() * 16];
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            str.getChars(0, str.length(), this.indents, i);
            i += str.length();
        }
        this.eol = str2;
    }

    @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter, com.fasterxml.jackson.core.util.DefaultPrettyPrinter.Indenter
    public boolean isInline() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter, com.fasterxml.jackson.core.util.DefaultPrettyPrinter.Indenter
    public void writeIndentation(JsonGenerator jsonGenerator, int i) throws IOException {
        jsonGenerator.writeRaw(this.eol);
        if (i > 0) {
            int i2 = i * this.charsPerLevel;
            while (true) {
                char[] cArr = this.indents;
                if (i2 > cArr.length) {
                    jsonGenerator.writeRaw(cArr, 0, cArr.length);
                    i2 -= this.indents.length;
                } else {
                    jsonGenerator.writeRaw(cArr, 0, i2);
                    return;
                }
            }
        }
    }
}
