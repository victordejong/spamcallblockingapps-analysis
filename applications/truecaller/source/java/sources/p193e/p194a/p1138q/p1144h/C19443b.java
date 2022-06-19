package p193e.p194a.p1138q.p1144h;

import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel;
import com.truecaller.contactfeedback.repo.SortType;
import com.truecaller.data.entity.Contact;
import java.util.List;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.q.h.b */
/* loaded from: classes5-dex2jar.jar:e/a/q/h/b.class */
public final class C19443b {

    /* renamed from: a */
    public final Contact f53994a;

    /* renamed from: b */
    public final SortType f53995b;

    /* renamed from: c */
    public final AbstractC27012l0<List<CommentFeedbackModel>> f53996c;

    public C19443b(Contact contact, SortType sortType, AbstractC27012l0<List<CommentFeedbackModel>> abstractC27012l0) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(sortType, "sortType");
        l.e(abstractC27012l0, "observer");
        this.f53994a = contact;
        this.f53995b = sortType;
        this.f53996c = abstractC27012l0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19443b)) {
                return false;
            }
            C19443b c19443b = (C19443b) obj;
            return l.a(this.f53994a, c19443b.f53994a) && l.a(this.f53995b, c19443b.f53995b) && l.a(this.f53996c, c19443b.f53996c);
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f53994a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        SortType sortType = this.f53995b;
        int hashCode2 = sortType != null ? sortType.hashCode() : 0;
        AbstractC27012l0<List<CommentFeedbackModel>> abstractC27012l0 = this.f53996c;
        if (abstractC27012l0 != null) {
            i = abstractC27012l0.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CommentsObserver(contact=");
        m8728C.append(this.f53994a);
        m8728C.append(", sortType=");
        m8728C.append(this.f53995b);
        m8728C.append(", observer=");
        m8728C.append(this.f53996c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
