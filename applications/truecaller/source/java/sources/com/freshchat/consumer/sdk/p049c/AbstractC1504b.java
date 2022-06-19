package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.p049c.p050a.AbstractC1491c;
import com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h;
import com.freshchat.consumer.sdk.p049c.p050a.C1502n;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/b.class */
public abstract class AbstractC1504b {

    /* renamed from: eb */
    private static SQLiteDatabase f4108eb;
    private final Context context;

    /* renamed from: ec */
    private C1505a f4109ec;

    /* renamed from: com.freshchat.consumer.sdk.c.b$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/b$a.class */
    public class C1505a extends SQLiteOpenHelper {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1505a(Context context) {
            super(context, "freshchat.db", (SQLiteDatabase.CursorFactory) null, 8);
            AbstractC1504b.this = r7;
        }

        /* renamed from: a */
        private void m40783a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                for (String str : AbstractC1491c.m40802q(i4)) {
                    sQLiteDatabase.execSQL(str);
                }
                if (i == 1) {
                    StringBuilder m8728C = C22128a.m8728C("_status=");
                    m8728C.append(Csat.CSatStatus.NOT_RATED.asInt());
                    String sb = m8728C.toString();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("initiated_time", Long.valueOf(System.currentTimeMillis()));
                    sQLiteDatabase.update("custsat", contentValues, sb, null);
                    new C1511g(AbstractC1504b.this.context).m40731b(sQLiteDatabase);
                }
                i3 = i4;
                if (i4 == 5) {
                    new C1511g(AbstractC1504b.this.context).m40729c(sQLiteDatabase);
                    new C1509f(AbstractC1504b.this.context).m40753a(sQLiteDatabase);
                    i3 = i4;
                }
            }
        }

        /* renamed from: a */
        public void m40782a(SQLiteDatabase sQLiteDatabase, AbstractC1496h[] abstractC1496hArr) {
            m40781a(sQLiteDatabase, abstractC1496hArr, true);
        }

        /* renamed from: a */
        public void m40781a(SQLiteDatabase sQLiteDatabase, AbstractC1496h[] abstractC1496hArr, boolean z) {
            if (z) {
                sQLiteDatabase.beginTransaction();
            }
            try {
                try {
                    for (AbstractC1496h abstractC1496h : abstractC1496hArr) {
                        sQLiteDatabase.delete(abstractC1496h.mo40795cP(), null, null);
                    }
                    if (z) {
                        sQLiteDatabase.setTransactionSuccessful();
                    }
                    if (!z) {
                        return;
                    }
                } catch (Exception e) {
                    C1723q.m39823a(e);
                    if (!z) {
                        return;
                    }
                }
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                if (z) {
                    sQLiteDatabase.endTransaction();
                }
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            List<String> m40803m = AbstractC1491c.m40803m(8);
            for (int i = 0; i < m40803m.size(); i++) {
                m40803m.get(i);
                sQLiteDatabase.execSQL(m40803m.get(i));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!sQLiteDatabase.isReadOnly()) {
                sQLiteDatabase.execSQL("PRAGMA foreign_keys=true;");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            m40783a(sQLiteDatabase, i, i2);
        }
    }

    public AbstractC1504b(Context context) {
        this.context = context.getApplicationContext();
    }

    /* renamed from: a */
    public static void m40794a(SQLiteStatement sQLiteStatement) {
        C1608ad.m40316a(sQLiteStatement);
    }

    /* renamed from: b */
    public static boolean m40792b(Cursor cursor) {
        return cursor != null && cursor.moveToFirst();
    }

    /* renamed from: c */
    public static void m40791c(Cursor cursor) {
        C1608ad.m40316a(cursor);
    }

    /* renamed from: cr */
    private C1505a m40790cr() {
        if (this.f4109ec == null) {
            synchronized (AbstractC1504b.class) {
                try {
                    if (this.f4109ec == null) {
                        this.f4109ec = new C1505a(this.context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f4109ec;
    }

    /* renamed from: d */
    public static boolean m40787d(Cursor cursor) {
        return cursor != null && !cursor.isClosed();
    }

    /* renamed from: j */
    public static boolean m40785j(Cursor cursor) {
        return !m40792b(cursor);
    }

    /* renamed from: a */
    public abstract Map<String, Integer> mo40665a(Cursor cursor);

    /* renamed from: cs */
    public SQLiteDatabase m40789cs() {
        if (f4108eb == null) {
            synchronized (AbstractC1504b.class) {
                try {
                    if (f4108eb == null) {
                        f4108eb = m40790cr().getWritableDatabase();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4108eb;
    }

    /* renamed from: ct */
    public void m40788ct() {
        if (m40790cr() != null) {
            m40790cr().m40782a(m40789cs(), C1502n.f4105eq);
        }
    }

    /* renamed from: iQ */
    public void m40786iQ() {
        if (m40790cr() != null) {
            m40790cr().m40782a(m40789cs(), C1502n.f4107qY);
        }
    }

    /* renamed from: v */
    public void m40784v(boolean z) {
        if (m40790cr() != null) {
            m40790cr().m40781a(m40789cs(), C1502n.f4106er, z);
        }
    }
}
