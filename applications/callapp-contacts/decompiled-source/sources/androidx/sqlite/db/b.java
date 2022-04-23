package androidx.sqlite.db;

import android.database.Cursor;
import android.database.SQLException;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/b.class */
public interface b extends Closeable {
    Cursor a(d dVar);

    e a(String str);

    void a();

    void a(String str, Object[] objArr) throws SQLException;

    Cursor b(String str);

    void b();

    void c();

    void c(String str) throws SQLException;

    boolean d();

    boolean e();

    String f();

    List<Pair<String, String>> g();
}
