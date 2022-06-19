package org.bson.codecs;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.bson.BsonReader;
import org.bson.BsonRegularExpression;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/PatternCodec.class */
public class PatternCodec implements Codec<Pattern> {
    private static final int GLOBAL_FLAG = 256;

    /* loaded from: classes-dex2jar.jar:org/bson/codecs/PatternCodec$RegexFlag.class */
    public enum RegexFlag {
        CANON_EQ(128, 'c', "Pattern.CANON_EQ"),
        UNIX_LINES(1, 'd', "Pattern.UNIX_LINES"),
        GLOBAL(256, 'g', null),
        CASE_INSENSITIVE(2, 'i', null),
        MULTILINE(8, 'm', null),
        DOTALL(32, 's', "Pattern.DOTALL"),
        LITERAL(16, 't', "Pattern.LITERAL"),
        UNICODE_CASE(64, 'u', "Pattern.UNICODE_CASE"),
        COMMENTS(4, 'x', null);
        
        private static final Map<Character, RegexFlag> BY_CHARACTER = new HashMap();
        private final char flagChar;
        private final int javaFlag;
        private final String unsupported;

        static {
            RegexFlag[] values;
            for (RegexFlag regexFlag : values()) {
                BY_CHARACTER.put(Character.valueOf(regexFlag.flagChar), regexFlag);
            }
        }

        RegexFlag(int i, char c, String str) {
            this.javaFlag = i;
            this.flagChar = c;
            this.unsupported = str;
        }

        public static RegexFlag getByCharacter(char c) {
            return BY_CHARACTER.get(Character.valueOf(c));
        }
    }

    private static int getOptionsAsInt(BsonRegularExpression bsonRegularExpression) {
        String options = bsonRegularExpression.getOptions();
        if (options == null || options.length() == 0) {
            return 0;
        }
        String lowerCase = options.toLowerCase();
        int i = 0;
        for (int i2 = 0; i2 < lowerCase.length(); i2++) {
            RegexFlag byCharacter = RegexFlag.getByCharacter(lowerCase.charAt(i2));
            if (byCharacter == null) {
                throw new IllegalArgumentException("unrecognized flag [" + lowerCase.charAt(i2) + "] " + ((int) lowerCase.charAt(i2)));
            }
            i |= byCharacter.javaFlag;
            String unused = byCharacter.unsupported;
        }
        return i;
    }

    private static String getOptionsAsString(Pattern pattern) {
        int flags = pattern.flags();
        StringBuilder sb = new StringBuilder();
        RegexFlag[] values = RegexFlag.values();
        int length = values.length;
        int i = 0;
        while (i < length) {
            RegexFlag regexFlag = values[i];
            int i2 = flags;
            if ((pattern.flags() & regexFlag.javaFlag) > 0) {
                sb.append(regexFlag.flagChar);
                i2 = flags - regexFlag.javaFlag;
            }
            i++;
            flags = i2;
        }
        if (flags <= 0) {
            return sb.toString();
        }
        throw new IllegalArgumentException("some flags could not be recognized.");
    }

    @Override // org.bson.codecs.Decoder
    public Pattern decode(BsonReader bsonReader, DecoderContext decoderContext) {
        BsonRegularExpression readRegularExpression = bsonReader.readRegularExpression();
        return Pattern.compile(readRegularExpression.getPattern(), getOptionsAsInt(readRegularExpression));
    }

    public void encode(BsonWriter bsonWriter, Pattern pattern, EncoderContext encoderContext) {
        bsonWriter.writeRegularExpression(new BsonRegularExpression(pattern.pattern(), getOptionsAsString(pattern)));
    }

    @Override // org.bson.codecs.Encoder
    public Class<Pattern> getEncoderClass() {
        return Pattern.class;
    }
}
