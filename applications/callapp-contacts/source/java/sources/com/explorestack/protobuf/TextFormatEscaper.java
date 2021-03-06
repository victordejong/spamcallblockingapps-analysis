package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/TextFormatEscaper.class */
final class TextFormatEscaper {

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/TextFormatEscaper$ByteSequence.class */
    public interface ByteSequence {
        byte byteAt(int i);

        int size();
    }

    private TextFormatEscaper() {
    }

    public static String escapeBytes(final ByteString byteString) {
        return escapeBytes(new ByteSequence() { // from class: com.explorestack.protobuf.TextFormatEscaper.1
            @Override // com.explorestack.protobuf.TextFormatEscaper.ByteSequence
            public final byte byteAt(int i) {
                return byteString.byteAt(i);
            }

            @Override // com.explorestack.protobuf.TextFormatEscaper.ByteSequence
            public final int size() {
                return byteString.size();
            }
        });
    }

    static String escapeBytes(ByteSequence byteSequence) {
        StringBuilder sb = new StringBuilder(byteSequence.size());
        for (int i = 0; i < byteSequence.size(); i++) {
            byte byteAt = byteSequence.byteAt(i);
            if (byteAt == 34) {
                sb.append("\\\"");
            } else if (byteAt == 39) {
                sb.append("\\'");
            } else if (byteAt != 92) {
                switch (byteAt) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (byteAt < 32 || byteAt > 126) {
                            sb.append('\\');
                            sb.append((char) (((byteAt >>> 6) & 3) + 48));
                            sb.append((char) (((byteAt >>> 3) & 7) + 48));
                            sb.append((char) ((byteAt & 7) + 48));
                            break;
                        } else {
                            sb.append((char) byteAt);
                            continue;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static String escapeBytes(final byte[] bArr) {
        return escapeBytes(new ByteSequence() { // from class: com.explorestack.protobuf.TextFormatEscaper.2
            @Override // com.explorestack.protobuf.TextFormatEscaper.ByteSequence
            public final byte byteAt(int i) {
                return bArr[i];
            }

            @Override // com.explorestack.protobuf.TextFormatEscaper.ByteSequence
            public final int size() {
                return bArr.length;
            }
        });
    }

    public static String escapeDoubleQuotesAndBackslashes(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    public static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }
}
