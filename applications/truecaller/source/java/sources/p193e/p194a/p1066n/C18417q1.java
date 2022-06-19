package p193e.p194a.p1066n;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19280e;
import s1.a.l;
import s1.z.c.d0;
/* renamed from: e.a.n.q1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/q1.class */
public final class C18417q1 implements Cursor {

    /* renamed from: i */
    public static final /* synthetic */ l[] f52035i = {C22128a.m8621g0(C18417q1.class, "id", "getId()J", 0), C22128a.m8621g0(C18417q1.class, "date", "getDate()J", 0), C22128a.m8621g0(C18417q1.class, "participantId", "getParticipantId()J", 0), C22128a.m8621g0(C18417q1.class, UpdateKey.STATUS, "getStatus()I", 0), C22128a.m8621g0(C18417q1.class, "rawAddress", "getRawAddress()Ljava/lang/String;", 0), C22128a.m8621g0(C18417q1.class, "strippedRawAddress", "getStrippedRawAddress()Ljava/lang/String;", 0), C22128a.m8621g0(C18417q1.class, "important", "getImportant()J", 0)};

    /* renamed from: a */
    public final C19280e f52036a = new C19280e("_id", d0.a(Long.class), 0L);

    /* renamed from: b */
    public final C19280e f52037b = new C19280e("date", d0.a(Long.class), 0L);

    /* renamed from: c */
    public final C19280e f52038c = new C19280e("participant_id", d0.a(Long.class), 0L);

    /* renamed from: d */
    public final C19280e f52039d = new C19280e(UpdateKey.STATUS, d0.a(Integer.class), 0);

    /* renamed from: e */
    public final C19280e f52040e = new C19280e("raw_address", d0.a(String.class), null);

    /* renamed from: f */
    public final C19280e f52041f = new C19280e("info10", d0.a(String.class), null);

    /* renamed from: g */
    public final C19280e f52042g = new C19280e("important", d0.a(Long.class), 0L);

    /* renamed from: h */
    public final Cursor f52043h;

    public C18417q1(Cursor cursor) {
        s1.z.c.l.e(cursor, "cursor");
        this.f52043h = cursor;
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f52043h.close();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.f52043h.copyStringToBuffer(i, charArrayBuffer);
    }

    @Override // android.database.Cursor
    public void deactivate() {
        this.f52043h.deactivate();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        return this.f52043h.getBlob(i);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return this.f52043h.getColumnCount();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        return this.f52043h.getColumnIndex(str);
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        return this.f52043h.getColumnIndexOrThrow(str);
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return this.f52043h.getColumnName(i);
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.f52043h.getColumnNames();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f52043h.getCount();
    }

    @Override // android.database.Cursor
    public double getDouble(int i) {
        return this.f52043h.getDouble(i);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.f52043h.getExtras();
    }

    @Override // android.database.Cursor
    public float getFloat(int i) {
        return this.f52043h.getFloat(i);
    }

    public final long getId() {
        return ((Number) this.f52036a.m13705b(this, f52035i[0])).longValue();
    }

    @Override // android.database.Cursor
    public int getInt(int i) {
        return this.f52043h.getInt(i);
    }

    @Override // android.database.Cursor
    public long getLong(int i) {
        return this.f52043h.getLong(i);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.f52043h.getNotificationUri();
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f52043h.getPosition();
    }

    @Override // android.database.Cursor
    public short getShort(int i) {
        return this.f52043h.getShort(i);
    }

    @Override // android.database.Cursor
    public String getString(int i) {
        return this.f52043h.getString(i);
    }

    @Override // android.database.Cursor
    public int getType(int i) {
        return this.f52043h.getType(i);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return this.f52043h.getWantsAllOnMoveCalls();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return this.f52043h.isAfterLast();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return this.f52043h.isBeforeFirst();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.f52043h.isClosed();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f52043h.isFirst();
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f52043h.isLast();
    }

    @Override // android.database.Cursor
    public boolean isNull(int i) {
        return this.f52043h.isNull(i);
    }

    @Override // android.database.Cursor
    public boolean move(int i) {
        return this.f52043h.move(i);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        return this.f52043h.moveToFirst();
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        return this.f52043h.moveToLast();
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        return this.f52043h.moveToNext();
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i) {
        return this.f52043h.moveToPosition(i);
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        return this.f52043h.moveToPrevious();
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.f52043h.registerContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f52043h.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return this.f52043h.requery();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return this.f52043h.respond(bundle);
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        this.f52043h.setExtras(bundle);
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.f52043h.setNotificationUri(contentResolver, uri);
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.f52043h.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f52043h.unregisterDataSetObserver(dataSetObserver);
    }
}
