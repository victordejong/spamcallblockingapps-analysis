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
            System.arraycopy("\u0005??\u001f\u008b??\u0015????;\u0006??\u00143??????????\r??????%\u0002\u0005????!??????\f??\u0015????>??\r????%&??\u0001??\b\u0012??????????\t\u0006??/??????????????\u0013??\u0006??\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??5??R??\u0015????@??\u0006??\u00147??????3??????????\r\r??\u000e????????A\u0004??\u00143??\u0003????2??\r\u0001??\u0006????\u0015????;\u0006??\u00147??????1????????\u0018??%\u0002\u0005????!??????\f??\u000b\n??\u0002??E\u0006??\u0001??\b??\u001b%??\u0018\b\u0002\u0003\u0007??!\u0013??)??\u0012????????#??\u0003\u0001\r????\u0003??/????????\r??\u000f??#\u0003??\u000e??%\t????\u000b????\u000f??\u001e\u0002\u0005????%\t????\u0003??\u000b\n??\u0002??E\u0006??\u0001??\b??\u0016!\u0013??#\u0003??\f??\u0001??\u0004??\u0002\u0005????\u000b\n??\u0002??E\u0006??\u0001??\b??\u0014\u001f\u0012????!\u0013??)??\u0012????????#??\u0003\u0001\r??\u000f??,??\u0001??\u001e\u0002\u0005????%\t\u0006????\u0005\u0003%??/????????1??\t\u0006??%??????\u0007??\bF\u0001??F??\u000b??????????\u0002\b\b\u00adL??\u0001\u000e????\u0006??\b??\u0004??\b??\b??\b\f????3\u000f??????\u0003??\u0006\r??\r??;\u0005\u0006??\r????\u000b??4??????????\u0015????>??\r????\u0015)??\u0012????????#??\u0003\u0001\r\r??\u000e????????3\u000f????????\u0013/????????%\u0003????\u000b\u0007??\u000f??3????\r????\u000b??!??\u0003??\u0006????%\t????\u0011??\u0003\u00074\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??3????\u0015????;\u0006??\u0016\u001d\u0013????%\u0002\u0005????!??????\f\u0003??\u0003??!\u0013\r??\u000e????????H????\u0012??\u001d\u001a\u0014??1??\t\u0006??\u0015????;\u0006??\u00147??????1????????\u0018??&????\u0005????!??????\f\r??\u000e????????A\u0004??\u0017)\b??\t????????\t\u0006??\u000f??\u0014\u0017??\u001a\u0014??,??\u0001????\u0007??\u000f??)??\u0012????????#??\u0003\u0001\r5??\u0013????5??\u0013????\u0001\u0007??\u000f??\u0005\u0005\u001a\u0014??\u0001??\u0003????\u001b??\u000f????????\r??\u000f??????\u0007\u0014??\u0005\u0006??\u0013??\r????\u001d??\u0010??\u0011\u0007??\u0011\u0013????'??\b??\t\u0006??\t\u0003\u0004??4\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??2????\u0015????;\u0006??F??\u0003??\u0005\t??\u000f??\"??\u0001??\r\u0002\u0005??\u000f??!\u0011????\t??????\u0011\u0013??\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??3????????\r??\u000e????????3\u000f????????\u0013\"\u0011??\r??\u000b\u0005??\u0014\n????\u0003??\u000b\t????\u0017??\u0015????;\u0006??\u0018#\u0003????&????\u0005????!??????\f??\r??\u001b??\u000b????\u0015????;\u0006??\u001b\u0006??3??\u0002\u000b\u0004??\u0006??\r??\u000e????????F??\u0013????&\u0011\u0013????\u001f??\u0003\u0007??\u0013????\u001d\n\u0001??\u000f??%??\u000b????\u000b??/??????????????\u0013??\u0006????\u0015????;\u0006??\u0018#\u0003????\u0012\u0001??%??\u0001\u0013??\u0017??\u0003??\b\u0012??????????\t\u0006??\u0015\u0004????\u001c\u0003????????\n??\u0015????;\u0006??\u0018#\u0003????!\u000e??\u000f??\u0007\u0004??\u0003????7??????1????????\u0018\u0003??\u0003??)??\u0012??????\f????3\u000f??????\u0003??\u0006\r??\r????\u000f??\u0013??\r????\u001d??\u0010??\u0011\u0007??%\t????\u0011??\u0003????\u000e??\u0015????;\u0006??\u001b%\u0002\u0005????!??????\f".getBytes("ISO-8859-1"), 0, bArr, 0, 1012);
            onValidateInApp = bArr;
            i = 237;
        } else {
            byte[] bArr2 = new byte[1012];
            System.arraycopy("\u0005??\u001f\u008b??\u0015????;\u0006??\u00143??????????\r??????%\u0002\u0005????!??????\f??\u0015????>??\r????%&??\u0001??\b\u0012??????????\t\u0006??/??????????????\u0013??\u0006??\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??5??R??\u0015????@??\u0006??\u00147??????3??????????\r\r??\u000e????????A\u0004??\u00143??\u0003????2??\r\u0001??\u0006????\u0015????;\u0006??\u00147??????1????????\u0018??%\u0002\u0005????!??????\f??\u000b\n??\u0002??E\u0006??\u0001??\b??\u001b%??\u0018\b\u0002\u0003\u0007??!\u0013??)??\u0012????????#??\u0003\u0001\r????\u0003??/????????\r??\u000f??#\u0003??\u000e??%\t????\u000b????\u000f??\u001e\u0002\u0005????%\t????\u0003??\u000b\n??\u0002??E\u0006??\u0001??\b??\u0016!\u0013??#\u0003??\f??\u0001??\u0004??\u0002\u0005????\u000b\n??\u0002??E\u0006??\u0001??\b??\u0014\u001f\u0012????!\u0013??)??\u0012????????#??\u0003\u0001\r??\u000f??,??\u0001??\u001e\u0002\u0005????%\t\u0006????\u0005\u0003%??/????????1??\t\u0006??%??????\u0007??\bF\u0001??F??\u000b??????????\u0002\b\b\u00adL??\u0001\u000e????\u0006??\b??\u0004??\b??\b??\b\f????3\u000f??????\u0003??\u0006\r??\r??;\u0005\u0006??\r????\u000b??4??????????\u0015????>??\r????\u0015)??\u0012????????#??\u0003\u0001\r\r??\u000e????????3\u000f????????\u0013/????????%\u0003????\u000b\u0007??\u000f??3????\r????\u000b??!??\u0003??\u0006????%\t????\u0011??\u0003\u00074\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??3????\u0015????;\u0006??\u0016\u001d\u0013????%\u0002\u0005????!??????\f\u0003??\u0003??!\u0013\r??\u000e????????H????\u0012??\u001d\u001a\u0014??1??\t\u0006??\u0015????;\u0006??\u00147??????1????????\u0018??&????\u0005????!??????\f\r??\u000e????????A\u0004??\u0017)\b??\t????????\t\u0006??\u000f??\u0014\u0017??\u001a\u0014??,??\u0001????\u0007??\u000f??)??\u0012????????#??\u0003\u0001\r5??\u0013????5??\u0013????\u0001\u0007??\u000f??\u0005\u0005\u001a\u0014??\u0001??\u0003????\u001b??\u000f????????\r??\u000f??????\u0007\u0014??\u0005\u0006??\u0013??\r????\u001d??\u0010??\u0011\u0007??\u0011\u0013????'??\b??\t\u0006??\t\u0003\u0004??4\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??2????\u0015????;\u0006??F??\u0003??\u0005\t??\u000f??\"??\u0001??\r\u0002\u0005??\u000f??!\u0011????\t??????\u0011\u0013??\f????2\u000f??????\u0003??\u0006\r??\r??:\u0005\u0006??\r????\u000b??3????????\r??\u000e????????3\u000f????????\u0013\"\u0011??\r??\u000b\u0005??\u0014\n????\u0003??\u000b\t????\u0017??\u0015????;\u0006??\u0018#\u0003????&????\u0005????!??????\f??\r??\u001b??\u000b????\u0015????;\u0006??\u001b\u0006??3??\u0002\u000b\u0004??\u0006??\r??\u000e????????F??\u0013????&\u0011\u0013????\u001f??\u0003\u0007??\u0013????\u001d\n\u0001??\u000f??%??\u000b????\u000b??/??????????????\u0013??\u0006????\u0015????;\u0006??\u0018#\u0003????\u0012\u0001??%??\u0001\u0013??\u0017??\u0003??\b\u0012??????????\t\u0006??\u0015\u0004????\u001c\u0003????????\n??\u0015????;\u0006??\u0018#\u0003????!\u000e??\u000f??\u0007\u0004??\u0003????7??????1????????\u0018\u0003??\u0003??)??\u0012??????\f????3\u000f??????\u0003??\u0006\r??\r????\u000f??\u0013??\r????\u001d??\u0010??\u0011\u0007??%\t????\u0011??\u0003????\u000e??\u0015????;\u0006??\u001b%\u0002\u0005????!??????\f".getBytes("ISO-8859-1"), 0, bArr2, 0, 1012);
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
