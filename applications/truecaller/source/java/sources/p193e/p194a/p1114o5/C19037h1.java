package p193e.p194a.p1114o5;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19280e;
import s1.a.l;
import s1.z.c.d0;
/* renamed from: e.a.o5.h1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/h1.class */
public final class C19037h1 implements Cursor {

    /* renamed from: x */
    public static final /* synthetic */ l[] f53158x = {C22128a.m8621g0(C19037h1.class, "dataId", "getDataId()J", 0), C22128a.m8621g0(C19037h1.class, "contactId", "getContactId()J", 0), C22128a.m8621g0(C19037h1.class, "lookupKey", "getLookupKey()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "dataVersion", "getDataVersion()I", 0), C22128a.m8621g0(C19037h1.class, "mimeType", "getMimeType()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "displayName", "getDisplayName()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "starred", "getStarred()I", 0), C22128a.m8621g0(C19037h1.class, "dataIsSuperPrimary", "getDataIsSuperPrimary()I", 0), C22128a.m8621g0(C19037h1.class, "phoneNumber", "getPhoneNumber()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, "getPhoneType()I", 0), C22128a.m8621g0(C19037h1.class, "phoneLabel", "getPhoneLabel()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "emailAddress", "getEmailAddress()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "postalStreet", "getPostalStreet()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "postalPostCode", "getPostalPostCode()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "postalCity", "getPostalCity()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "postalCountry", "getPostalCountry()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "company", "getCompany()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "jobTitle", "getJobTitle()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "familyName", "getFamilyName()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "givenName", "getGivenName()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "middleName", "getMiddleName()Ljava/lang/String;", 0), C22128a.m8621g0(C19037h1.class, "note", "getNote()Ljava/lang/String;", 0)};

    /* renamed from: a */
    public final C19280e f53159a = new C19280e("_id", d0.a(Long.class), 0L);

    /* renamed from: b */
    public final C19280e f53160b = new C19280e("contact_id", d0.a(Long.class), 0L);

    /* renamed from: c */
    public final C19280e f53161c = new C19280e("lookup", d0.a(String.class), null);

    /* renamed from: d */
    public final C19280e f53162d = new C19280e("data_version", d0.a(Integer.class), 0);

    /* renamed from: e */
    public final C19280e f53163e = new C19280e("mimetype", d0.a(String.class), null);

    /* renamed from: f */
    public final C19280e f53164f = new C19280e("display_name", d0.a(String.class), null);

    /* renamed from: g */
    public final C19280e f53165g = new C19280e("starred", d0.a(Integer.class), 0);

    /* renamed from: h */
    public final C19280e f53166h = new C19280e("is_super_primary", d0.a(Integer.class), 0);

    /* renamed from: i */
    public final C19280e f53167i = new C19280e("data1", d0.a(String.class), null);

    /* renamed from: j */
    public final C19280e f53168j = new C19280e("data2", d0.a(Integer.class), 0);

    /* renamed from: k */
    public final C19280e f53169k = new C19280e("data3", d0.a(String.class), null);

    /* renamed from: l */
    public final C19280e f53170l = new C19280e("data1", d0.a(String.class), null);

    /* renamed from: m */
    public final C19280e f53171m = new C19280e("data4", d0.a(String.class), null);

    /* renamed from: n */
    public final C19280e f53172n = new C19280e("data9", d0.a(String.class), null);

    /* renamed from: o */
    public final C19280e f53173o = new C19280e("data7", d0.a(String.class), null);

    /* renamed from: p */
    public final C19280e f53174p = new C19280e("data10", d0.a(String.class), null);

    /* renamed from: q */
    public final C19280e f53175q = new C19280e("data1", d0.a(String.class), null);

    /* renamed from: r */
    public final C19280e f53176r = new C19280e("data4", d0.a(String.class), null);

    /* renamed from: s */
    public final C19280e f53177s = new C19280e("data3", d0.a(String.class), null);

    /* renamed from: t */
    public final C19280e f53178t = new C19280e("data2", d0.a(String.class), null);

    /* renamed from: u */
    public final C19280e f53179u = new C19280e("data5", d0.a(String.class), null);

    /* renamed from: v */
    public final C19280e f53180v = new C19280e("data1", d0.a(String.class), null);

    /* renamed from: w */
    public final /* synthetic */ Cursor f53181w;

    public C19037h1(Cursor cursor) {
        s1.z.c.l.e(cursor, "cursor");
        this.f53181w = cursor;
    }

    /* renamed from: b */
    public final long m14217b() {
        return ((Number) this.f53160b.m13705b(this, f53158x[1])).longValue();
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f53181w.close();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.f53181w.copyStringToBuffer(i, charArrayBuffer);
    }

    @Override // android.database.Cursor
    public void deactivate() {
        this.f53181w.deactivate();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        return this.f53181w.getBlob(i);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return this.f53181w.getColumnCount();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        return this.f53181w.getColumnIndex(str);
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        return this.f53181w.getColumnIndexOrThrow(str);
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return this.f53181w.getColumnName(i);
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.f53181w.getColumnNames();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f53181w.getCount();
    }

    @Override // android.database.Cursor
    public double getDouble(int i) {
        return this.f53181w.getDouble(i);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.f53181w.getExtras();
    }

    @Override // android.database.Cursor
    public float getFloat(int i) {
        return this.f53181w.getFloat(i);
    }

    @Override // android.database.Cursor
    public int getInt(int i) {
        return this.f53181w.getInt(i);
    }

    @Override // android.database.Cursor
    public long getLong(int i) {
        return this.f53181w.getLong(i);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.f53181w.getNotificationUri();
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f53181w.getPosition();
    }

    @Override // android.database.Cursor
    public short getShort(int i) {
        return this.f53181w.getShort(i);
    }

    @Override // android.database.Cursor
    public String getString(int i) {
        return this.f53181w.getString(i);
    }

    @Override // android.database.Cursor
    public int getType(int i) {
        return this.f53181w.getType(i);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return this.f53181w.getWantsAllOnMoveCalls();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return this.f53181w.isAfterLast();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return this.f53181w.isBeforeFirst();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.f53181w.isClosed();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f53181w.isFirst();
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f53181w.isLast();
    }

    @Override // android.database.Cursor
    public boolean isNull(int i) {
        return this.f53181w.isNull(i);
    }

    @Override // android.database.Cursor
    public boolean move(int i) {
        return this.f53181w.move(i);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        return this.f53181w.moveToFirst();
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        return this.f53181w.moveToLast();
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        return this.f53181w.moveToNext();
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i) {
        return this.f53181w.moveToPosition(i);
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        return this.f53181w.moveToPrevious();
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.f53181w.registerContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f53181w.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return this.f53181w.requery();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return this.f53181w.respond(bundle);
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        this.f53181w.setExtras(bundle);
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.f53181w.setNotificationUri(contentResolver, uri);
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.f53181w.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f53181w.unregisterDataSetObserver(dataSetObserver);
    }
}
