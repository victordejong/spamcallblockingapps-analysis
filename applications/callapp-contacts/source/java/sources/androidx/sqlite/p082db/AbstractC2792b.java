package androidx.sqlite.p082db;

import android.database.Cursor;
import android.database.SQLException;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;
/* renamed from: androidx.sqlite.db.b */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/b.class */
public interface AbstractC2792b extends Closeable {
    /* renamed from: a */
    Cursor mo39900a(AbstractC2794d abstractC2794d);

    /* renamed from: a */
    AbstractC2795e mo39899a(String str);

    /* renamed from: a */
    void mo39901a();

    /* renamed from: a */
    void mo39898a(String str, Object[] objArr) throws SQLException;

    /* renamed from: b */
    Cursor mo39896b(String str);

    /* renamed from: b */
    void mo39897b();

    /* renamed from: c */
    void mo39895c();

    /* renamed from: c */
    void mo39894c(String str) throws SQLException;

    /* renamed from: d */
    boolean mo39893d();

    /* renamed from: e */
    boolean mo39892e();

    /* renamed from: f */
    String mo39891f();

    /* renamed from: g */
    List<Pair<String, String>> mo39890g();
}
