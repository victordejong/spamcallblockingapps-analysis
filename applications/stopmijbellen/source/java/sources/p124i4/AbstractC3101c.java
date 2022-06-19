package p124i4;
/* renamed from: i4.c */
/* loaded from: classes-dex2jar.jar:i4/c.class */
public abstract class AbstractC3101c {
    /* renamed from: c */
    public static AbstractC3101c m2652c(int i) {
        byte b = (byte) (((byte) (0 | 1)) | 2);
        if (b != 3) {
            StringBuilder sb = new StringBuilder();
            if ((b & 1) == 0) {
                sb.append(" appUpdateType");
            }
            if ((b & 2) == 0) {
                sb.append(" allowAssetPackDeletion");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new C3119u(i, false);
    }

    /* renamed from: a */
    public abstract boolean mo2600a();

    /* renamed from: b */
    public abstract int mo2599b();
}
