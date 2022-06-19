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
/* renamed from: e.a.n.t0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/t0.class */
public final class C18433t0 implements Cursor {

    /* renamed from: d */
    public static final /* synthetic */ l[] f52077d = {C22128a.m8621g0(C18433t0.class, "id", "getId()J", 0), C22128a.m8621g0(C18433t0.class, "timestamp", "getTimestamp()J", 0)};

    /* renamed from: a */
    public final C19280e f52078a = new C19280e("_id", d0.a(Long.class), 0L);

    /* renamed from: b */
    public final C19280e f52079b = new C19280e("date", d0.a(Long.class), 0L);

    /* renamed from: c */
    public final Cursor f52080c;

    public C18433t0(Cursor cursor) {
        s1.z.c.l.e(cursor, "cursor");
        this.f52080c = cursor;
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f52080c.close();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.f52080c.copyStringToBuffer(i, charArrayBuffer);
    }

    @Override // android.database.Cursor
    public void deactivate() {
        this.f52080c.deactivate();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        return this.f52080c.getBlob(i);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return this.f52080c.getColumnCount();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        return this.f52080c.getColumnIndex(str);
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        return this.f52080c.getColumnIndexOrThrow(str);
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return this.f52080c.getColumnName(i);
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.f52080c.getColumnNames();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f52080c.getCount();
    }

    @Override // android.database.Cursor
    public double getDouble(int i) {
        return this.f52080c.getDouble(i);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.f52080c.getExtras();
    }

    @Override // android.database.Cursor
    public float getFloat(int i) {
        return this.f52080c.getFloat(i);
    }

    @Override // android.database.Cursor
    public int getInt(int i) {
        return this.f52080c.getInt(i);
    }

    @Override // android.database.Cursor
    public long getLong(int i) {
        return this.f52080c.getLong(i);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.f52080c.getNotificationUri();
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f52080c.getPosition();
    }

    @Override // android.database.Cursor
    public short getShort(int i) {
        return this.f52080c.getShort(i);
    }

    @Override // android.database.Cursor
    public String getString(int i) {
        return this.f52080c.getString(i);
    }

    @Override // android.database.Cursor
    public int getType(int i) {
        return this.f52080c.getType(i);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return this.f52080c.getWantsAllOnMoveCalls();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return this.f52080c.isAfterLast();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return this.f52080c.isBeforeFirst();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.f52080c.isClosed();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f52080c.isFirst();
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f52080c.isLast();
    }

    @Override // android.database.Cursor
    public boolean isNull(int i) {
        return this.f52080c.isNull(i);
    }

    @Override // android.database.Cursor
    public boolean move(int i) {
        return this.f52080c.move(i);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        return this.f52080c.moveToFirst();
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        return this.f52080c.moveToLast();
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        return this.f52080c.moveToNext();
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i) {
        return this.f52080c.moveToPosition(i);
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        return this.f52080c.moveToPrevious();
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.f52080c.registerContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f52080c.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return this.f52080c.requery();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return this.f52080c.respond(bundle);
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        this.f52080c.setExtras(bundle);
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.f52080c.setNotificationUri(contentResolver, uri);
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.f52080c.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f52080c.unregisterDataSetObserver(dataSetObserver);
    }
}
