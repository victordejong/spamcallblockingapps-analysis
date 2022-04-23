package p459j.p460a.p474c0.p480d.p481d;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.collection.SimpleArrayMap;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import com.flurry.sdk.C3105fn;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import p459j.p460a.p474c0.p480d.C11687a;
import p459j.p460a.p474c0.p480d.C11688b;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p480d.p482e.C11721d;
import p459j.p460a.p474c0.p480d.p482e.C11722e;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.d.d.p */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/p.class */
public class C11709p {

    /* renamed from: c */
    public static C11709p f26265c;

    /* renamed from: a */
    public final Context f26281a;

    /* renamed from: b */
    public final ContentResolver f26282b;

    /* renamed from: e */
    public static final int[] f26267e = {129, 130, 137, 151};

    /* renamed from: f */
    public static final String[] f26268f = {"_id", "msg_box", "thread_id", "retr_txt", "sub", "ct_l", "ct_t", "m_cls", "m_id", "resp_txt", "tr_id", "ct_cls", "d_rpt", "m_type", "v", "pri", "rr", "read_status", "rpt_a", "retr_st", "st", "date", "d_tm", "exp", "m_size", MmsBlockLogRealmObject.SUB_CS, "retr_txt_cs", "read", "seen"};

    /* renamed from: g */
    public static final String[] f26269g = {"_id", "chset", "cd", UserProfile.CARDCATE_KEY_CID, "cl", "ct", C3105fn.f5019a, "name", "text"};

    /* renamed from: h */
    public static final SimpleArrayMap<Uri, Integer> f26270h = new SimpleArrayMap<>();

    /* renamed from: i */
    public static final SparseIntArray f26271i = new SparseIntArray();

    /* renamed from: n */
    public static final SparseArray<String> f26276n = new SparseArray<>();

    /* renamed from: j */
    public static final SparseIntArray f26272j = new SparseIntArray();

    /* renamed from: o */
    public static final SparseArray<String> f26277o = new SparseArray<>();

    /* renamed from: k */
    public static final SparseIntArray f26273k = new SparseIntArray();

    /* renamed from: p */
    public static final SparseArray<String> f26278p = new SparseArray<>();

    /* renamed from: l */
    public static final SparseIntArray f26274l = new SparseIntArray();

    /* renamed from: q */
    public static final SparseArray<String> f26279q = new SparseArray<>();

    /* renamed from: m */
    public static final SparseIntArray f26275m = new SparseIntArray();

    /* renamed from: r */
    public static final SparseArray<String> f26280r = new SparseArray<>();

    /* renamed from: d */
    public static final C11721d f26266d = C11721d.m8426b();

    static {
        f26270h.put(Telephony.Mms.Inbox.CONTENT_URI, 1);
        f26270h.put(Telephony.Mms.Sent.CONTENT_URI, 2);
        f26270h.put(Telephony.Mms.Draft.CONTENT_URI, 3);
        f26270h.put(Telephony.Mms.Outbox.CONTENT_URI, 4);
        f26271i.put(150, 25);
        f26271i.put(154, 26);
        f26276n.put(150, MmsBlockLogRealmObject.SUB_CS);
        f26276n.put(154, "retr_txt_cs");
        f26272j.put(154, 3);
        f26272j.put(150, 4);
        f26277o.put(154, "retr_txt");
        f26277o.put(150, "sub");
        f26273k.put(131, 5);
        f26273k.put(132, 6);
        f26273k.put(138, 7);
        f26273k.put(139, 8);
        f26273k.put(147, 9);
        f26273k.put(152, 10);
        f26278p.put(131, "ct_l");
        f26278p.put(132, "ct_t");
        f26278p.put(138, "m_cls");
        f26278p.put(139, "m_id");
        f26278p.put(147, "resp_txt");
        f26278p.put(152, "tr_id");
        f26274l.put(MatroskaExtractor.ID_PIXEL_HEIGHT, 11);
        f26274l.put(134, 12);
        f26274l.put(140, 13);
        f26274l.put(141, 14);
        f26274l.put(143, 15);
        f26274l.put(144, 16);
        f26274l.put(155, 17);
        f26274l.put(145, 18);
        f26274l.put(153, 19);
        f26274l.put(149, 20);
        f26279q.put(MatroskaExtractor.ID_PIXEL_HEIGHT, "ct_cls");
        f26279q.put(134, "d_rpt");
        f26279q.put(140, "m_type");
        f26279q.put(141, "v");
        f26279q.put(143, "pri");
        f26279q.put(144, "rr");
        f26279q.put(155, "read_status");
        f26279q.put(145, "rpt_a");
        f26279q.put(153, "retr_st");
        f26279q.put(149, "st");
        f26275m.put(133, 21);
        f26275m.put(135, 22);
        f26275m.put(136, 23);
        f26275m.put(142, 24);
        f26280r.put(133, "date");
        f26280r.put(135, "d_tm");
        f26280r.put(136, "exp");
        f26280r.put(142, "m_size");
    }

    public C11709p(Context context) {
        this.f26281a = context;
        this.f26282b = context.getContentResolver();
    }

    /* renamed from: a */
    public static C11709p m8473a(Context context) {
        C11709p pVar = f26265c;
        if (pVar == null || !context.equals(pVar.f26281a)) {
            f26265c = new C11709p(context);
        }
        return f26265c;
    }

    /* renamed from: a */
    public static String m8472a(Context context, Uri uri) {
        String str = null;
        Cursor cursor = null;
        if (uri != null) {
            String scheme = uri.getScheme();
            if (scheme == null || scheme.equals("") || scheme.equals("file")) {
                str = uri.getPath();
            } else if (scheme.equals("http")) {
                str = uri.toString();
            } else if (scheme.equals("content")) {
                try {
                    try {
                        Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                        if (query == null || query.getCount() == 0 || !query.moveToFirst()) {
                            throw new IllegalArgumentException("Given Uri could not be found in media store");
                        }
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                        if (query != null) {
                            query.close();
                        }
                    } catch (SQLiteException e) {
                        throw new IllegalArgumentException("Given Uri is not formatted in a way so that it can be found in media store.");
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                throw new IllegalArgumentException("Given Uri scheme is not supported");
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m8466a(C11708o oVar) {
        return oVar.m8487f() == null ? null : m8460a(oVar.m8487f());
    }

    /* renamed from: a */
    public static String m8460a(byte[] bArr) {
        try {
            return new String(bArr, "iso-8859-1");
        } catch (UnsupportedEncodingException e) {
            Log.e("PduPersister", "ISO_8859_1 must be supported!", e);
            return "";
        }
    }

    /* renamed from: a */
    public static void m8464a(C11708o oVar, ContentValues contentValues) {
        byte[] i = oVar.m8481i();
        if (i != null) {
            contentValues.put(C3105fn.f5019a, new String(i));
        }
        byte[] j = oVar.m8480j();
        if (j != null) {
            contentValues.put("name", new String(j));
        }
        byte[] b = oVar.m8495b();
        if (b != null) {
            contentValues.put("cd", m8460a(b));
        }
        byte[] c = oVar.m8493c();
        if (c != null) {
            contentValues.put(UserProfile.CARDCATE_KEY_CID, m8460a(c));
        }
        byte[] d = oVar.m8491d();
        if (d != null) {
            contentValues.put("cl", m8460a(d));
        }
    }

    /* renamed from: a */
    public static byte[] m8462a(String str) {
        try {
            return str.getBytes("iso-8859-1");
        } catch (UnsupportedEncodingException e) {
            Log.e("PduPersister", "ISO_8859_1 must be supported!", e);
            return new byte[0];
        }
    }

    /* renamed from: a */
    public Uri m8467a(C11695f fVar, Uri uri, int i, String str, Map<Uri, InputStream> map) throws C11688b {
        long j;
        int[] iArr;
        int i2;
        Uri uri2;
        int[] iArr2;
        C11699j c;
        long j2;
        if (uri != null) {
            try {
                j = ContentUris.parseId(uri);
            } catch (NumberFormatException e) {
                j = -1;
            }
            boolean z = j != -1;
            if (z || f26270h.get(uri) != null) {
                synchronized (f26266d) {
                    if (f26266d.m8430a(uri)) {
                        try {
                            f26266d.wait();
                        } catch (InterruptedException e2) {
                            Log.e("PduPersister", "persist1: ", e2);
                        }
                    }
                }
                f26266d.m8423c(uri);
                C11706m b = fVar.m8581b();
                ContentValues contentValues = new ContentValues();
                contentValues.put("seen", (Integer) 1);
                int size = f26277o.size();
                while (true) {
                    int i3 = size - 1;
                    if (i3 < 0) {
                        break;
                    }
                    int keyAt = f26277o.keyAt(i3);
                    C11694e a = b.m8532a(keyAt);
                    size = i3;
                    if (a != null) {
                        contentValues.put(f26277o.valueAt(i3), m8460a(a.m8585f()));
                        contentValues.put(f26276n.get(keyAt), Integer.valueOf(a.m8587d()));
                        size = i3;
                    }
                }
                int size2 = f26278p.size();
                while (true) {
                    int i4 = size2 - 1;
                    if (i4 < 0) {
                        break;
                    }
                    byte[] e3 = b.m8522e(f26278p.keyAt(i4));
                    size2 = i4;
                    if (e3 != null) {
                        contentValues.put(f26278p.valueAt(i4), m8460a(e3));
                        size2 = i4;
                    }
                }
                int size3 = f26279q.size();
                while (true) {
                    int i5 = size3 - 1;
                    if (i5 < 0) {
                        break;
                    }
                    int d = b.m8523d(f26279q.keyAt(i5));
                    size3 = i5;
                    if (d != 0) {
                        contentValues.put(f26279q.valueAt(i5), Integer.valueOf(d));
                        size3 = i5;
                    }
                }
                int size4 = f26280r.size();
                while (true) {
                    int i6 = size4 - 1;
                    if (i6 < 0) {
                        break;
                    }
                    long c2 = b.m8524c(f26280r.keyAt(i6));
                    size4 = i6;
                    if (c2 != -1) {
                        contentValues.put(f26280r.valueAt(i6), Long.valueOf(c2));
                        size4 = i6;
                    }
                }
                SparseArray<C11694e[]> sparseArray = new SparseArray<>(f26267e.length);
                for (int i7 : f26267e) {
                    C11694e[] eVarArr = null;
                    if (i7 == 137) {
                        C11694e a2 = b.m8532a(i7);
                        if (a2 != null) {
                            eVarArr = new C11694e[]{a2};
                        }
                    } else {
                        eVarArr = b.m8526b(i7);
                    }
                    sparseArray.put(i7, eVarArr);
                }
                HashSet<String> hashSet = new HashSet<>();
                int a3 = fVar.m8584a();
                if (a3 == 130 || a3 == 132 || a3 == 128) {
                    if (a3 == 128) {
                        m8478a(151, hashSet, sparseArray);
                    } else if (a3 == 130 || a3 == 132) {
                        m8478a(137, hashSet, sparseArray);
                        m8461a(hashSet, sparseArray, str);
                    }
                    if (!hashSet.isEmpty()) {
                        j2 = C11832i.C11833a.m8155a(this.f26281a, hashSet);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("PduPersister.persist No recipients; persisting PDU to thread: ");
                        j2 = -1;
                        sb.append(-1L);
                        C12153d0.m6981e("PduPersister", sb.toString());
                    }
                    contentValues.put("thread_id", Long.valueOf(j2));
                }
                long currentTimeMillis = System.currentTimeMillis();
                if ((fVar instanceof C11696g) && (c = ((C11696g) fVar).m8576c()) != null) {
                    int a4 = c.m8569a();
                    int i8 = a4 > 2 ? 0 : 1;
                    int i9 = 0;
                    while (true) {
                        i2 = i8;
                        if (i9 >= a4) {
                            break;
                        }
                        C11708o a5 = c.m8568a(i9);
                        m8465a(a5, currentTimeMillis, map);
                        String a6 = m8466a(a5);
                        i8 = i8;
                        if (a6 != null) {
                            i8 = i8;
                            if (!"application/smil".equals(a6)) {
                                i8 = i8;
                                if (!"text/plain".equals(a6)) {
                                    i8 = 0;
                                }
                            }
                        }
                        i9++;
                    }
                } else {
                    i2 = 1;
                }
                contentValues.put("text_only", Integer.valueOf(i2));
                if (C14017g4.m2804t()) {
                    contentValues.put("sub_id", Integer.valueOf(i));
                } else {
                    C12151d.m7012a(-1, i);
                }
                if (z) {
                    C11689c.m8600a(this.f26281a, this.f26282b, uri, contentValues, null, null);
                    uri2 = uri;
                } else {
                    uri2 = C11689c.m8601a(this.f26281a, this.f26282b, uri, contentValues);
                    if (uri2 != null) {
                        j = ContentUris.parseId(uri2);
                    } else {
                        throw new C11688b("persist() failed: return null.");
                    }
                }
                ContentValues contentValues2 = new ContentValues(1);
                contentValues2.put("mid", Long.valueOf(j));
                C11689c.m8600a(this.f26281a, this.f26282b, Uri.parse("content://mms/" + currentTimeMillis + "/part"), contentValues2, null, null);
                if (!z) {
                    uri2 = Uri.parse(uri + "/" + j);
                }
                for (int i10 : f26267e) {
                    C11694e[] eVarArr2 = sparseArray.get(i10);
                    if (eVarArr2 != null) {
                        m8475a(j, i10, eVarArr2);
                    }
                }
                return uri2;
            }
            throw new C11688b("Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp.");
        }
        throw new C11688b("Uri may not be null.");
    }

    /* renamed from: a */
    public Uri m8465a(C11708o oVar, long j, Map<Uri, InputStream> map) throws C11688b {
        Uri parse = Uri.parse("content://mms/" + j + "/part");
        ContentValues contentValues = new ContentValues(8);
        int a = oVar.m8499a();
        if (a != 0) {
            contentValues.put("chset", Integer.valueOf(a));
        }
        String a2 = m8466a(oVar);
        byte[] g = oVar.m8485g();
        if (a2 != null) {
            String str = a2;
            if ("image/jpg".equals(a2)) {
                str = "image/jpeg";
            }
            String str2 = str;
            if ("text/plain".equals(str)) {
                str2 = str;
                if (g != null) {
                    String e = new C11694e(a, g).m8586e();
                    str2 = str;
                    if (e != null) {
                        str2 = str;
                        if (e.startsWith("BEGIN:VCARD")) {
                            oVar.m8488e("text/x-vCard".getBytes());
                            str2 = "text/x-vCard";
                            if (C12153d0.m6992a("PduPersister", 3)) {
                                C12153d0.m6991a("PduPersister", "PduPersister.persistPart part: " + parse + " contentType: text/x-vCard changing to vcard");
                                str2 = "text/x-vCard";
                            }
                        }
                    }
                }
            }
            contentValues.put("ct", str2);
            if ("application/smil".equals(str2)) {
                contentValues.put("seq", (Integer) (-1));
            }
            m8464a(oVar, contentValues);
            Uri uri = null;
            try {
                uri = C11689c.m8601a(this.f26281a, this.f26282b, parse, contentValues);
            } catch (IllegalStateException e2) {
                C12153d0.m6986b("PduPersister", "SqliteWrapper.insert threw: ", e2);
            }
            if (uri != null) {
                m8463a(oVar, uri, str2, map);
                oVar.m8497a(uri);
                return uri;
            }
            throw new C11688b("Failed to persist part, return null.");
        }
        throw new C11688b("MIME type of the part must be set.");
    }

    /* renamed from: a */
    public final C11695f m8479a(int i, C11706m mVar, C11699j jVar) throws C11688b {
        switch (i) {
            case 128:
                return new C11715v(mVar, jVar);
            case 129:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
                throw new C11688b("Unsupported PDU type: " + Integer.toHexString(i));
            case 130:
                return new C11697h(mVar);
            case 131:
                return new C11698i(mVar);
            case 132:
                return new C11713t(mVar, jVar);
            case 133:
                return new C11690a(mVar);
            case 134:
                return new C11693d(mVar);
            case 135:
                return new C11712s(mVar);
            case 136:
                return new C11711r(mVar);
            default:
                throw new C11688b("Unrecognized PDU type: " + Integer.toHexString(i));
        }
    }

    /* renamed from: a */
    public C11695f m8468a(Uri uri) throws C11688b {
        try {
            synchronized (f26266d) {
                if (f26266d.m8430a(uri)) {
                    try {
                        f26266d.wait();
                    } catch (InterruptedException e) {
                        Log.e("PduPersister", "load: ", e);
                    }
                }
                C11722e a = f26266d.m8439a((C11721d) uri);
                if (a != null) {
                    C11695f b = a.m8419b();
                    synchronized (f26266d) {
                        f26266d.m8428a(uri, false);
                        f26266d.notifyAll();
                    }
                    return b;
                }
                f26266d.m8428a(uri, true);
                Cursor a2 = C11689c.m8598a(this.f26281a, this.f26282b, uri, f26268f, null, null, null);
                C11706m mVar = new C11706m();
                long parseId = ContentUris.parseId(uri);
                if (a2 != null && a2.getCount() == 1 && a2.moveToFirst()) {
                    int i = a2.getInt(1);
                    m8469a(a2, mVar);
                    if (a2 != null) {
                        a2.close();
                    }
                    if (parseId != -1) {
                        m8474a(parseId, mVar);
                        int d = mVar.m8523d(140);
                        C11695f a3 = m8479a(d, mVar, m8476a(parseId, d));
                        synchronized (f26266d) {
                            if (a3 != null) {
                                C11722e a4 = f26266d.m8439a((C11721d) uri);
                                C12151d.m7006a((Object) a4, "Pdu exists for " + uri);
                                f26266d.m8429a(uri, new C11722e(a3, i, -1L));
                            }
                            f26266d.m8428a(uri, false);
                            f26266d.notifyAll();
                        }
                        return a3;
                    }
                    throw new C11688b("Error! ID of the message: -1.");
                }
                if (a2 != null) {
                    a2.close();
                }
                synchronized (f26266d) {
                    f26266d.m8428a(uri, false);
                    f26266d.notifyAll();
                }
                return null;
            }
        } catch (Throwable th) {
            synchronized (f26266d) {
                f26266d.m8428a(uri, false);
                f26266d.notifyAll();
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final C11699j m8476a(long j, int i) throws C11688b {
        C11708o[] a;
        C11699j jVar = new C11699j();
        if ((i == 132 || i == 128) && (a = m8477a(j)) != null) {
            for (C11708o oVar : a) {
                jVar.m8566a(oVar);
            }
        }
        return jVar;
    }

    /* renamed from: a */
    public final void m8478a(int i, HashSet<String> hashSet, SparseArray<C11694e[]> sparseArray) {
        C11694e[] eVarArr = sparseArray.get(i);
        if (eVarArr != null) {
            for (C11694e eVar : eVarArr) {
                if (eVar != null) {
                    String e = eVar.m8586e();
                    if (!hashSet.contains(e)) {
                        hashSet.add(e);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8475a(long j, int i, C11694e[] eVarArr) {
        ContentValues contentValues = new ContentValues(3);
        for (C11694e eVar : eVarArr) {
            contentValues.clear();
            contentValues.put("address", m8460a(eVar.m8585f()));
            contentValues.put(MmsBlockLogRealmObject.ADDRESS_CHARSET, Integer.valueOf(eVar.m8587d()));
            contentValues.put("type", Integer.valueOf(i));
            C11689c.m8601a(this.f26281a, this.f26282b, Uri.parse("content://mms/" + j + "/addr"), contentValues);
        }
    }

    /* renamed from: a */
    public final void m8474a(long j, C11706m mVar) {
        Context context = this.f26281a;
        ContentResolver contentResolver = this.f26282b;
        Cursor a = C11689c.m8598a(context, contentResolver, Uri.parse("content://mms/" + j + "/addr"), new String[]{"address", MmsBlockLogRealmObject.ADDRESS_CHARSET, "type"}, null, null, null);
        if (a != null) {
            while (a.moveToNext()) {
                try {
                    String string = a.getString(0);
                    if (!TextUtils.isEmpty(string)) {
                        int i = a.getInt(2);
                        if (!(i == 129 || i == 130)) {
                            if (i == 137) {
                                mVar.m8525b(new C11694e(a.getInt(1), m8462a(string)), i);
                            } else if (i != 151) {
                                Log.e("PduPersister", "Unknown address type: " + i);
                            }
                        }
                        mVar.m8529a(new C11694e(a.getInt(1), m8462a(string)), i);
                    }
                } finally {
                    a.close();
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8470a(Cursor cursor, int i, C11706m mVar, int i2) {
        String string = cursor.getString(i);
        if (string != null && string.length() > 0) {
            mVar.m8525b(new C11694e(cursor.getInt(f26271i.get(i2)), m8462a(string)), i2);
        }
    }

    /* renamed from: a */
    public final void m8469a(Cursor cursor, C11706m mVar) throws C11687a {
        int size = f26272j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            m8470a(cursor, f26272j.valueAt(size), mVar, f26272j.keyAt(size));
        }
        int size2 = f26273k.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            m8456d(cursor, f26273k.valueAt(size2), mVar, f26273k.keyAt(size2));
        }
        int size3 = f26274l.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            m8457c(cursor, f26274l.valueAt(size3), mVar, f26274l.keyAt(size3));
        }
        int size4 = f26275m.size();
        while (true) {
            size4--;
            if (size4 >= 0) {
                m8458b(cursor, f26275m.valueAt(size4), mVar, f26275m.keyAt(size4));
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 26, insn: 0x06d2: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:188:0x06c8 */
    /* JADX WARN: Not initialized variable reg: 26, insn: 0x093f: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:250:0x0935 */
    /* JADX WARN: Not initialized variable reg: 27, insn: 0x0935: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:250:0x0935 */
    /* JADX WARN: Not initialized variable reg: 30, insn: 0x06e4: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r30 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:190:0x06da */
    /* JADX WARN: Not initialized variable reg: 31, insn: 0x06c0: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r31 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:186:0x06b6 */
    /* JADX WARN: Not initialized variable reg: 32, insn: 0x06ce: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r32 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:188:0x06c8 */
    /* JADX WARN: Not initialized variable reg: 33, insn: 0x06ae: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r33 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:184:0x06a4 */
    /* JADX WARN: Not initialized variable reg: 34, insn: 0x06aa: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r34 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:184:0x06a4 */
    /* JADX WARN: Not initialized variable reg: 35, insn: 0x06bc: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r35 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:186:0x06b6 */
    /* JADX WARN: Not initialized variable reg: 36, insn: 0x06e0: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r36 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:190:0x06da */
    /* JADX WARN: Removed duplicated region for block: B:212:0x07bb  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x09b1  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x078b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0947 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x097d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x075a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:294:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013b  */
    /* JADX WARN: Type inference failed for: r0v576, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r25v26 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v34, types: [java.lang.Object, java.io.InputStream] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8463a(p459j.p460a.p474c0.p480d.p481d.C11708o r8, android.net.Uri r9, java.lang.String r10, java.util.Map<android.net.Uri, java.io.InputStream> r11) throws p459j.p460a.p474c0.p480d.C11688b {
        /*
            Method dump skipped, instructions count: 2568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p480d.p481d.C11709p.m8463a(j.a.c0.d.d.o, android.net.Uri, java.lang.String, java.util.Map):void");
    }

    /* renamed from: a */
    public final void m8461a(HashSet<String> hashSet, SparseArray<C11694e[]> sparseArray, String str) {
        C11694e[] eVarArr = sparseArray.get(151);
        C11694e[] eVarArr2 = sparseArray.get(130);
        ArrayList arrayList = new ArrayList();
        int length = eVarArr != null ? eVarArr.length : 0;
        int length2 = eVarArr2 != null ? eVarArr2.length : 0;
        if (length + length2 > 1) {
            if (length > 0) {
                for (C11694e eVar : eVarArr) {
                    if (eVar != null) {
                        arrayList.add(eVar.m8586e());
                    }
                }
            }
            if (length2 > 0) {
                for (C11694e eVar2 : eVarArr2) {
                    if (eVar2 != null) {
                        arrayList.add(eVar2.m8586e());
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (TextUtils.isEmpty(str) || !PhoneNumberUtils.compare(str2, str)) {
                if (!hashSet.contains(str2)) {
                    hashSet.add(str2);
                }
            }
        }
    }

    /* renamed from: a */
    public final byte[] m8471a(Cursor cursor, int i) {
        if (!cursor.isNull(i)) {
            return m8462a(cursor.getString(i));
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x022a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p459j.p460a.p474c0.p480d.p481d.C11708o[] m8477a(long r9) throws p459j.p460a.p474c0.p480d.C11688b {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p480d.p481d.C11709p.m8477a(long):j.a.c0.d.d.o[]");
    }

    /* renamed from: b */
    public final Integer m8459b(Cursor cursor, int i) {
        if (!cursor.isNull(i)) {
            return Integer.valueOf(cursor.getInt(i));
        }
        return null;
    }

    /* renamed from: b */
    public final void m8458b(Cursor cursor, int i, C11706m mVar, int i2) {
        if (!cursor.isNull(i)) {
            mVar.m8530a(cursor.getLong(i), i2);
        }
    }

    /* renamed from: c */
    public final void m8457c(Cursor cursor, int i, C11706m mVar, int i2) throws C11687a {
        if (!cursor.isNull(i)) {
            mVar.m8531a(cursor.getInt(i), i2);
        }
    }

    /* renamed from: d */
    public final void m8456d(Cursor cursor, int i, C11706m mVar, int i2) {
        String string = cursor.getString(i);
        if (string != null) {
            mVar.m8528a(m8462a(string), i2);
        }
    }
}
