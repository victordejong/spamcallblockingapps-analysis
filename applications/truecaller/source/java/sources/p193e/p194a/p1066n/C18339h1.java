package p193e.p194a.p1066n;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19280e;
import s1.a.l;
import s1.z.c.d0;
/* renamed from: e.a.n.h1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/h1.class */
public final class C18339h1 implements Cursor {

    /* renamed from: e */
    public static final /* synthetic */ l[] f51796e = {C22128a.m8621g0(C18339h1.class, "id", "getId()J", 0), C22128a.m8621g0(C18339h1.class, "callLogId", "getCallLogId()J", 0), C22128a.m8621g0(C18339h1.class, "timestamp", "getTimestamp()J", 0)};

    /* renamed from: a */
    public final C19280e f51797a = new C19280e("_id", d0.a(Long.class), 0L);

    /* renamed from: b */
    public final C19280e f51798b = new C19280e("call_log_id", d0.a(Long.class), 0L);

    /* renamed from: c */
    public final C19280e f51799c = new C19280e("timestamp", d0.a(Long.class), 0L);

    /* renamed from: d */
    public final Cursor f51800d;

    public C18339h1(Cursor cursor) {
        s1.z.c.l.e(cursor, "cursor");
        this.f51800d = cursor;
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f51800d.close();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.f51800d.copyStringToBuffer(i, charArrayBuffer);
    }

    @Override // android.database.Cursor
    public void deactivate() {
        this.f51800d.deactivate();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        return this.f51800d.getBlob(i);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return this.f51800d.getColumnCount();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        return this.f51800d.getColumnIndex(str);
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        return this.f51800d.getColumnIndexOrThrow(str);
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return this.f51800d.getColumnName(i);
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.f51800d.getColumnNames();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f51800d.getCount();
    }

    @Override // android.database.Cursor
    public double getDouble(int i) {
        return this.f51800d.getDouble(i);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.f51800d.getExtras();
    }

    @Override // android.database.Cursor
    public float getFloat(int i) {
        return this.f51800d.getFloat(i);
    }

    public final long getId() {
        return ((Number) this.f51797a.m13705b(this, f51796e[0])).longValue();
    }

    @Override // android.database.Cursor
    public int getInt(int i) {
        return this.f51800d.getInt(i);
    }

    @Override // android.database.Cursor
    public long getLong(int i) {
        return this.f51800d.getLong(i);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.f51800d.getNotificationUri();
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f51800d.getPosition();
    }

    @Override // android.database.Cursor
    public short getShort(int i) {
        return this.f51800d.getShort(i);
    }

    @Override // android.database.Cursor
    public String getString(int i) {
        return this.f51800d.getString(i);
    }

    @Override // android.database.Cursor
    public int getType(int i) {
        return this.f51800d.getType(i);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return this.f51800d.getWantsAllOnMoveCalls();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return this.f51800d.isAfterLast();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return this.f51800d.isBeforeFirst();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.f51800d.isClosed();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f51800d.isFirst();
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f51800d.isLast();
    }

    @Override // android.database.Cursor
    public boolean isNull(int i) {
        return this.f51800d.isNull(i);
    }

    @Override // android.database.Cursor
    public boolean move(int i) {
        return this.f51800d.move(i);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        return this.f51800d.moveToFirst();
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        return this.f51800d.moveToLast();
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        return this.f51800d.moveToNext();
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i) {
        return this.f51800d.moveToPosition(i);
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        return this.f51800d.moveToPrevious();
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.f51800d.registerContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f51800d.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return this.f51800d.requery();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return this.f51800d.respond(bundle);
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        this.f51800d.setExtras(bundle);
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.f51800d.setNotificationUri(contentResolver, uri);
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.f51800d.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f51800d.unregisterDataSetObserver(dataSetObserver);
    }
}
