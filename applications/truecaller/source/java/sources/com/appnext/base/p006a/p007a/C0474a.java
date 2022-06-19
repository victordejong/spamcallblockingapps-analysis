package com.appnext.base.p006a.p007a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.appnext.base.C0472a;
import com.appnext.base.p006a.C0473a;
import com.appnext.base.p010b.C0480a;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.appnext.base.a.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/a/a/a.class */
public class C0474a {

    /* renamed from: bS */
    private static C0474a f1662bS;

    /* renamed from: bT */
    private static C0473a f1663bT;

    /* renamed from: bR */
    private AtomicInteger f1664bR = new AtomicInteger(0);

    /* renamed from: bU */
    private SQLiteDatabase f1665bU;

    /* renamed from: com.appnext.base.a.a.a$1 */
    /* loaded from: classes-dex2jar.jar:com/appnext/base/a/a/a$1.class */
    public static final /* synthetic */ class C04751 {

        /* renamed from: bV */
        public static final /* synthetic */ int[] f1666bV;

        static {
            EnumC0476a.values();
            int[] iArr = new int[2];
            f1666bV = iArr;
            try {
                EnumC0476a enumC0476a = EnumC0476a.DatabaseOrDiskFull;
                iArr[1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = f1666bV;
                EnumC0476a enumC0476a2 = EnumC0476a.Global;
                iArr2[0] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.appnext.base.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/base/a/a/a$a.class */
    public enum EnumC0476a {
        Global,
        DatabaseOrDiskFull
    }

    private C0474a(Context context) {
        f1663bT = C0473a.m42576a(context);
    }

    /* renamed from: L */
    public static C0474a m42575L() {
        if (f1662bS == null) {
            synchronized (C0474a.class) {
                try {
                    if (f1662bS == null) {
                        f1662bS = new C0474a(C0480a.getContext().getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1662bS;
    }

    /* renamed from: a */
    public static void m42572a(EnumC0476a enumC0476a, Throwable th) {
        try {
            int i = C04751.f1666bV[enumC0476a.ordinal()];
            if (i != 1 && i != 2) {
                return;
            }
            C0472a.m42577a("DatabaseManager$onError", th);
        } catch (Throwable th2) {
        }
    }

    /* renamed from: M */
    public final SQLiteDatabase m42574M() {
        if (this.f1664bR.incrementAndGet() == 1) {
            this.f1665bU = f1663bT.getWritableDatabase();
        }
        return this.f1665bU;
    }

    /* renamed from: N */
    public final void m42573N() {
        try {
            if (this.f1664bR.decrementAndGet() != 0) {
                return;
            }
            this.f1665bU.close();
        } catch (Throwable th) {
        }
    }
}
