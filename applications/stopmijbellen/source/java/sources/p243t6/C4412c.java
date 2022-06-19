package p243t6;
/* renamed from: t6.c */
/* loaded from: classes-dex2jar.jar:t6/c.class */
public final class C4412c {

    /* renamed from: a */
    public static final int f13744a;

    static {
        int i;
        String property = System.getProperty("java.version");
        try {
            String[] split = property.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            i = parseInt;
            if (parseInt == 1) {
                i = parseInt;
                if (split.length > 1) {
                    i = Integer.parseInt(split[1]);
                }
            }
        } catch (NumberFormatException e) {
            i = -1;
        }
        int i2 = i;
        if (i == -1) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < property.length(); i3++) {
                    char charAt = property.charAt(i3);
                    if (!Character.isDigit(charAt)) {
                        break;
                    }
                    sb.append(charAt);
                }
                i2 = Integer.parseInt(sb.toString());
            } catch (NumberFormatException e2) {
                i2 = -1;
            }
        }
        int i4 = i2;
        if (i2 == -1) {
            i4 = 6;
        }
        f13744a = i4;
    }
}
