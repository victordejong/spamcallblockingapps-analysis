package androidx.room;
/* loaded from: classes-dex2jar.jar:androidx/room/i.class */
public final class i {
    private i() {
    }

    public static String a(String str) {
        return "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')";
    }
}
