package com.google.protobuf;
/* renamed from: com.google.protobuf.f1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/f1.class */
public final class C2603f1 {

    /* renamed from: com.google.protobuf.f1$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/f1$a.class */
    public static final class C2604a implements AbstractC2605b {

        /* renamed from: a */
        final /* synthetic */ ByteString f11096a;

        C2604a(ByteString byteString) {
            this.f11096a = byteString;
        }

        @Override // com.google.protobuf.C2603f1.AbstractC2605b
        /* renamed from: a */
        public byte mo2738a(int i) {
            return this.f11096a.byteAt(i);
        }

        @Override // com.google.protobuf.C2603f1.AbstractC2605b
        public int size() {
            return this.f11096a.size();
        }
    }

    /* renamed from: com.google.protobuf.f1$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/f1$b.class */
    public interface AbstractC2605b {
        /* renamed from: a */
        byte mo2738a(int i);

        int size();
    }

    /* renamed from: a */
    public static String m2741a(ByteString byteString) {
        return m2740b(new C2604a(byteString));
    }

    /* renamed from: b */
    static String m2740b(AbstractC2605b abstractC2605b) {
        String str;
        StringBuilder sb = new StringBuilder(abstractC2605b.size());
        for (int i = 0; i < abstractC2605b.size(); i++) {
            byte mo2738a = abstractC2605b.mo2738a(i);
            if (mo2738a == 34) {
                str = "\\\"";
            } else if (mo2738a == 39) {
                str = "\\'";
            } else if (mo2738a != 92) {
                switch (mo2738a) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (mo2738a < 32 || mo2738a > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo2738a >>> 6) & 3) + 48));
                            sb.append((char) (((mo2738a >>> 3) & 7) + 48));
                            mo2738a = (mo2738a & 7) + 48;
                        }
                        sb.append((char) mo2738a);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m2739c(String str) {
        return m2741a(ByteString.copyFromUtf8(str));
    }
}
