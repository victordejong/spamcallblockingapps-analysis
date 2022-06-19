package p193e.p194a.p1011l.p1025p2;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.work.ListenableWorker;
import com.truecaller.api.services.presence.p139v1.models.Premium;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.data.PremiumScope;
import e.m.f.a.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p682e.C12864a2;
import s1.f0.v;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.l.p2.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/c.class */
public final class C17041c extends AbstractC21765k {

    /* renamed from: b */
    public final String f47800b = "ContactsPremiumStatusFetchWorkAction";

    /* renamed from: c */
    public final C17048d f47801c;

    @Inject
    public C17041c(C17048d c17048d) {
        l.e(c17048d, "contactsPremiumStatusManager");
        this.f47801c = c17048d;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        Collection<C17409e> mo11831c;
        ContentProviderOperation contentProviderOperation;
        C17048d c17048d = this.f47801c;
        ContentResolver contentResolver = c17048d.f47807b;
        Uri m15701a = C17891a1.C17899h.m15701a();
        C20592g c20592g = c17048d.f47809d;
        Cursor query = contentResolver.query(m15701a, new String[]{"DISTINCT(data1)"}, c20592g.f57747H1.m10941a(c20592g, C20592g.f57695p6[137]).isEnabled() ? "data_type = ? AND data8 = ?" : "data_type = ? AND data_phonebook_id NOT NULL AND data8 = ?", new String[]{String.valueOf(4), j.d.b.name()}, null);
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
                C25225a.m4016G(query, null);
                arrayList.size();
                if (!arrayList.isEmpty() && (mo11831c = c17048d.f47808c.mo11854a().mo16127e(arrayList).mo11831c()) != null) {
                    l.d(mo11831c, "mutableCollection");
                    mo11831c.size();
                    Uri m15709b = C17891a1.C17892a.m15709b();
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : mo11831c) {
                        Premium premium = ((C17409e) obj).f48762i;
                        if (C25225a.m3976Q(new Integer[]{1, 2}, premium != null ? Integer.valueOf(premium.getLevelValue()) : null)) {
                            arrayList2.add(obj);
                        }
                    }
                    C17095h c17095h = c17048d.f47811f;
                    Objects.requireNonNull(c17095h);
                    l.e(arrayList2, "updates");
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        Premium premium2 = ((C17409e) next).f48762i;
                        if (premium2 != null && 2 == premium2.getScopeValue()) {
                            arrayList3.add(next);
                        }
                    }
                    String string = c17095h.f47989e.getString("premiumAlreadyNotified");
                    List U = string != null ? v.U(string, new String[]{","}, false, 0, 6) : s.a;
                    List<C17409e> F0 = i.F0(arrayList3, new C17089g());
                    ArrayList arrayList4 = new ArrayList(C25225a.m4004J(F0, 10));
                    for (C17409e c17409e : F0) {
                        arrayList4.add(c17409e.f48754a);
                    }
                    String O = i.O(i.K0(i.G0(arrayList4, U), 10), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
                    if (!(!arrayList3.isEmpty())) {
                        O = null;
                    }
                    if (O != null) {
                        c17095h.f47989e.putString("premiumFriendUpgradedPhoneNumber", O);
                    }
                    C17119k c17119k = c17048d.f47812g;
                    Objects.requireNonNull(c17119k);
                    l.e(arrayList2, "updates");
                    c17119k.f48054c.mo16910N2(arrayList2.size());
                    l.e(arrayList2, "$this$shuffled");
                    List Z0 = i.Z0(arrayList2);
                    Collections.shuffle(Z0);
                    List<C17409e> K0 = i.K0(Z0, 10);
                    ArrayList arrayList5 = new ArrayList(C25225a.m4004J(K0, 10));
                    for (C17409e c17409e2 : K0) {
                        arrayList5.add(c17409e2.f48754a);
                    }
                    ArrayList arrayList6 = new ArrayList();
                    Iterator it2 = arrayList5.iterator();
                    while (it2.hasNext()) {
                        Object next2 = it2.next();
                        Contact contact = (Contact) c17119k.f48053b.mo17344c((String) next2).a;
                        if ((contact != null ? C12864a2.m22592B(contact, true) : null) != null) {
                            arrayList6.add(next2);
                        }
                    }
                    c17119k.f48054c.mo16907Q0(i.O(i.K0(i.f1(arrayList6, arrayList5), 3), c17119k.f48052a, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
                    ArrayList arrayList7 = new ArrayList(C25225a.m4004J(arrayList2, 10));
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        C17409e c17409e3 = (C17409e) it3.next();
                        Premium premium3 = c17409e3.f48762i;
                        if (premium3 != null) {
                            StringBuilder m8728C = C22128a.m8728C("====== handlePremiumStatusUpdates:: ");
                            m8728C.append(c17409e3.f48754a);
                            m8728C.append('-');
                            m8728C.append(premium3.getLevel());
                            m8728C.append('-');
                            m8728C.append(premium3.getScope());
                            m8728C.toString();
                            ContentProviderOperation.Builder withSelection = ContentProviderOperation.newUpdate(m15709b).withSelection("contact_default_number=?", new String[]{c17409e3.f48754a});
                            Contact.PremiumLevel fromRemote = Contact.PremiumLevel.fromRemote(premium3.getLevel().toString());
                            l.d(fromRemote, "PremiumLevel.fromRemote(premium.level.toString())");
                            ContentProviderOperation.Builder withValue = withSelection.withValue("contact_premium_level", fromRemote.getLevel());
                            PremiumScope fromRemote2 = PremiumScope.fromRemote(premium3.getScope().toString());
                            l.d(fromRemote2, "PremiumScope.fromRemote(premium.scope.toString())");
                            contentProviderOperation = withValue.withValue("contact_premium_scope", fromRemote2.getScope()).build();
                        } else {
                            contentProviderOperation = null;
                        }
                        arrayList7.add(contentProviderOperation);
                    }
                    ArrayList<ContentProviderOperation> arrayList8 = new ArrayList<>(arrayList7);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("contact_premium_level", Contact.PremiumLevel.NONE.getLevel());
                    contentValues.put("contact_premium_scope", PremiumScope.NONE.getScope());
                    try {
                        c17048d.f47807b.update(m15709b, contentValues, null, null);
                        l.d(m15709b, "contentUri");
                        String authority = m15709b.getAuthority();
                        if (authority != null) {
                            l.d(c17048d.f47807b.applyBatch(authority, arrayList8), "contentResolver.applyBatch(this, updateOps)");
                        }
                    } catch (Exception e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f47800b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0036, code lost:
        if (r0.f47810e.mo11313a("featureFriendsUpgraded_24757", false) != false) goto L6;
     */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9061c() {
        /*
            r5 = this;
            r0 = r5
            e.a.l.p2.d r0 = r0.f47801c
            r6 = r0
            r0 = r6
            e.a.u3.g r0 = r0.f47809d
            r7 = r0
            r0 = r7
            e.a.u3.g$a r0 = r0.f57740G1
            r1 = r7
            s1.a.l[] r2 = p193e.p194a.p1272u3.C20592g.f57695p6
            r3 = 136(0x88, float:1.9E-43)
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L39
            r0 = r9
            r8 = r0
            r0 = r6
            e.a.s4.a r0 = r0.f47810e
            java.lang.String r1 = "featureFriendsUpgraded_24757"
            r2 = 0
            boolean r0 = r0.mo11313a(r1, r2)
            if (r0 == 0) goto L59
        L39:
            r0 = r9
            r8 = r0
            r0 = r6
            e.a.o5.f0 r0 = r0.f47806a
            boolean r0 = r0.mo14245a()
            if (r0 == 0) goto L59
            r0 = r9
            r8 = r0
            r0 = r6
            e.a.o5.f0 r0 = r0.f47806a
            boolean r0 = r0.mo14233m()
            if (r0 == 0) goto L59
            r0 = 1
            r8 = r0
        L59:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17041c.mo9061c():boolean");
    }
}
