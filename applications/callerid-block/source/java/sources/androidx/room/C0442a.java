package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import d.r.a.c;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: androidx.room.a */
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public class C0442a {

    /* renamed from: a */
    public final c.c f2452a;

    /* renamed from: b */
    public final Context f2453b;

    /* renamed from: c */
    public final String f2454c;

    /* renamed from: d */
    public final RoomDatabase.C0441c f2455d;

    /* renamed from: e */
    public final List<RoomDatabase.AbstractC0440b> f2456e;

    /* renamed from: f */
    public final boolean f2457f;

    /* renamed from: g */
    public final RoomDatabase.JournalMode f2458g;

    /* renamed from: h */
    public final Executor f2459h;

    /* renamed from: i */
    public final Executor f2460i;

    /* renamed from: j */
    public final boolean f2461j;

    /* renamed from: k */
    public final boolean f2462k;

    /* renamed from: l */
    public final boolean f2463l;

    /* renamed from: m */
    private final Set<Integer> f2464m;

    public C0442a(Context context, String str, c.c cVar, RoomDatabase.C0441c c0441c, List<RoomDatabase.AbstractC0440b> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        this.f2452a = cVar;
        this.f2453b = context;
        this.f2454c = str;
        this.f2455d = c0441c;
        this.f2456e = list;
        this.f2457f = z;
        this.f2458g = journalMode;
        this.f2459h = executor;
        this.f2460i = executor2;
        this.f2461j = z2;
        this.f2462k = z3;
        this.f2463l = z4;
        this.f2464m = set;
    }

    /* renamed from: a */
    public boolean m12292a(int i, int i2) {
        boolean z;
        if (!(i > i2) || !this.f2463l) {
            if (this.f2462k) {
                Set<Integer> set = this.f2464m;
                z = true;
                if (set != null) {
                    if (!set.contains(Integer.valueOf(i))) {
                        z = true;
                    }
                }
                return z;
            }
            z = false;
            return z;
        }
        return false;
    }
}
