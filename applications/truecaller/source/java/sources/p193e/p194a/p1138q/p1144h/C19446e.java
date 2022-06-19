package p193e.p194a.p1138q.p1144h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel;
import com.truecaller.contactfeedback.presentation.model.VoteStatus;
import com.truecaller.contactfeedback.repo.SortType;
import com.truecaller.contactfeedback.workers.VoteCommentWorker;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1138q.p1142f.AbstractC19393a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.g;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
/* renamed from: e.a.q.h.e */
/* loaded from: classes5-dex2jar.jar:e/a/q/h/e.class */
public final class C19446e implements AbstractC19444c {

    /* renamed from: a */
    public final Map<String, List<CommentFeedbackModel>> f53998a = new HashMap();

    /* renamed from: b */
    public final Map<String, List<AbstractC27012l0<List<CommentFeedbackModel>>>> f53999b = new HashMap();

    /* renamed from: c */
    public final g f54000c = C25225a.m3978P1(new C19445d(this));

    /* renamed from: d */
    public final AbstractC19393a f54001d;

    /* renamed from: e */
    public final AbstractC8541a f54002e;

    /* renamed from: f */
    public final C20592g f54003f;

    /* renamed from: g */
    public final C19442a f54004g;

    /* renamed from: h */
    public final C19455h f54005h;

    /* renamed from: e.a.q.h.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q/h/e$a.class */
    public static final class C19447a<T> implements AbstractC27012l0<List<? extends CommentFeedbackModel>> {

        /* renamed from: a */
        public final /* synthetic */ l f54006a;

        public C19447a(l lVar) {
            this.f54006a = lVar;
        }

        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(List<? extends CommentFeedbackModel> list) {
            List<? extends CommentFeedbackModel> list2 = list;
            l lVar = this.f54006a;
            s1.z.c.l.d(list2, "it");
            lVar.d(list2);
        }
    }

    @e(c = "com.truecaller.contactfeedback.repo.CommentsRepositoryImpl", f = "CommentsRepository.kt", l = {75}, m = "fetchAndStoreComments")
    /* renamed from: e.a.q.h.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q/h/e$b.class */
    public static final class C19448b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54007d;

        /* renamed from: e */
        public int f54008e;

        /* renamed from: g */
        public Object f54010g;

        /* renamed from: h */
        public Object f54011h;

        /* renamed from: i */
        public Object f54012i;

        /* renamed from: j */
        public Object f54013j;

        /* renamed from: k */
        public Object f54014k;

        /* renamed from: l */
        public Object f54015l;

        /* renamed from: m */
        public Object f54016m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19448b(d dVar) {
            super(dVar);
            C19446e.this = r4;
        }

        /* renamed from: s */
        public final Object m13316s(Object obj) {
            this.f54007d = obj;
            this.f54008e |= Integer.MIN_VALUE;
            return C19446e.this.m13320g(null, null, this);
        }
    }

    @e(c = "com.truecaller.contactfeedback.repo.CommentsRepositoryImpl", f = "CommentsRepository.kt", l = {65}, m = "observeComments")
    /* renamed from: e.a.q.h.e$c */
    /* loaded from: classes5-dex2jar.jar:e/a/q/h/e$c.class */
    public static final class C19449c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54017d;

        /* renamed from: e */
        public int f54018e;

        /* renamed from: g */
        public Object f54020g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19449c(d dVar) {
            super(dVar);
            C19446e.this = r4;
        }

        /* renamed from: s */
        public final Object m13315s(Object obj) {
            this.f54017d = obj;
            this.f54018e |= Integer.MIN_VALUE;
            return C19446e.this.mo13324c(null, this);
        }
    }

    @Inject
    public C19446e(AbstractC19393a abstractC19393a, AbstractC8541a abstractC8541a, C20592g c20592g, C19442a c19442a, C19455h c19455h) {
        s1.z.c.l.e(abstractC19393a, "commentFeedbackGrpcApiManager");
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(c19442a, "mapper");
        s1.z.c.l.e(c19455h, "voteCommentDelegate");
        this.f54001d = abstractC19393a;
        this.f54002e = abstractC8541a;
        this.f54003f = c20592g;
        this.f54004g = c19442a;
        this.f54005h = c19455h;
    }

    @Override // p193e.p194a.p1138q.p1144h.AbstractC19444c
    /* renamed from: a */
    public void mo13326a(Contact contact, String str) {
        Object obj;
        CommentFeedbackModel commentFeedbackModel;
        int i;
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(str, "commentId");
        SortType[] values = SortType.values();
        for (int i2 = 0; i2 < 3; i2++) {
            String m13321f = m13321f(contact, values[i2]);
            List<CommentFeedbackModel> list = this.f53998a.get(m13321f);
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (s1.z.c.l.a(((CommentFeedbackModel) obj).getId(), str)) {
                        break;
                    }
                }
                CommentFeedbackModel commentFeedbackModel2 = (CommentFeedbackModel) obj;
                if (commentFeedbackModel2 != null) {
                    if (commentFeedbackModel2.getVoteStatus().ordinal() != 0) {
                        C19455h c19455h = this.f54005h;
                        String phoneNumber = commentFeedbackModel2.getPhoneNumber();
                        String id = commentFeedbackModel2.getId();
                        Objects.requireNonNull(c19455h);
                        s1.z.c.l.e(phoneNumber, "number");
                        s1.z.c.l.e(id, "commentId");
                        Context context = c19455h.f54040a;
                        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
                        s1.z.c.l.e(phoneNumber, "number");
                        s1.z.c.l.e(id, "commentId");
                        HashMap hashMap = new HashMap();
                        hashMap.put("key_phone_number", phoneNumber);
                        hashMap.put("key_comment_id", id);
                        hashMap.put("key_vote_type", "value_up_vote");
                        C26829f c26829f = new C26829f(hashMap);
                        C26829f.m1300g(c26829f);
                        s1.z.c.l.d(c26829f, "Data.Builder()\n         …\n                .build()");
                        String m8543z2 = C22128a.m8543z2(VoteCommentWorker.class.getName(), id);
                        C26702l m1431n = C26702l.m1431n(context);
                        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
                        C26842r.C26843a c26843a = new C26842r.C26843a(VoteCommentWorker.class);
                        c26843a.f75127c.f74906e = c26829f;
                        C26825d.C26826a c26826a = new C26825d.C26826a();
                        c26826a.f75068c = EnumC26841q.CONNECTED;
                        c26843a.f75127c.f74911j = new C26825d(c26826a);
                        C26842r m1272b = c26843a.m1272b();
                        s1.z.c.l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
                        m1431n.m1279i(m8543z2, enumC26832h, m1272b);
                        boolean z = true;
                        if (commentFeedbackModel2.getVoteStatus() == VoteStatus.DOWNVOTED) {
                            Integer valueOf = Integer.valueOf(commentFeedbackModel2.getDownVotes() - 1);
                            if (valueOf.intValue() < 0) {
                                z = false;
                            }
                            Integer num = null;
                            if (z) {
                                num = valueOf;
                            }
                            i = num != null ? num.intValue() : 0;
                        } else {
                            i = commentFeedbackModel2.getDownVotes();
                        }
                        commentFeedbackModel = CommentFeedbackModel.copy$default(commentFeedbackModel2, null, null, null, null, null, false, null, null, commentFeedbackModel2.getUpVotes() + 1, i, VoteStatus.UPVOTED, 255, null);
                    } else {
                        commentFeedbackModel = m13318i(commentFeedbackModel2);
                    }
                    m13317j(commentFeedbackModel, list);
                    m13319h(m13321f);
                }
            }
        }
    }

    @Override // p193e.p194a.p1138q.p1144h.AbstractC19444c
    /* renamed from: b */
    public void mo13325b(C19443b c19443b) {
        s1.z.c.l.e(c19443b, "observer");
        List<AbstractC27012l0<List<CommentFeedbackModel>>> list = this.f53999b.get(m13321f(c19443b.f53994a, c19443b.f53995b));
        if (list != null) {
            list.remove(c19443b.f53996c);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    @Override // p193e.p194a.p1138q.p1144h.AbstractC19444c
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo13324c(p193e.p194a.p1138q.p1144h.C19443b r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1144h.C19446e.mo13324c(e.a.q.h.b, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1138q.p1144h.AbstractC19444c
    /* renamed from: d */
    public C19443b mo13323d(Contact contact, SortType sortType, l<? super List<CommentFeedbackModel>, s> lVar) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(sortType, "sortType");
        s1.z.c.l.e(lVar, "callback");
        if (sortType.ordinal() == 2) {
            C20592g c20592g = this.f54003f;
            sortType = c20592g.f57860X2.m10941a(c20592g, C20592g.f57695p6[205]).isEnabled() ? SortType.BY_SCORE : SortType.BY_TIME;
        }
        return new C19443b(contact, sortType, new C19447a(lVar));
    }

    @Override // p193e.p194a.p1138q.p1144h.AbstractC19444c
    /* renamed from: e */
    public void mo13322e(Contact contact, String str) {
        Object obj;
        CommentFeedbackModel commentFeedbackModel;
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(str, "commentId");
        SortType[] values = SortType.values();
        for (int i = 0; i < 3; i++) {
            String m13321f = m13321f(contact, values[i]);
            List<CommentFeedbackModel> list = this.f53998a.get(m13321f);
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (s1.z.c.l.a(((CommentFeedbackModel) obj).getId(), str)) {
                        break;
                    }
                }
                CommentFeedbackModel commentFeedbackModel2 = (CommentFeedbackModel) obj;
                if (commentFeedbackModel2 != null) {
                    if (commentFeedbackModel2.getVoteStatus().ordinal() != 1) {
                        C19455h c19455h = this.f54005h;
                        String phoneNumber = commentFeedbackModel2.getPhoneNumber();
                        String id = commentFeedbackModel2.getId();
                        Objects.requireNonNull(c19455h);
                        s1.z.c.l.e(phoneNumber, "number");
                        s1.z.c.l.e(id, "commentId");
                        Context context = c19455h.f54040a;
                        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
                        s1.z.c.l.e(phoneNumber, "number");
                        s1.z.c.l.e(id, "commentId");
                        HashMap hashMap = new HashMap();
                        hashMap.put("key_phone_number", phoneNumber);
                        hashMap.put("key_comment_id", id);
                        hashMap.put("key_vote_type", "value_down_vote");
                        C26829f c26829f = new C26829f(hashMap);
                        C26829f.m1300g(c26829f);
                        s1.z.c.l.d(c26829f, "Data.Builder()\n         …\n                .build()");
                        String m8543z2 = C22128a.m8543z2(VoteCommentWorker.class.getName(), id);
                        C26702l m1431n = C26702l.m1431n(context);
                        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
                        C26842r.C26843a c26843a = new C26842r.C26843a(VoteCommentWorker.class);
                        c26843a.f75127c.f74906e = c26829f;
                        C26825d.C26826a c26826a = new C26825d.C26826a();
                        c26826a.f75068c = EnumC26841q.CONNECTED;
                        c26843a.f75127c.f74911j = new C26825d(c26826a);
                        C26842r m1272b = c26843a.m1272b();
                        s1.z.c.l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
                        m1431n.m1279i(m8543z2, enumC26832h, m1272b);
                        commentFeedbackModel = CommentFeedbackModel.copy$default(commentFeedbackModel2, null, null, null, null, null, false, null, null, commentFeedbackModel2.getVoteStatus() == VoteStatus.UPVOTED ? Math.max(0, commentFeedbackModel2.getUpVotes() - 1) : commentFeedbackModel2.getUpVotes(), commentFeedbackModel2.getDownVotes() + 1, VoteStatus.DOWNVOTED, 255, null);
                    } else {
                        commentFeedbackModel = m13318i(commentFeedbackModel2);
                    }
                    m13317j(commentFeedbackModel, list);
                    m13319h(m13321f);
                }
            }
        }
    }

    /* renamed from: f */
    public final String m13321f(Contact contact, SortType sortType) {
        List<Number> m35557M = contact.m35557M();
        s1.z.c.l.d(m35557M, "contact.numbers");
        return i.O(m35557M, (CharSequence) null, (CharSequence) null, sortType.name(), 0, (CharSequence) null, (l) null, 59);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x039d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x01fe -> B:36:0x0210). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m13320g(com.truecaller.data.entity.Contact r17, com.truecaller.contactfeedback.repo.SortType r18, s1.w.d<? super java.util.List<com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel>> r19) {
        /*
            Method dump skipped, instructions count: 956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1144h.C19446e.m13320g(com.truecaller.data.entity.Contact, com.truecaller.contactfeedback.repo.SortType, s1.w.d):java.lang.Object");
    }

    /* renamed from: h */
    public final void m13319h(String str) {
        List<AbstractC27012l0<List<CommentFeedbackModel>>> list = this.f53999b.get(str);
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                AbstractC27012l0 abstractC27012l0 = (AbstractC27012l0) it.next();
                List<CommentFeedbackModel> list2 = this.f53998a.get(str);
                if (list2 != null) {
                    abstractC27012l0.onChanged(list2);
                }
            }
        }
    }

    /* renamed from: i */
    public final CommentFeedbackModel m13318i(CommentFeedbackModel commentFeedbackModel) {
        C19455h c19455h = this.f54005h;
        String phoneNumber = commentFeedbackModel.getPhoneNumber();
        String id = commentFeedbackModel.getId();
        Objects.requireNonNull(c19455h);
        s1.z.c.l.e(phoneNumber, "number");
        s1.z.c.l.e(id, "commentId");
        Context context = c19455h.f54040a;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(phoneNumber, "number");
        s1.z.c.l.e(id, "commentId");
        HashMap hashMap = new HashMap();
        hashMap.put("key_phone_number", phoneNumber);
        hashMap.put("key_comment_id", id);
        hashMap.put("key_vote_type", "value_remove_vote");
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        s1.z.c.l.d(c26829f, "Data.Builder()\n         …\n                .build()");
        String m8543z2 = C22128a.m8543z2(VoteCommentWorker.class.getName(), id);
        C26702l m1431n = C26702l.m1431n(context);
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(VoteCommentWorker.class);
        c26843a.f75127c.f74906e = c26829f;
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        C26842r m1272b = c26843a.m1272b();
        s1.z.c.l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        m1431n.m1279i(m8543z2, enumC26832h, m1272b);
        int ordinal = commentFeedbackModel.getVoteStatus().ordinal();
        if (ordinal == 0) {
            commentFeedbackModel = CommentFeedbackModel.copy$default(commentFeedbackModel, null, null, null, null, null, false, null, null, Math.max(0, commentFeedbackModel.getUpVotes() - 1), 0, VoteStatus.NOT_SELECTED, 767, null);
        } else if (ordinal == 1) {
            commentFeedbackModel = CommentFeedbackModel.copy$default(commentFeedbackModel, null, null, null, null, null, false, null, null, 0, Math.max(0, commentFeedbackModel.getDownVotes() - 1), VoteStatus.NOT_SELECTED, 511, null);
        } else if (ordinal != 2) {
            throw new s1.i();
        }
        return commentFeedbackModel;
    }

    /* renamed from: j */
    public final void m13317j(CommentFeedbackModel commentFeedbackModel, List<CommentFeedbackModel> list) {
        Iterator<CommentFeedbackModel> it = list.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (s1.z.c.l.a(it.next().getId(), commentFeedbackModel.getId())) {
                break;
            } else {
                i++;
            }
        }
        Integer valueOf = Integer.valueOf(i);
        boolean z = false;
        if (valueOf.intValue() != -1) {
            z = true;
        }
        if (!z) {
            valueOf = null;
        }
        if (valueOf != null) {
            list.set(valueOf.intValue(), commentFeedbackModel);
        }
    }
}
