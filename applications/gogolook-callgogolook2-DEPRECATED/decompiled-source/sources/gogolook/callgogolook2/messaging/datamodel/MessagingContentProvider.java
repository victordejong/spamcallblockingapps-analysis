package gogolook.callgogolook2.messaging.datamodel;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11525e;
import p459j.p460a.p474c0.p475c.C11532j;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14096o0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/MessagingContentProvider.class */
public class MessagingContentProvider extends ContentProvider {

    /* renamed from: c */
    public static final Uri f11175c = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/conversations");

    /* renamed from: d */
    public static final Uri f11176d = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/parts");

    /* renamed from: e */
    public static final Uri f11177e = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/messages");

    /* renamed from: f */
    public static final Uri f11178f = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/messages/conversation");

    /* renamed from: g */
    public static final Uri f11179g = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/participants/conversation");

    /* renamed from: h */
    public static final Uri f11180h = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/participants");

    /* renamed from: i */
    public static final Uri f11181i = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/conversation_images");

    /* renamed from: j */
    public static final Uri f11182j = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/draft_images");

    /* renamed from: k */
    public static final Uri f11183k = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/unread_message");

    /* renamed from: l */
    public static final Uri f11184l = Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/conversation_unread");

    /* renamed from: m */
    public static final UriMatcher f11185m = new UriMatcher(-1);

    /* renamed from: a */
    public C11532j f11186a;

    /* renamed from: b */
    public C11534l f11187b;

    static {
        Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/search");
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "conversations", 10);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "conversations/*", 20);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "messages/conversation/*", 30);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "messages/conversation/*/*", 30);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "participants/conversation/*", 40);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", NotificationCompat.CarExtender.KEY_PARTICIPANTS, 70);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "conversation_images/*", 50);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "draft_images/*", 60);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "unread_message", 80);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "search", 90);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "search/*", 100);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", "conversation_unread", 110);
        f11185m.addURI("gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider", NotificationCompat.CarExtender.KEY_MESSAGES, 120);
    }

    /* renamed from: a */
    public static Uri m27779a(String str) {
        Uri.Builder buildUpon = f11181i.buildUpon();
        buildUpon.appendPath(str);
        return buildUpon.build();
    }

    /* renamed from: a */
    public static Uri m27777a(String str, @Nullable Integer num) {
        Uri.Builder buildUpon = f11178f.buildUpon();
        buildUpon.appendPath(str);
        if (!(num == null || num.intValue() == 0 || -1 == num.intValue())) {
            buildUpon.appendPath(String.valueOf(num));
        }
        return buildUpon.build();
    }

    /* renamed from: b */
    public static Uri m27774b(String str) {
        Uri.Builder buildUpon = f11175c.buildUpon();
        buildUpon.appendPath(str);
        return buildUpon.build();
    }

    /* renamed from: c */
    public static Uri m27772c(String str) {
        Uri.Builder buildUpon = f11179g.buildUpon();
        buildUpon.appendPath(str);
        return buildUpon.build();
    }

    /* renamed from: c */
    public static void m27773c() {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(f11178f, null);
    }

    /* renamed from: d */
    public static Uri m27770d(String str) {
        Uri.Builder buildUpon = f11182j.buildUpon();
        buildUpon.appendPath(str);
        return buildUpon.build();
    }

    /* renamed from: d */
    public static void m27771d() {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(f11179g, null);
    }

    /* renamed from: e */
    public static void m27769e() {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(f11175c, null);
        C14037j3.m2731a().mo2704a(new C14096o0());
    }

    /* renamed from: e */
    public static void m27768e(String str) {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(m27774b(str), null);
    }

    /* renamed from: f */
    public static void m27767f() {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(Uri.parse("content://gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider/"), null);
        m27769e();
    }

    /* renamed from: f */
    public static void m27766f(String str) {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(m27777a(str, (Integer) null), null);
    }

    /* renamed from: g */
    public static void m27765g() {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(f11176d, null);
    }

    /* renamed from: g */
    public static void m27764g(String str) {
        AbstractC11516a.m9413n().mo9412a().getContentResolver().notifyChange(m27772c(str), null);
    }

    /* renamed from: a */
    public final Cursor m27778a(String str, Uri uri, String str2) {
        Cursor cursor;
        int parseInt = TextUtils.isEmpty(str2) ? -1 : Integer.parseInt(str2);
        String[] strArr = {str};
        if (1 == parseInt || 2 == parseInt) {
            cursor = m27775b().m9217a(1 == parseInt ? C11610g.m8923U() : C11610g.m8922V(), strArr);
        } else {
            cursor = m27775b().m9217a(C11610g.m8924T(), strArr);
        }
        cursor.setNotificationUri(getContext().getContentResolver(), uri);
        return cursor;
    }

    /* renamed from: a */
    public C11532j m27780a() {
        return C11532j.m9238a(getContext());
    }

    /* renamed from: a */
    public final String[] m27776a(String[] strArr, String... strArr2) {
        if (strArr2 == null || strArr2.length == 0) {
            return strArr;
        }
        int length = strArr == null ? 0 : strArr.length;
        int length2 = strArr2.length;
        String[] strArr3 = new String[length + length2];
        System.arraycopy(strArr2, 0, strArr3, 0, length2);
        if (length > 0) {
            System.arraycopy(strArr, 0, strArr3, length2, length);
        }
        return strArr3;
    }

    /* renamed from: b */
    public final C11534l m27775b() {
        if (this.f11187b == null) {
            this.f11187b = this.f11186a.m9240a();
        }
        return this.f11187b;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new IllegalArgumentException("Delete not supported: " + uri);
    }

    @Override // android.content.ContentProvider
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String e = AbstractC12181l0.m6886t().m6893e();
        String str = e;
        if (TextUtils.isEmpty(e)) {
            str = "None";
        }
        printWriter.println("Default SMS app: " + str);
        C12153d0.m6994a(printWriter);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        StringBuilder sb = new StringBuilder("vnd.android.cursor.dir/vnd.android.messaging.");
        if (f11185m.match(uri) == 10) {
            sb.append("conversations");
            return sb.toString();
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new IllegalStateException("Insert not supported " + uri);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f11186a = m27780a();
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        throw new IllegalArgumentException("openFile not supported: " + uri);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        String str4 = str;
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        String str5 = "conversation_id";
        String str6 = null;
        switch (f11185m.match(uri)) {
            case 10:
                sQLiteQueryBuilder.setTables(C11608e.m8946m());
                sQLiteQueryBuilder.appendWhere("sort_timestamp > 0 ");
                strArr2 = strArr2;
                str5 = null;
                str4 = str4;
                break;
            case 20:
                sQLiteQueryBuilder.setTables(C11608e.m8946m());
                if (uri.getPathSegments().size() == 2) {
                    sQLiteQueryBuilder.appendWhere("_id=?");
                    strArr2 = m27776a(strArr2, uri.getPathSegments().get(1));
                    str5 = null;
                    str4 = str4;
                    break;
                } else {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
            case 30:
                int size = uri.getPathSegments().size();
                if (size < 3 || !TextUtils.equals(uri.getPathSegments().get(1), "conversation")) {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
                String str7 = uri.getPathSegments().get(2);
                if (str4 == null && strArr2 == null && str2 == null) {
                    Uri a = m27777a(str7, (Integer) null);
                    if (size > 3) {
                        str6 = uri.getPathSegments().get(3);
                    }
                    return m27778a(str7, a, str6);
                }
                throw new IllegalArgumentException("Cannot set selection or sort order with this query");
            case 40:
                sQLiteQueryBuilder.setTables(NotificationCompat.CarExtender.KEY_PARTICIPANTS);
                if (uri.getPathSegments().size() == 3 && TextUtils.equals(uri.getPathSegments().get(1), "conversation")) {
                    sQLiteQueryBuilder.appendWhere("_id IN ( SELECT participant_id AS _id FROM conversation_participants WHERE conversation_id =? UNION SELECT _id FROM participants WHERE sub_id != -2 )");
                    strArr2 = m27776a(strArr2, uri.getPathSegments().get(2));
                    str5 = null;
                    str4 = str4;
                    break;
                } else {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
                break;
            case 50:
                sQLiteQueryBuilder.setTables(C11525e.m9268b());
                if (uri.getPathSegments().size() == 2) {
                    sQLiteQueryBuilder.appendWhere("conversation_id =? AND message_status<>3");
                    strArr2 = m27776a(strArr2, uri.getPathSegments().get(1));
                    str5 = null;
                    str4 = str4;
                    break;
                } else {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
            case 60:
                sQLiteQueryBuilder.setTables(C11525e.m9268b());
                if (uri.getPathSegments().size() == 2) {
                    sQLiteQueryBuilder.appendWhere("conversation_id =? AND message_status=3");
                    strArr2 = m27776a(strArr2, uri.getPathSegments().get(1));
                    str5 = null;
                    str4 = str4;
                    break;
                } else {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
            case 70:
                sQLiteQueryBuilder.setTables(NotificationCompat.CarExtender.KEY_PARTICIPANTS);
                if (uri.getPathSegments().size() == 1) {
                    strArr2 = strArr2;
                    str5 = null;
                    str4 = str4;
                    break;
                } else {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
            case 80:
                sQLiteQueryBuilder.setTables("messages LEFT JOIN conversations ON (conversations._id=conversation_id)");
                sQLiteQueryBuilder.appendWhere("read!=1 AND 100<=message_status");
                break;
            case 90:
                return null;
            case 100:
                if (uri.getPathSegments().size() == 2) {
                    sQLiteQueryBuilder.setTables("(SELECT parts._id as _id,name,icon,text,sort_timestamp,participant_contact_id,participant_lookup_key,participant_normalized_destination,participant_count,current_self_id,include_email_addr,parts.conversation_id as conversation_id FROM parts INNER JOIN conversations ON (conversations._id=parts.conversation_id) INNER JOIN messages ON (messages._id=message_id) WHERE name like ? GROUP BY parts.conversation_id UNION ALL SELECT parts._id as _id,name,icon,text,sort_timestamp,participant_contact_id,participant_lookup_key,participant_normalized_destination,participant_count,current_self_id,include_email_addr,parts.conversation_id as conversation_id FROM parts INNER JOIN conversations ON (conversations._id=parts.conversation_id) INNER JOIN messages ON (messages._id=message_id) WHERE content_type = ? AND text like ?)");
                    String str8 = "%" + Uri.decode(uri.getPathSegments().get(1)) + "%";
                    strArr2 = m27776a(strArr2, str8, "text/plain", str8);
                    str5 = null;
                    str4 = str4;
                    break;
                } else {
                    throw new IllegalArgumentException("Malformed URI " + uri);
                }
            case 110:
                sQLiteQueryBuilder.setTables("messages INNER JOIN conversations ON (conversations._id=conversation_id)");
                StringBuilder sb = new StringBuilder();
                sb.append("messages.message_status != -1");
                if (TextUtils.isEmpty(str)) {
                    str3 = "";
                } else {
                    str3 = " AND (" + str4 + ")";
                }
                sb.append(str3);
                str4 = sb.toString();
                break;
            case 120:
                sQLiteQueryBuilder.setTables("messages INNER JOIN conversation_participants ON conversation_participants.conversation_id = messages.conversation_id INNER JOIN participants ON participants._id=participant_id");
                str5 = "messages._id";
                str4 = str4;
                break;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
        Cursor a2 = m27775b().m9222a(sQLiteQueryBuilder, strArr, str4, strArr2, str5, (String) null, str2, (String) null);
        a2.setNotificationUri(getContext().getContentResolver(), uri);
        return a2;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new IllegalArgumentException("Update not supported: " + uri);
    }
}
