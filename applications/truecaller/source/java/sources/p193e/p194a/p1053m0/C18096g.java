package p193e.p194a.p1053m0;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Patterns;
import android.webkit.URLUtil;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Matcher;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
/* renamed from: e.a.m0.g */
/* loaded from: classes8-dex2jar.jar:e/a/m0/g.class */
public final class C18096g implements AbstractC18094f {

    /* renamed from: a */
    public final ContentResolver f51016a;

    /* renamed from: b */
    public final AbstractC8541a f51017b;

    @Inject
    public C18096g(Context context, AbstractC8541a abstractC8541a, @Named("features_registry") C20592g c20592g) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(c20592g, "featuresRegistry");
        this.f51017b = abstractC8541a;
        this.f51016a = context.getContentResolver();
    }

    @Override // p193e.p194a.p1053m0.AbstractC18094f
    /* renamed from: a */
    public void mo15493a(SQLiteDatabase sQLiteDatabase, long j, long j2, String str) {
        l.e(sQLiteDatabase, "db");
        l.e(str, "content");
        Set<String> m15490d = m15490d(str);
        if (m15490d.isEmpty()) {
            return;
        }
        String m13575X0 = C19291g.m13575X0(sQLiteDatabase, "msg_entities", "entity_info7", "message_id=? AND type LIKE 'application/vnd.truecaller.linkpreview%'", new String[]{String.valueOf(j)});
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : m15490d) {
            if (!l.a((String) obj, m13575X0)) {
                arrayList.add(obj);
            }
        }
        for (String str2 : arrayList) {
            sQLiteDatabase.insert("msg_links", null, m15491c(j, j2, str2));
        }
    }

    @Override // p193e.p194a.p1053m0.AbstractC18094f
    /* renamed from: b */
    public void mo15492b() {
        if (this.f51017b.getBoolean("messageLinksMigrated", true)) {
            return;
        }
        Cursor query = this.f51016a.query(C8582g0.m28296x(), new String[]{"_id", "message_id", "entity_info1"}, "type='text/plain'", null, null);
        if (query != null) {
            try {
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                while (query.moveToNext()) {
                    l.d(query, "it");
                    long m13632E0 = C19291g.m13632E0(query, "_id");
                    long m13632E02 = C19291g.m13632E0(query, "message_id");
                    String m13628F1 = C19291g.m13628F1(query, "entity_info1");
                    if (m13628F1 == null) {
                        m13628F1 = "";
                    }
                    for (String str : m15490d(m13628F1)) {
                        ContentProviderOperation build = ContentProviderOperation.newInsert(Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_links")).withValues(m15491c(m13632E02, m13632E0, str)).build();
                        l.d(build, "ContentProviderOperation…nk))\n            .build()");
                        arrayList.add(build);
                    }
                }
                if (!arrayList.isEmpty()) {
                    ContentResolver contentResolver = this.f51016a;
                    l.d(contentResolver, "contentResolver");
                    Uri uri = C17891a1.f50888a;
                    l.d("com.truecaller", "TruecallerContract.getAuthority()");
                    try {
                        l.d(contentResolver.applyBatch("com.truecaller", arrayList), "applyBatch(authority, operations)");
                    } catch (SQLiteException e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        this.f51017b.putBoolean("messageLinksMigrated", true);
    }

    /* renamed from: c */
    public final ContentValues m15491c(long j, long j2, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("message_id", Long.valueOf(j));
        contentValues.put("entity_id", Long.valueOf(j2));
        contentValues.put("link", str);
        return contentValues;
    }

    /* renamed from: d */
    public final Set<String> m15490d(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Matcher matcher = Patterns.WEB_URL.matcher(str);
        l.d(matcher, "android.util.Patterns.WEB_URL.matcher(this)");
        while (matcher.find()) {
            String group = matcher.group();
            if (!URLUtil.isValidUrl(group)) {
                group = null;
            }
            if (group != null) {
                linkedHashSet.add(group);
            }
        }
        return linkedHashSet;
    }
}
