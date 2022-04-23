package com.android.mms.transaction;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Telephony;
import com.google.android.mms.MmsException;
import com.google.android.mms.c.f;
import com.google.android.mms.c.p;
import com.google.android.mms.c.v;
import e.a.b.f.d;
import e.d.a.a.a;
/* renamed from: com.android.mms.transaction.e */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/e.class */
public class C0693e {

    /* renamed from: a */
    private final Context f3347a;

    /* renamed from: b */
    private final Uri f3348b;

    /* renamed from: c */
    private final long f3349c;

    public C0693e(Context context, Uri uri, long j) {
        this.f3347a = context;
        this.f3348b = uri;
        this.f3349c = j;
        if (uri == null) {
            throw new IllegalArgumentException("Null message URI.");
        }
    }

    /* renamed from: b */
    private void m11388b(v vVar) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f3347a);
        vVar.y(604800L);
        int i = 129;
        vVar.m(129);
        vVar.x(defaultSharedPreferences.getBoolean("delivery_reports", false) ? 128 : 129);
        if (defaultSharedPreferences.getBoolean("read_reports", defaultSharedPreferences.getBoolean("delivery_reports", false))) {
            i = 128;
        }
        vVar.B(i);
    }

    /* renamed from: a */
    public boolean m11389a(long j) {
        if (a.f("Mms", 2)) {
            e.a.b.d.a.a("sendMessage uri: " + this.f3348b, new Object[0]);
        }
        p h = p.h(this.f3347a);
        f j2 = h.j(this.f3348b);
        if (j2.a() == 128) {
            v vVar = (v) j2;
            m11388b(vVar);
            vVar.z("personal".getBytes());
            vVar.l(System.currentTimeMillis() / 1000);
            vVar.A(this.f3349c);
            h.z(this.f3348b, vVar);
            long parseId = ContentUris.parseId(this.f3348b);
            if (!this.f3348b.toString().startsWith(Telephony.Mms.Draft.CONTENT_URI.toString())) {
                ContentValues contentValues = new ContentValues(7);
                contentValues.put("proto_type", (Integer) 1);
                contentValues.put("msg_id", Long.valueOf(parseId));
                contentValues.put("msg_type", Integer.valueOf(j2.a()));
                contentValues.put("err_type", (Integer) 0);
                contentValues.put("err_code", (Integer) 0);
                contentValues.put("retry_index", (Integer) 0);
                contentValues.put("due_time", (Integer) 0);
                Context context = this.f3347a;
                com.google.android.mms.e.f.c(context, context.getContentResolver(), Telephony.MmsSms.PendingMessages.CONTENT_URI, contentValues);
            } else {
                h.n(this.f3348b, Telephony.Mms.Outbox.CONTENT_URI);
            }
            try {
                d.b(Long.valueOf(parseId), j);
                this.f3347a.startService(new Intent(this.f3347a, TransactionService.class));
                return true;
            } catch (Exception e) {
                throw new MmsException("transaction service not registered in manifest");
            }
        } else {
            throw new MmsException("Invalid message: " + j2.a());
        }
    }
}
