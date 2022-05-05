package net.sqlcipher.database;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/DatabaseObjectNotClosedException.class */
public class DatabaseObjectNotClosedException extends RuntimeException {

    /* renamed from: s */
    public static final String f33244s = "Application did not close the cursor or database object that was opened here";

    public DatabaseObjectNotClosedException() {
        super(f33244s);
    }
}
