package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.d */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/d.class */
public class C0809d {
    public static final int AppsFlyerConversionListener = 0;
    private static int AppsFlyerLib = 1;
    private static int onAppOpenAttribution;
    private static Object onAttributionFailure;
    public static byte[] onConversionDataFail;
    private static long onConversionDataSuccess;
    private static Object onDeepLinking;
    public static byte[] onDeepLinkingNative;
    public static final byte[] onValidateInApp = null;
    private static int onValidateInAppFailure;

    /* JADX WARN: Removed duplicated region for block: B:12:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00cd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x00cd -> B:15:0x00ee). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String $$c(int r5, int r6, short r7) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0809d.$$c(int, int, short):java.lang.String");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:969:0x26c3 in {1, 5, 6, 12, 13, 16, 18, 20, 23, 24, 27, 28, 33, 34, 37, 40, 43, 46, 51, 54, 55, 64, 69, 71, 88, 89, 92, 93, 96, 97, 100, 101, 104, 105, 108, 109, 114, 115, 118, 119, 122, 123, 124, 130, 131, 138, 139, 147, 152, 154, 163, 168, 170, 187, 190, 191, 194, 197, 198, 201, 204, 211, 212, 217, 218, 221, 223, 227, 228, 231, 232, 233, 235, 242, 243, 244, 245, 251, 255, 263, 268, 275, 279, 285, 292, 296, 304, 306, 313, 317, 324, 328, 346, 353, 357, 364, 368, 370, 371, 373, 374, 375, 376, 377, 383, 387, 389, 390, 391, 392, 393, 394, 395, 396, 425, 428, 429, 430, 432, 446, 452, 453, 456, 457, 460, 461, 469, 470, 478, 479, 483, 488, 490, 491, 525, 530, 532, 537, 539, 544, 546, 551, 553, 558, 560, 565, 567, 572, 574, 579, 581, 586, 588, 589, 594, 596, 597, 604, 609, 611, 623, 628, 630, 635, 637, 639, 656, 657, 662, 667, 669, 676, 681, 683, 688, 693, 695, 717, 718, 722, 723, 728, 732, 733, 736, 738, 741, 742, 758, 763, 765, 766, 767, 772, 773, 776, 778, 785, 786, 798, 799, 800, 806, 810, 817, 821, 828, 832, 839, 840, 843, 844, 847, 849, 850, 867, 874, 878, 885, 889, 896, 900, 907, 911, 918, 922, 929, 933, 940, 944, 945, 952, 956, 963, 967, 975, 979, 987, 991, 998, 1002, 1009, 1013, 1020, 1024, 1031, 1035, 1037, 1039, 1041, 1042, 1043, 1049, 1050, 1053, 1054, 1055, 1058, 1059, 1063, 1067, 1072, 1074, 1076, 1077, 1078, 1083, 1085, 1090, 1092, 1097, 1099, 1104, 1106, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116} preds:[]
        	at jadx.core.dex.visitors.blocks.BlockProcessor.calcImmediateDominators(BlockProcessor.java:281)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:233)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:50)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    static {
        /*
            Method dump skipped, instructions count: 10625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0809d.m43569clinit():void");
    }

    private C0809d() {
    }

    public static int AFInAppEventType(Object obj) {
        int i = AppsFlyerLib;
        int i2 = (i ^ 45) + ((i & 45) << 1);
        int i3 = i2 % 128;
        onValidateInAppFailure = i3;
        if (i2 % 2 != 0 ? true : false) {
            throw null;
        }
        Object obj2 = onDeepLinking;
        AppsFlyerLib = ((i3 + 66) - 1) % 128;
        try {
            byte[] bArr = onValidateInApp;
            return ((Integer) Class.forName($$c((byte) (-bArr[427]), (short) 643, bArr[11]), true, (ClassLoader) onAttributionFailure).getMethod($$c(bArr[642], (short) 386, (byte) (-bArr[111])), Object.class).invoke(obj2, obj)).intValue();
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }

    public static void init$0() {
        int i;
        int i2 = onValidateInAppFailure;
        int i3 = ((i2 | 91) << 1) - (i2 ^ 91);
        AppsFlyerLib = i3 % 128;
        if (!(i3 % 2 == 0)) {
            byte[] bArr = new byte[1012];
            System.arraycopy("\u0005õ\u001f\u008b÷\u0015ëÍ;\u0006¿\u00143ñ��ÿ\róÿå%\u0002\u0005ÿß!þóü\f÷\u0015ëÍ>õ\rùÇ%&ú\u0001ñ\b\u0012ý��ó\t\u0006Í/��üýúþ\u0013õ\u0006ÿ\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ5ÀR÷\u0015ëÍ@û\u0006¿\u00147ûñÝ3ñ��ÿ\r\rö\u000eýúûÊA\u0004»\u00143ô\u0003øÀ2ï\r\u0001ö\u0006ÿ÷\u0015ëÍ;\u0006¿\u00147ûñÜ1��ï\u0018Ð%\u0002\u0005ÿß!þóü\fý\u000b\nó\u0002ÃE\u0006ú\u0001ñ\bÁ\u001b%ß\u0018\b\u0002\u0003\u0007Ë!\u0013Ë)õ\u0012��Ù#ò\u0003\u0001\róü\u0003â/÷��\rþ\u000fÒ#\u0003ù\u000eÑ%\tû÷\u000bñþ\u000fÏ\u001e\u0002\u0005ýß%\tóü\u0003ý\u000b\nó\u0002ÃE\u0006ú\u0001ñ\bÁ\u0016!\u0013Î#\u0003ù\fõ\u0001ú\u0004þ\u0002\u0005ýý\u000b\nó\u0002ÃE\u0006ú\u0001ñ\bÁ\u0014\u001f\u0012òß!\u0013Ë)õ\u0012��Ù#ò\u0003\u0001\rþ\u000fÏ,õ\u0001Þ\u001e\u0002\u0005ýß%\t\u0006õõ\u0005\u0003%Ó/��Õ1ï\t\u0006à%÷õë\u0007é\bF\u0001±Fû\u000b��öÿ\u0002\b\b\u00adLù\u0001\u000eµë\u0006ê\bë\u0004ì\bë\bè\b\fþÁ3\u000f��\u0003ó\u0006\rì\r¼;\u0005\u0006ñ\rüó\u000bÂ4Â��÷\u0015ëÍ>õ\rùÇ\u0015)õ\u0012��Ù#ò\u0003\u0001\r\rö\u000eýúûÊ3\u000f��¾\u0013/��×%\u0003óÿ\u000b\u0007þ\u000fÑ3üñ\rüó\u000bç!û\u0003ï\u0006þß%\tóþ\u0011û\u0003\u00074\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ3Ë÷\u0015ëÍ;\u0006¿\u0016\u001d\u0013íè%\u0002\u0005ÿß!þóü\f\u0003ò\u0003à!\u0013\rö\u000eýúûÊHóü\u0012·\u001d\u001a\u0014Ì1ï\t\u0006÷\u0015ëÍ;\u0006¿\u00147ûñÜ1��ï\u0018Ö&ÿü\u0005ÿß!þóü\f\rö\u000eýúûÊA\u0004»\u0017)\bó\týÿÿø\t\u0006þ\u000fÙ\u0014\u0017Ó\u001a\u0014Ê,õ\u0001øþ\u0007þ\u000fÏ)õ\u0012��Ù#ò\u0003\u0001\r5ý\u0013íÎ5ý\u0013íÎ\u0001\u0007ù\u000fñ\u0005\u0005\u001a\u0014ú\u0001û\u0003óò\u001bï\u000f��õ\rþ\u000fÒþñ\u0007\u0014ê\u0005\u0006ó\u0013õ\rïç\u001dù\u0010ï\u0011\u0007×\u0011\u0013ôÝ'ù\bø\t\u0006ÿ\t\u0003\u0004ò4\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ2Ì÷\u0015ëÍ;\u0006¿Fù\u0003ô\u0005\tþ\u000fÜ\"ý\u0001õ\r\u0002\u0005þ\u000fÍ!\u0011üý\tÿñë\u0011\u0013ô\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ3Â��\rö\u000eýúûÊ3\u000f��¾\u0013\"\u0011õ\ró\u000b\u0005Û\u0014\nóü\u0003ë\u000b\tðê\u0017÷\u0015ëÍ;\u0006¿\u0018#\u0003ùê&ÿü\u0005ÿß!þóü\fþ\ré\u001b÷\u000bñ÷\u0015ëÍ;\u0006¿\u001b\u0006ö3ë\u0002\u000b\u0004õ\u0006ÿ\rö\u000eýúûÊFñ\u0013üº&\u0011\u0013üá\u001fõ\u0003\u0007ñ\u0013ôä\u001d\n\u0001þ\u000fÕ%û\u000bõø\u000bÕ/��üýúþ\u0013õ\u0006ÿ÷\u0015ëÍ;\u0006¿\u0018#\u0003ùõ\u0012\u0001Õ%ö\u0001\u0013×\u0017ë\u0003í\b\u0012ý��ó\t\u0006à\u0015\u0004øè\u001c\u0003��ý\n÷\u0015ëÍ;\u0006¿\u0018#\u0003ùß!\u000eð\u000f÷\u0007\u0004û\u0003ûÓ7ûñÜ1��ï\u0018\u0003ò\u0003ß)õ\u0012��\fþÁ3\u000f��\u0003ó\u0006\rì\rûï\u000fó\u0013õ\rïç\u001dù\u0010ï\u0011\u0007Ë%\tóþ\u0011û\u0003÷ü\u000e÷\u0015ëÍ;\u0006¿\u001b%\u0002\u0005ÿß!þóü\f".getBytes("ISO-8859-1"), 0, bArr, 0, 1012);
            onValidateInApp = bArr;
            i = 237;
        } else {
            byte[] bArr2 = new byte[1012];
            System.arraycopy("\u0005õ\u001f\u008b÷\u0015ëÍ;\u0006¿\u00143ñ��ÿ\róÿå%\u0002\u0005ÿß!þóü\f÷\u0015ëÍ>õ\rùÇ%&ú\u0001ñ\b\u0012ý��ó\t\u0006Í/��üýúþ\u0013õ\u0006ÿ\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ5ÀR÷\u0015ëÍ@û\u0006¿\u00147ûñÝ3ñ��ÿ\r\rö\u000eýúûÊA\u0004»\u00143ô\u0003øÀ2ï\r\u0001ö\u0006ÿ÷\u0015ëÍ;\u0006¿\u00147ûñÜ1��ï\u0018Ð%\u0002\u0005ÿß!þóü\fý\u000b\nó\u0002ÃE\u0006ú\u0001ñ\bÁ\u001b%ß\u0018\b\u0002\u0003\u0007Ë!\u0013Ë)õ\u0012��Ù#ò\u0003\u0001\róü\u0003â/÷��\rþ\u000fÒ#\u0003ù\u000eÑ%\tû÷\u000bñþ\u000fÏ\u001e\u0002\u0005ýß%\tóü\u0003ý\u000b\nó\u0002ÃE\u0006ú\u0001ñ\bÁ\u0016!\u0013Î#\u0003ù\fõ\u0001ú\u0004þ\u0002\u0005ýý\u000b\nó\u0002ÃE\u0006ú\u0001ñ\bÁ\u0014\u001f\u0012òß!\u0013Ë)õ\u0012��Ù#ò\u0003\u0001\rþ\u000fÏ,õ\u0001Þ\u001e\u0002\u0005ýß%\t\u0006õõ\u0005\u0003%Ó/��Õ1ï\t\u0006à%÷õë\u0007é\bF\u0001±Fû\u000b��öÿ\u0002\b\b\u00adLù\u0001\u000eµë\u0006ê\bë\u0004ì\bë\bè\b\fþÁ3\u000f��\u0003ó\u0006\rì\r¼;\u0005\u0006ñ\rüó\u000bÂ4Â��÷\u0015ëÍ>õ\rùÇ\u0015)õ\u0012��Ù#ò\u0003\u0001\r\rö\u000eýúûÊ3\u000f��¾\u0013/��×%\u0003óÿ\u000b\u0007þ\u000fÑ3üñ\rüó\u000bç!û\u0003ï\u0006þß%\tóþ\u0011û\u0003\u00074\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ3Ë÷\u0015ëÍ;\u0006¿\u0016\u001d\u0013íè%\u0002\u0005ÿß!þóü\f\u0003ò\u0003à!\u0013\rö\u000eýúûÊHóü\u0012·\u001d\u001a\u0014Ì1ï\t\u0006÷\u0015ëÍ;\u0006¿\u00147ûñÜ1��ï\u0018Ö&ÿü\u0005ÿß!þóü\f\rö\u000eýúûÊA\u0004»\u0017)\bó\týÿÿø\t\u0006þ\u000fÙ\u0014\u0017Ó\u001a\u0014Ê,õ\u0001øþ\u0007þ\u000fÏ)õ\u0012��Ù#ò\u0003\u0001\r5ý\u0013íÎ5ý\u0013íÎ\u0001\u0007ù\u000fñ\u0005\u0005\u001a\u0014ú\u0001û\u0003óò\u001bï\u000f��õ\rþ\u000fÒþñ\u0007\u0014ê\u0005\u0006ó\u0013õ\rïç\u001dù\u0010ï\u0011\u0007×\u0011\u0013ôÝ'ù\bø\t\u0006ÿ\t\u0003\u0004ò4\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ2Ì÷\u0015ëÍ;\u0006¿Fù\u0003ô\u0005\tþ\u000fÜ\"ý\u0001õ\r\u0002\u0005þ\u000fÍ!\u0011üý\tÿñë\u0011\u0013ô\fþÂ2\u000f��\u0003ó\u0006\rì\r½:\u0005\u0006ñ\rüó\u000bÃ3Â��\rö\u000eýúûÊ3\u000f��¾\u0013\"\u0011õ\ró\u000b\u0005Û\u0014\nóü\u0003ë\u000b\tðê\u0017÷\u0015ëÍ;\u0006¿\u0018#\u0003ùê&ÿü\u0005ÿß!þóü\fþ\ré\u001b÷\u000bñ÷\u0015ëÍ;\u0006¿\u001b\u0006ö3ë\u0002\u000b\u0004õ\u0006ÿ\rö\u000eýúûÊFñ\u0013üº&\u0011\u0013üá\u001fõ\u0003\u0007ñ\u0013ôä\u001d\n\u0001þ\u000fÕ%û\u000bõø\u000bÕ/��üýúþ\u0013õ\u0006ÿ÷\u0015ëÍ;\u0006¿\u0018#\u0003ùõ\u0012\u0001Õ%ö\u0001\u0013×\u0017ë\u0003í\b\u0012ý��ó\t\u0006à\u0015\u0004øè\u001c\u0003��ý\n÷\u0015ëÍ;\u0006¿\u0018#\u0003ùß!\u000eð\u000f÷\u0007\u0004û\u0003ûÓ7ûñÜ1��ï\u0018\u0003ò\u0003ß)õ\u0012��\fþÁ3\u000f��\u0003ó\u0006\rì\rûï\u000fó\u0013õ\rïç\u001dù\u0010ï\u0011\u0007Ë%\tóþ\u0011û\u0003÷ü\u000e÷\u0015ëÍ;\u0006¿\u001b%\u0002\u0005ÿß!þóü\f".getBytes("ISO-8859-1"), 0, bArr2, 0, 1012);
            onValidateInApp = bArr2;
            i = 20953;
        }
        AppsFlyerConversionListener = i;
    }

    public static int values(int i) {
        int i2 = onValidateInAppFailure;
        int i3 = ((i2 | 33) << 1) - (i2 ^ 33);
        AppsFlyerLib = i3 % 128;
        if (i3 % 2 == 0) {
            Object obj = onDeepLinking;
            throw new ArithmeticException("divide by zero");
        }
        Object obj2 = onDeepLinking;
        AppsFlyerLib = ((i2 + 56) - 1) % 128;
        try {
            byte[] bArr = onValidateInApp;
            int intValue = ((Integer) Class.forName($$c((byte) (-bArr[427]), (short) 643, bArr[11]), true, (ClassLoader) onAttributionFailure).getMethod($$c(bArr[9], (short) 220, bArr[42]), Integer.TYPE).invoke(obj2, Integer.valueOf(i))).intValue();
            int i4 = onValidateInAppFailure;
            int i5 = (i4 ^ 125) + ((i4 & 125) << 1);
            AppsFlyerLib = i5 % 128;
            if (i5 % 2 == 0 ? true : true) {
                return intValue;
            }
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }

    public static Object values(char c, int i, int i2) {
        int i3 = AppsFlyerLib;
        int i4 = ((i3 ^ 109) + ((i3 & 109) << 1)) % 128;
        onValidateInAppFailure = i4;
        Object obj = onDeepLinking;
        AppsFlyerLib = ((i4 + 36) - 1) % 128;
        try {
            byte[] bArr = onValidateInApp;
            Class<?> cls = Class.forName($$c((byte) (-bArr[427]), (short) 643, bArr[11]), true, (ClassLoader) onAttributionFailure);
            String $$c = $$c(bArr[66], (short) 692, (byte) (-bArr[111]));
            Class<?> cls2 = Character.TYPE;
            Class<?> cls3 = Integer.TYPE;
            Object invoke = cls.getMethod($$c, cls2, cls3, cls3).invoke(obj, Character.valueOf(c), Integer.valueOf(i), Integer.valueOf(i2));
            int i5 = AppsFlyerLib;
            onValidateInAppFailure = ((i5 ^ 13) + ((i5 & 13) << 1)) % 128;
            return invoke;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }
}
