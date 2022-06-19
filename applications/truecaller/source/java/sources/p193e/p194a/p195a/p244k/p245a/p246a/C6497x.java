package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentResolver;
import android.database.Cursor;
import com.huawei.hms.actions.SearchIntents;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14020n;
import p193e.p194a.p751f4.p762g.C14030t;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.x */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/x.class */
public final class C6497x implements AbstractC6496w {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC6233m>> f21517a;

    /* renamed from: b */
    public final AbstractC14028r f21518b;

    /* renamed from: c */
    public final ContentResolver f21519c;

    /* renamed from: d */
    public final C20592g f21520d;

    /* renamed from: e */
    public final AbstractC19223c0 f21521e;

    /* renamed from: f */
    public final AbstractC6489q f21522f;

    /* renamed from: g */
    public final AbstractC6392i0 f21523g;

    @Inject
    public C6497x(a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC14028r abstractC14028r, ContentResolver contentResolver, C20592g c20592g, AbstractC19223c0 abstractC19223c0, AbstractC6489q abstractC6489q, AbstractC6392i0 abstractC6392i0) {
        l.e(aVar, "messagesStorage");
        l.e(abstractC14028r, "searchManager");
        l.e(contentResolver, "contentResolver");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6489q, "imGroupUtil");
        l.e(abstractC6392i0, "messageSettings");
        this.f21517a = aVar;
        this.f21518b = abstractC14028r;
        this.f21519c = contentResolver;
        this.f21520d = c20592g;
        this.f21521e = abstractC19223c0;
        this.f21522f = abstractC6489q;
        this.f21523g = abstractC6392i0;
    }

    /* renamed from: u */
    public static /* synthetic */ void m30831u(C6497x c6497x, C6446b0 c6446b0, String str, boolean z, boolean z2, int i) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            z2 = true;
        }
        c6497x.m30832t(c6446b0, str, z, z2);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: a */
    public void mo30851a(C6446b0 c6446b0, String str) {
        l.e(c6446b0, "info");
        l.e(str, "title");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupTitleChangedByYou, str), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: b */
    public void mo30850b(C6446b0 c6446b0, String str, int i, String str2) {
        l.e(c6446b0, "info");
        l.e(str, "title");
        l.e(str2, "inviterPeerId");
        m30831u(this, c6446b0, l.a(str2, this.f21523g.mo31078f()) ? m30829w(C2752R.string.StatusMessageGroupCreatedByYou, str) : (i & 2) != 0 ? m30829w(C2752R.string.StatusMessageInvitedYou, m30830v(str2)) : m30829w(C2752R.string.StatusMessageYouJoined, new Object[0]), false, false, 4);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: c */
    public void mo30849c(C6446b0 c6446b0, String str, String str2) {
        l.e(c6446b0, "info");
        l.e(str, "senderPeerId");
        l.e(str2, "title");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupTitleChangedBy, m30830v(str), str2), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: d */
    public void mo30848d(C6446b0 c6446b0, String str) {
        l.e(c6446b0, "info");
        l.e(str, "imPeerId");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageParticipantRemovedByYou, m30830v(str)), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: e */
    public void mo30847e(C6446b0 c6446b0, String str, List<String> list) {
        l.e(c6446b0, "info");
        l.e(list, "imPeerIds");
        for (String str2 : list) {
            String m8622g = C22128a.m8622g(new StringBuilder(), c6446b0.f21415d, '-', str2);
            String str3 = c6446b0.f21412a;
            long j = c6446b0.f21413b;
            long j2 = c6446b0.f21414c;
            boolean z = c6446b0.f21416e;
            l.e(str3, "groupId");
            l.e(m8622g, "rawId");
            C6446b0 c6446b02 = new C6446b0(str3, j, j2, m8622g, z);
            if (l.a(str2, this.f21523g.mo31078f())) {
                if (str != null) {
                    m30831u(this, c6446b02, m30829w(C2752R.string.StatusMessageYouWereRemovedBy, m30830v(str)), false, false, 4);
                }
            } else if (str == null || l.a(str, str2)) {
                m30831u(this, c6446b02, m30829w(C2752R.string.StatusMessageLeftGroup, m30830v(str2)), false, false, 12);
            } else {
                m30831u(this, c6446b02, m30829w(C2752R.string.StatusMessageParticipantRemovedBy, m30830v(str2), m30830v(str)), false, false, 12);
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: f */
    public void mo30846f(C6446b0 c6446b0, int i, String str, String str2) {
        l.e(c6446b0, "info");
        l.e(str2, "imPeerId");
        String mo30872c = this.f21522f.mo30872c(i);
        if (mo30872c != null) {
            m30831u(this, c6446b0, str == null ? m30829w(C2752R.string.StatusMessageRoleChanged, m30830v(str2), mo30872c) : ((i & 8) == 0 || !l.a(str, str2)) ? m30829w(C2752R.string.StatusMessageRoleChangedBy, m30830v(str), m30830v(str2), mo30872c) : m30829w(C2752R.string.StatusMessageJoined, m30830v(str2)), false, false, 12);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: g */
    public void mo30845g(C6446b0 c6446b0, String str) {
        l.e(c6446b0, "info");
        l.e(str, "senderPeerId");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupAvatarChangedBy, m30830v(str)), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: h */
    public void mo30844h(C6446b0 c6446b0, String str) {
        l.e(c6446b0, "info");
        l.e(str, "senderPeerId");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupInviteKeyChangedBy, m30830v(str)), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: i */
    public void mo30843i(C6446b0 c6446b0) {
        l.e(c6446b0, "info");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageHistoryDeleted, new Object[0]), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: j */
    public void mo30842j(C6446b0 c6446b0, String str, String str2) {
        l.e(c6446b0, "info");
        l.e(str, "senderPeerId");
        l.e(str2, "title");
        m30832t(c6446b0, m30829w(C2752R.string.StatusMessageGroupCreatedBy, str2, m30830v(str)), false, false);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: k */
    public void mo30841k(C6446b0 c6446b0, int i, String str) {
        l.e(c6446b0, "info");
        l.e(str, "imPeerId");
        String mo30872c = this.f21522f.mo30872c(i);
        if (mo30872c != null) {
            m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageRoleChangedByYou, m30830v(str), mo30872c), false, false, 12);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: l */
    public void mo30840l(C6446b0 c6446b0, String str, List<String> list) {
        l.e(c6446b0, "info");
        l.e(str, "senderPeerId");
        l.e(list, "imPeerIds");
        if (this.f21520d.m10993L().isEnabled() && i.l(list, this.f21523g.mo31078f()) && l.a(this.f21523g.mo31078f(), str)) {
            m30832t(c6446b0, m30829w(C2752R.string.StatusMessageInvitedYouByInviteLink, new Object[0]), true, false);
        } else if (i.l(list, this.f21523g.mo31078f())) {
            m30832t(c6446b0, m30829w(C2752R.string.StatusMessageInvitedYou, m30830v(str)), false, false);
        } else if (this.f21520d.m10993L().isEnabled() && list.size() == 1 && l.a((String) i.B(list), str)) {
            m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageInvitedBySingleInviteLink, m30830v(str)), false, false, 12);
        } else if (list.size() == 1) {
            m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageInvitedBySingle, m30830v((String) i.B(list)), m30830v(str)), false, false, 12);
        } else if (list.size() <= 1) {
        } else {
            int size = list.size() - 1;
            String mo13759k = this.f21521e.mo13759k(C2752R.plurals.StatusMessageInvitedByMultiple, size, Arrays.copyOf(new Object[]{m30830v((String) i.B(list)), Integer.valueOf(size), m30830v(str)}, 3));
            l.d(mo13759k, "resourceProvider.getQuan…s, quantity, *formatArgs)");
            m30831u(this, c6446b0, mo13759k, false, false, 12);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: m */
    public void mo30839m(C6446b0 c6446b0) {
        l.e(c6446b0, "info");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupWasDeleted, new Object[0]), false, false, 4);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: n */
    public void mo30838n(C6446b0 c6446b0) {
        l.e(c6446b0, "info");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupInviteKeyChangedByYou, new Object[0]), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: o */
    public void mo30837o(C6446b0 c6446b0, List<String> list) {
        l.e(c6446b0, "info");
        l.e(list, "imPeerIds");
        if (list.size() == 1) {
            m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageInvitedByYouSingle, m30830v((String) i.B(list))), false, false, 12);
        } else if (list.size() <= 1) {
        } else {
            int size = list.size() - 1;
            String mo13759k = this.f21521e.mo13759k(C2752R.plurals.StatusMessageInvitedByYouMultiple, size, Arrays.copyOf(new Object[]{m30830v((String) i.B(list)), Integer.valueOf(size)}, 2));
            l.d(mo13759k, "resourceProvider.getQuan…s, quantity, *formatArgs)");
            m30831u(this, c6446b0, mo13759k, false, false, 12);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: p */
    public void mo30836p(C6446b0 c6446b0) {
        l.e(c6446b0, "info");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageYouLeft, new Object[0]), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: q */
    public void mo30835q(C6446b0 c6446b0) {
        l.e(c6446b0, "info");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageYouJoined, new Object[0]), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: r */
    public void mo30834r(C6446b0 c6446b0, String str) {
        l.e(c6446b0, "info");
        l.e(str, "title");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupCreatedByYou, str), false, false, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6496w
    /* renamed from: s */
    public void mo30833s(C6446b0 c6446b0) {
        l.e(c6446b0, "info");
        m30831u(this, c6446b0, m30829w(C2752R.string.StatusMessageGroupAvatarChangedByYou, new Object[0]), false, false, 12);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30832t(p193e.p194a.p195a.p244k.p245a.p246a.C6446b0 r27, java.lang.String r28, boolean r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.p246a.C6497x.m30832t(e.a.a.k.a.a.b0, java.lang.String, boolean, boolean):void");
    }

    /* renamed from: v */
    public final String m30830v(String str) {
        String string;
        Cursor query = this.f21519c.query(C8582g0.m28334G(str), new String[]{AnalyticsConstants.NAME}, null, null, null);
        if (query != null) {
            try {
                string = query.moveToFirst() ? query.getString(0) : null;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            string = null;
        }
        if (string == null) {
            try {
                AbstractC14028r abstractC14028r = this.f21518b;
                UUID randomUUID = UUID.randomUUID();
                l.d(randomUUID, "UUID.randomUUID()");
                C14020n mo20840a = abstractC14028r.mo20840a(randomUUID, "imConversation");
                String str2 = '*' + str;
                Objects.requireNonNull(mo20840a);
                l.e(str2, SearchIntents.EXTRA_QUERY);
                mo20840a.f40538a = str2;
                mo20840a.f40539b = 23;
                C14030t m20847a = mo20840a.m20847a();
                string = null;
                if (m20847a != null) {
                    Contact m20837a = m20847a.m20837a();
                    string = null;
                    if (m20837a != null) {
                        string = m20837a.m35491w();
                    }
                }
            } catch (IOException e) {
                string = null;
            }
        }
        if (string == null) {
            string = this.f21522f.mo30871d(str);
        }
        return string;
    }

    /* renamed from: w */
    public final String m30829w(int i, Object... objArr) {
        String mo13768b = this.f21521e.mo13768b(i, Arrays.copyOf(objArr, objArr.length));
        l.d(mo13768b, "resourceProvider.getString(res, *formatArgs)");
        return mo13768b;
    }
}
