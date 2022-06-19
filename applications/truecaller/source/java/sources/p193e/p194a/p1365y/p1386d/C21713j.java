package p193e.p194a.p1365y.p1386d;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.log.UnmutedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1788g.C26180f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1389g.C21746d;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.y.d.j */
/* loaded from: classes9-dex2jar.jar:e/a/y/d/j.class */
public final class C21713j implements AbstractC21712i {

    /* renamed from: a */
    public final C26180f<String, C21711h> f60492a = new C26180f<>(256);

    /* renamed from: b */
    public final C26180f<String, C21746d> f60493b = new C26180f<>(256);

    /* renamed from: c */
    public final Map<String, Set<AbstractC21721n>> f60494c = new LinkedHashMap();

    /* renamed from: d */
    public final Context f60495d;

    /* renamed from: e */
    public final f f60496e;

    /* renamed from: f */
    public final f f60497f;

    @e(c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$getHistory$1", f = "FlashPendingManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.d.j$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/j$a.class */
    public static final class C21714a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f60499f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21714a(String str, d dVar) {
            super(2, dVar);
            C21713j.this = r5;
            this.f60499f = str;
        }

        /* renamed from: i */
        public final d<s> m9166i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21714a(this.f60499f, dVar);
        }

        /* renamed from: k */
        public final Object m9165k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21714a c21714a = new C21714a(this.f60499f, dVar);
            s sVar = s.a;
            c21714a.m9164s(sVar);
            return sVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x009f, code lost:
            if (r10 != null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x00cc, code lost:
            if (r10 == null) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00cf, code lost:
            r10.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00d8, code lost:
            return s1.s.a;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9164s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1386d.C21713j.C21714a.m9164s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$saveHistoryAsync$1", f = "FlashPendingManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.d.j$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/j$b.class */
    public static final class C21715b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ C21711h f60501f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21715b(C21711h c21711h, d dVar) {
            super(2, dVar);
            C21713j.this = r5;
            this.f60501f = c21711h;
        }

        /* renamed from: i */
        public final d<s> m9163i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21715b(this.f60501f, dVar);
        }

        /* renamed from: k */
        public final Object m9162k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C21715b c21715b = new C21715b(this.f60501f, dVar);
            s sVar = s.a;
            c21715b.m9161s(sVar);
            return sVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x0116, code lost:
            if (0 == 0) goto L40;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9161s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 305
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1386d.C21713j.C21715b.m9161s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$updateFlashState$1", f = "FlashPendingManager.kt", l = {204}, m = "invokeSuspend")
    /* renamed from: e.a.y.d.j$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/d/j$c.class */
    public static final class C21716c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f60502e;

        /* renamed from: g */
        public final /* synthetic */ List f60504g;

        @e(c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$updateFlashState$1$4", f = "FlashPendingManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.y.d.j$c$a */
        /* loaded from: classes9-dex2jar.jar:e/a/y/d/j$c$a.class */
        public static final class C21717a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f60506f;

            /* renamed from: g */
            public final /* synthetic */ c0 f60507g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21717a(c0 c0Var, c0 c0Var2, d dVar) {
                super(2, dVar);
                C21716c.this = r5;
                this.f60506f = c0Var;
                this.f60507g = c0Var2;
            }

            /* renamed from: i */
            public final d<s> m9157i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C21717a(this.f60506f, this.f60507g, dVar);
            }

            /* renamed from: k */
            public final Object m9156k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C21717a c21717a = new C21717a(this.f60506f, this.f60507g, dVar);
                s sVar = s.a;
                c21717a.m9155s(sVar);
                return sVar;
            }

            /* renamed from: s */
            public final Object m9155s(Object obj) {
                Set<AbstractC21721n> set = u.a;
                C25225a.m3932a3(obj);
                Collection<String> collection = (Collection) this.f60506f.a;
                ArrayList arrayList = new ArrayList();
                for (String str : collection) {
                    Set<AbstractC21721n> set2 = C21713j.this.f60494c.get(str);
                    if (set2 == null) {
                        set2 = set;
                    }
                    s1.u.i.b(arrayList, set2);
                }
                for (AbstractC21721n abstractC21721n : s1.u.i.r(arrayList)) {
                    abstractC21721n.m9151a(false);
                }
                List<C21746d> list = (List) this.f60507g.a;
                ArrayList arrayList2 = new ArrayList();
                for (C21746d c21746d : list) {
                    String str2 = c21746d.f60561a;
                    if (str2 != null) {
                        arrayList2.add(str2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    Set<AbstractC21721n> set3 = C21713j.this.f60494c.get((String) it.next());
                    if (set3 == null) {
                        set3 = set;
                    }
                    s1.u.i.b(arrayList3, set3);
                }
                for (AbstractC21721n abstractC21721n2 : s1.u.i.r(arrayList3)) {
                    abstractC21721n2.m9151a(true);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21716c(List list, d dVar) {
            super(2, dVar);
            C21713j.this = r5;
            this.f60504g = list;
        }

        /* renamed from: i */
        public final d<s> m9160i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21716c(this.f60504g, dVar);
        }

        /* renamed from: k */
        public final Object m9159k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21716c(this.f60504g, dVar).m9158s(s.a);
        }

        /* renamed from: s */
        public final Object m9158s(Object obj) {
            ContentResolver contentResolver;
            Uri uri;
            Object[] array;
            a aVar = a.a;
            int i = this.f60502e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                List list = this.f60504g;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (Boolean.valueOf(((C21746d) obj2).f60563c).booleanValue()) {
                        arrayList.add(obj2);
                    }
                }
                List list2 = this.f60504g;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list2) {
                    if (Boolean.valueOf(!((C21746d) obj3).f60563c).booleanValue()) {
                        arrayList2.add(obj3);
                    }
                }
                c0 c0Var = new c0();
                c0Var.a = C21713j.m9168d(C21713j.this, arrayList2);
                C21713j c21713j = C21713j.this;
                Objects.requireNonNull(c21713j);
                ArrayList arrayList3 = new ArrayList();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    String str = ((C21746d) it.next()).f60561a;
                    if (str != null) {
                        arrayList3.add(str);
                    }
                }
                String m8618h = C22128a.m8618h(new StringBuilder(), C21700b.f60474c, " ( ? )");
                try {
                    contentResolver = c21713j.f60495d.getContentResolver();
                    uri = C21719l.f60510b;
                    array = arrayList3.toArray(new String[0]);
                } catch (Exception e) {
                    C10480a.m26061I1(new UnmutedException.C4147f("Failed to Query in Flash"));
                }
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                contentResolver.delete(uri, m8618h, (String[]) array);
                Collection m9168d = C21713j.m9168d(C21713j.this, arrayList);
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (Boolean.valueOf(s1.u.i.l(m9168d, ((C21746d) next).f60561a)).booleanValue()) {
                        arrayList4.add(next);
                    }
                }
                c0 c0Var2 = new c0();
                ArrayList arrayList5 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    Object next2 = it3.next();
                    if (Boolean.valueOf(!s1.u.i.l(m9168d, ((C21746d) next2).f60561a)).booleanValue()) {
                        arrayList5.add(next2);
                    }
                }
                c0Var2.a = arrayList5;
                ArrayList<ContentProviderOperation> arrayList6 = new ArrayList<>();
                for (C21746d c21746d : (List) c0Var2.a) {
                    String str2 = c21746d.f60561a;
                    if (str2 != null) {
                        C21713j.this.f60493b.put(str2, c21746d);
                    }
                    arrayList6.add(ContentProviderOperation.newInsert(C21719l.f60510b).withValues(c21746d.m9137a()).build());
                }
                Iterator it4 = arrayList4.iterator();
                while (it4.hasNext()) {
                    C21746d c21746d2 = (C21746d) it4.next();
                    String str3 = c21746d2.f60561a;
                    if (str3 != null) {
                        C21713j.this.f60493b.put(str3, c21746d2);
                    }
                    arrayList6.add(ContentProviderOperation.newUpdate(C21719l.f60510b).withSelection(C21700b.f60473b, new String[]{c21746d2.f60561a}).withValues(c21746d2.m9137a()).build());
                }
                Iterator it5 = arrayList2.iterator();
                while (it5.hasNext()) {
                    String str4 = ((C21746d) it5.next()).f60561a;
                    if (str4 != null) {
                        C21713j.this.f60493b.remove(str4);
                    }
                }
                try {
                    ContentResolver contentResolver2 = C21713j.this.f60495d.getContentResolver();
                    Uri uri2 = C21719l.f60509a;
                    l.d(contentResolver2.applyBatch("com.truecaller.flashsdk.provider", arrayList6), "managerContext.contentRe…tch(FLASH_AUTHORITY, ops)");
                } catch (Exception e2) {
                    C10480a.m26061I1(new UnmutedException.C4147f("Failed to Query in Flash"));
                }
                f fVar = C21713j.this.f60496e;
                C21717a c21717a = new C21717a(c0Var, c0Var2, null);
                this.f60502e = 1;
                if (s1.a.a.a.v0.f.d.a4(fVar, c21717a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    public C21713j(Context context, f fVar, f fVar2) {
        l.e(context, "managerContext");
        l.e(fVar, "uiContext");
        l.e(fVar2, "cpuContext");
        this.f60495d = context;
        this.f60496e = fVar;
        this.f60497f = fVar2;
        s1.a.a.a.v0.f.d.w2(h1.a, fVar2, (j0) null, new C21718k(this, null), 2, (Object) null);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public static final Collection m9168d(C21713j c21713j, List list) {
        Cursor cursor;
        Throwable th;
        String sb;
        ContentResolver contentResolver;
        Uri uri;
        Object[] array;
        Objects.requireNonNull(c21713j);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((C21746d) it.next()).f60561a;
            if (str != null) {
                arrayList2.add(str);
            }
        }
        try {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(C21700b.f60474c);
                sb2.append(" ( ? )");
                sb = sb2.toString();
                contentResolver = c21713j.f60495d.getContentResolver();
                uri = C21719l.f60511c;
                array = arrayList2.toArray(new String[0]);
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } catch (Exception e) {
            cursor = null;
        }
        if (array != null) {
            cursor = contentResolver.query(uri, null, sb, (String[]) array, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        try {
                            String string = cursor.getString(0);
                            l.d(string, "number");
                            arrayList.add(string);
                        } finally {
                            try {
                                throw th;
                            } catch (Throwable th3) {
                            }
                        }
                    } catch (Exception e2) {
                        Cursor cursor2 = cursor;
                        Cursor cursor3 = cursor;
                        C10480a.m26061I1(new UnmutedException.C4147f("Failed to Query in Flash"));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return arrayList;
                    } catch (Throwable th4) {
                        th = th4;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                C25225a.m4016G(cursor, null);
            }
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21712i
    /* renamed from: a */
    public void mo9171a(List<C21746d> list) {
        l.e(list, "flashStateList");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f60497f, (j0) null, new C21716c(list, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21712i
    /* renamed from: b */
    public C21746d mo9170b(String str) {
        l.e(str, "phoneWithoutPlus");
        C21746d c21746d = this.f60493b.get(str);
        if (c21746d == null) {
            c21746d = new C21746d(null, 0, false, 7);
        }
        return c21746d;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21712i
    /* renamed from: c */
    public void mo9169c(String str, long j, Flash flash) {
        l.e(str, AnalyticsConstants.PHONE);
        l.e(flash, "flash");
        C21711h c21711h = this.f60492a.get(str);
        if (c21711h != null) {
            l.d(c21711h, "historyCache.get(phone) ?: return");
            if (c21711h.f60487b == j) {
                return;
            }
            Payload payload = flash.f11996f;
            l.d(payload, "flash.payload");
            C21711h c21711h2 = new C21711h(str, j, null, null, payload.m35382e(), flash.m35393a());
            this.f60492a.put(c21711h2.f60486a, c21711h2);
            s1.a.a.a.v0.f.d.w2(h1.a, this.f60497f, (j0) null, new C21715b(c21711h2, null), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21712i
    /* renamed from: e */
    public C21711h mo9167e(String str) {
        l.e(str, AnalyticsConstants.PHONE);
        C21711h c21711h = this.f60492a.get(str);
        C21711h c21711h2 = c21711h;
        if (c21711h == null) {
            c21711h2 = new C21711h(str, 0L, null, null, null, null);
            this.f60492a.put(str, c21711h2);
            s1.a.a.a.v0.f.d.w2(h1.a, this.f60497f, (j0) null, new C21714a(str, null), 2, (Object) null);
        }
        return c21711h2;
    }
}
