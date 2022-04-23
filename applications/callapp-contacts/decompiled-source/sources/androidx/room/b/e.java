package androidx.room.b;
/* loaded from: classes-dex2jar.jar:androidx/room/b/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f5520a = new String[0];

    private e() {
    }

    public static StringBuilder a() {
        return new StringBuilder();
    }

    public static void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("?");
            if (i2 < i - 1) {
                sb.append(",");
            }
        }
    }
}
