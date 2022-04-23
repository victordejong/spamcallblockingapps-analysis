package p459j.p460a.p541n0;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.ContactRealmModule;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import io.realm.Case;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmQuery;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p531k0.C12845a;
import p459j.p460a.p560q0.C13385e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14088n0;
import p459j.p460a.p582w0.C14090n2;
import p459j.p460a.p582w0.C14094o;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14170t2;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15025q;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\u001a\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u0017\u001a\u00020\u0006H\u0007J\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0015H\u0007J\u0016\u0010\u001c\u001a\u00020\u00102\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0007J\u0010\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/realm/ContactRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "dropContactTable", "", "getContactData", "", "Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "searchKey", "getContactMaxId", "getContactObjectByE164", "e164", "getDbFile", "Ljava/io/File;", "insertOrUpdateContactData", "contactRealmObject", "contactRealmObjects", "syncContact", "context", "Landroid/content/Context;", "syncContactAsync", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.c */
/* loaded from: classes3-dex2jar.jar:j/a/n0/c.class */
public final class C13048c {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29498a;

    /* renamed from: c */
    public static final C13048c f29500c = new C13048c();

    /* renamed from: b */
    public static final AbstractC14974f f29499b = C14975g.m662a(C13049a.f29501a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$a.class */
    public static final class C13049a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13049a f29501a = new C13049a();

        /* renamed from: j.a.n0.c$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/c$a$a.class */
        public static final class C13050a implements RealmMigration {

            /* renamed from: a */
            public static final C13050a f29502a = new C13050a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13049a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name(CallAction.CONTACT).schemaVersion(1L).modules(new ContactRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13050a.f29502a).build();
        }
    }

    /* renamed from: j.a.n0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$b.class */
    public static final class C13051b extends AbstractC15150l implements AbstractC15118l<Realm, List<ContactRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String f29503a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13051b(String str) {
            super(1);
            this.f29503a = str;
        }

        /* renamed from: a */
        public final List<ContactRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(ContactRealmObject.class);
            String str = this.f29503a;
            RealmQuery realmQuery = where;
            if (str != null) {
                realmQuery = where.contains("name", str, Case.INSENSITIVE).m10371or().contains("e164", this.f29503a, Case.INSENSITIVE).m10371or().contains("number", this.f29503a, Case.INSENSITIVE);
            }
            return realm.copyFromRealm(realmQuery.findAll());
        }
    }

    /* renamed from: j.a.n0.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$c.class */
    public static final class C13052c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29504a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13052c(List list) {
            super(1);
            this.f29504a = list;
        }

        /* renamed from: a */
        public final void m4705a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(ContactRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            for (ContactRealmObject contactRealmObject : this.f29504a) {
                if (contactRealmObject.getId() < 0) {
                    contactRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29504a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4705a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$d.class */
    public static final class C13053d extends AbstractC15150l implements AbstractC15118l<C11507b.C11508a, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ StringBuilder f29505a;

        /* renamed from: b */
        public final /* synthetic */ StringBuilder f29506b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13053d(StringBuilder sb, StringBuilder sb2) {
            super(1);
            this.f29505a = sb;
            this.f29506b = sb2;
        }

        /* renamed from: a */
        public final void m4704a(C11507b.C11508a aVar) {
            C15149k.m377b(aVar, "editor");
            String sb = this.f29505a.toString();
            C15149k.m383a((Object) sb, "sb_index.toString()");
            aVar.m9448a("pref_section_indexs", sb);
            String sb2 = this.f29506b.toString();
            C15149k.m383a((Object) sb2, "sb_position.toString()");
            aVar.m9448a("pref_section_mapping_position", sb2);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(C11507b.C11508a aVar) {
            m4704a(aVar);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$e.class */
    public static final class C13054e<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ Context f29507a;

        public C13054e(Context context) {
            this.f29507a = context;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            C13048c.m4713a(this.f29507a);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.n0.c$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$f.class */
    public static final class C13055f<T> implements Action1<Void> {

        /* renamed from: a */
        public static final C13055f f29508a = new C13055f();

        /* renamed from: a */
        public final void call(Void r5) {
            C13915b3.m3055b("isContactsDoneNew", true);
            C14037j3.m2731a().mo2704a(new C14088n0());
        }
    }

    /* renamed from: j.a.n0.c$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/c$g.class */
    public static final class C13056g<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C13056g f29509a = new C13056g();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13048c.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29498a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<ContactRealmObject> m4712a(String str) {
        RealmConfiguration a = f29500c.m4714a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13051b(str));
    }

    /* renamed from: a */
    public static final void m4713a(Context context) {
        String str;
        NullPointerException e;
        C15149k.m377b(context, "context");
        if (C13878a3.m3205m()) {
            ArrayList<C12845a> arrayList = new ArrayList<>();
            String valueOf = String.valueOf(System.currentTimeMillis());
            HashSet hashSet = new HashSet();
            Cursor query = context.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"contact_id", "data1", CacheIndexRealmObject.DISPLAY_NAME, "data2", "data3"}, null, null, "display_name ASC");
            if (query != null) {
                try {
                    int count = query.getCount();
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("contact_id");
                    int columnIndex3 = query.getColumnIndex(CacheIndexRealmObject.DISPLAY_NAME);
                    int columnIndex4 = query.getColumnIndex("data2");
                    int columnIndex5 = query.getColumnIndex("data3");
                    for (int i = 0; i < count; i++) {
                        query.moveToPosition(i);
                        String string = query.getString(columnIndex);
                        long j = query.getInt(columnIndex2);
                        if (!C14217x3.m2160b(string)) {
                            String l = C14108o4.m2474l(string);
                            C15136c0 c0Var = C15136c0.f33133a;
                            Locale locale = Locale.US;
                            C15149k.m383a((Object) locale, "Locale.US");
                            Object[] objArr = new Object[2];
                            objArr[0] = l;
                            objArr[1] = Long.valueOf(j);
                            String format = String.format(locale, "%s_%d", Arrays.copyOf(objArr, objArr.length));
                            C15149k.m383a((Object) format, "java.lang.String.format(locale, format, *args)");
                            try {
                                if (!hashSet.contains(format)) {
                                    String string2 = query.getString(columnIndex3);
                                    int i2 = query.getInt(columnIndex4);
                                    String string3 = query.getString(columnIndex5);
                                    if (string2 != null) {
                                        try {
                                            if (!C15149k.m384a((Object) string2, (Object) "")) {
                                                hashSet.add(format);
                                                C12845a aVar = new C12845a();
                                                aVar.f29030a = j;
                                                aVar.f29032c = string2;
                                                aVar.f29031b = C14108o4.m2486c(string);
                                                aVar.f29037h = i2;
                                                aVar.f29038i = string3;
                                                String str2 = aVar.f29031b;
                                                C15149k.m383a((Object) str2, "c.number");
                                                int length = str2.length() - 1;
                                                int i3 = 0;
                                                boolean z = false;
                                                while (i3 <= length) {
                                                    boolean z2 = str2.charAt(!z ? i3 : length) <= ' ';
                                                    if (!z) {
                                                        if (!z2) {
                                                            z = true;
                                                        } else {
                                                            i3++;
                                                        }
                                                    } else if (z2) {
                                                        length--;
                                                    }
                                                }
                                                try {
                                                    if (str2.subSequence(i3, length + 1).toString().length() != 0) {
                                                        aVar.f29034e = C14108o4.m2486c(l);
                                                        aVar.f29033d = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j).toString();
                                                        String a = C14090n2.m2597a(C14170t2.m2309a(aVar.f29032c));
                                                        if (a == null) {
                                                            throw new C14986p("null cannot be cast to non-null type java.lang.String");
                                                            break;
                                                        }
                                                        String upperCase = a.toUpperCase();
                                                        C15149k.m383a((Object) upperCase, "(this as java.lang.String).toUpperCase()");
                                                        aVar.f29039j = upperCase;
                                                        arrayList.add(aVar);
                                                    }
                                                } catch (NullPointerException e2) {
                                                    e = e2;
                                                    C13973d4.m2952a(e);
                                                }
                                            } else {
                                                continue;
                                            }
                                        } catch (NullPointerException e3) {
                                            e = e3;
                                            hashSet = hashSet;
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } catch (NullPointerException e4) {
                                e = e4;
                            }
                        }
                    }
                    str = valueOf;
                    C14989s sVar = C14989s.f33022a;
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                str = valueOf;
            }
            m4708c();
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                int i5 = i4 + 1;
                int i6 = i5;
                while (i6 < arrayList.size()) {
                    int i7 = i6;
                    if (C15149k.m384a((Object) arrayList.get(i4).f29032c, (Object) arrayList.get(i6).f29032c)) {
                        if (C15149k.m384a((Object) arrayList.get(i4).f29034e, (Object) arrayList.get(i6).f29034e)) {
                            if (arrayList.get(i6).f29033d == null || !(arrayList.get(i6).f29033d == null || arrayList.get(i4).f29033d == null)) {
                                arrayList.remove(i6);
                            } else {
                                arrayList.remove(i4);
                            }
                            i7 = i6 - 1;
                        } else if (arrayList.get(i6).f29033d == null || !(arrayList.get(i6).f29033d == null || arrayList.get(i4).f29033d == null)) {
                            arrayList.get(i6).f29030a = arrayList.get(i4).f29030a;
                            i7 = i6;
                        } else {
                            arrayList.get(i4).f29030a = arrayList.get(i6).f29030a;
                            i7 = i6;
                        }
                    }
                    i6 = i7 + 1;
                }
                i4 = i5;
            }
            C15025q.m553c(arrayList);
            C13385e eVar = new C13385e();
            eVar.m4090a(arrayList);
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            int length2 = eVar.getSections().length;
            for (int i8 = 0; i8 < length2; i8++) {
                sb.append(eVar.getSections()[i8]);
                sb.append(" ");
                sb2.append(eVar.getPositionForSection(i8));
                sb2.append(" ");
            }
            if (sb.length() > 0) {
                sb.substring(0, sb.length() - 1);
            }
            C13978e.f31386a.m9457a(new C13053d(sb, sb2));
            C14094o.m2563b();
            ArrayList arrayList2 = new ArrayList();
            Iterator<C12845a> it = arrayList.iterator();
            while (it.hasNext()) {
                C12845a next = it.next();
                arrayList2.add(new ContactRealmObject(-1L, next.f29031b, next.f29030a, next.f29034e, next.f29032c, next.f29033d, null, null, next.f29036g != null ? arrayList.get(0).f29036g : str, next.f29035f != null ? arrayList.get(0).f29035f : str, 0));
                String str3 = next.f29031b;
                if (str3 != null) {
                    C14094o.m2565a(str3, String.valueOf(next.f29030a));
                    C14094o.m2560b(str3, next.f29032c);
                }
            }
            m4711a(arrayList2);
        }
    }

    /* renamed from: a */
    public static final void m4711a(List<? extends ContactRealmObject> list) {
        C15149k.m377b(list, "contactRealmObjects");
        RealmConfiguration a = f29500c.m4714a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13052c(list));
        C14037j3.m2731a().mo2704a(new C14088n0());
    }

    /* renamed from: b */
    public static final void m4710b() {
        Realm.compactRealm(f29500c.m4714a());
    }

    /* renamed from: b */
    public static final void m4709b(Context context) {
        C15149k.m377b(context, "context");
        Single.create(new C13054e(context)).subscribeOn(C14174u.m2299e()).observeOn(AndroidSchedulers.mainThread()).subscribe(C13055f.f29508a, C13056g.f29509a);
    }

    /* renamed from: c */
    public static final boolean m4708c() {
        RealmConfiguration a = f29500c.m4714a();
        C15149k.m383a((Object) a, "configuration");
        return C13193p.m4440a(ContactRealmObject.class, a);
    }

    /* renamed from: d */
    public static final File m4707d() {
        RealmConfiguration a = f29500c.m4714a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: a */
    public final RealmConfiguration m4714a() {
        AbstractC14974f fVar = f29499b;
        AbstractC14906i iVar = f29498a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
