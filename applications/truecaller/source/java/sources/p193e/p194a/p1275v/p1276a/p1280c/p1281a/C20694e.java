package p193e.p194a.p1275v.p1276a.p1280c.p1281a;

import com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel;
import com.truecaller.details_view.p162ui.comments.widget.CommentViewModel;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1276a.C20847s;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.c.a.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/e.class */
public final class C20694e extends m implements l<List<? extends CommentFeedbackModel>, s> {

    /* renamed from: b */
    public final /* synthetic */ C20695f f58274b;

    /* renamed from: c */
    public final /* synthetic */ C20847s f58275c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20694e(C20695f c20695f, C20847s c20847s) {
        super(1);
        this.f58274b = c20695f;
        this.f58275c = c20847s;
    }

    /* renamed from: d */
    public Object m10835d(Object obj) {
        List<CommentFeedbackModel> list = (List) obj;
        s1.z.c.l.e(list, "it");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (CommentFeedbackModel commentFeedbackModel : list) {
            arrayList.add(this.f58274b.f58281i.m10832a(commentFeedbackModel));
        }
        if (arrayList.isEmpty()) {
            AbstractC20692c abstractC20692c = (AbstractC20692c) this.f58274b.f57683a;
            if (abstractC20692c != null) {
                abstractC20692c.mo10845B0();
            }
        } else {
            C20592g c20592g = this.f58274b.f58282j;
            if (c20592g.f57893b6.m10941a(c20592g, C20592g.f57695p6[371]).isEnabled()) {
                AbstractC20692c abstractC20692c2 = (AbstractC20692c) this.f58274b.f57683a;
                if (abstractC20692c2 != null) {
                    abstractC20692c2.mo10843M0(this.f58275c.f58578a);
                }
            } else {
                AbstractC20692c abstractC20692c3 = (AbstractC20692c) this.f58274b.f57683a;
                if (abstractC20692c3 != null) {
                    abstractC20692c3.mo10839w0();
                }
            }
            C20695f c20695f = this.f58274b;
            AbstractC20692c abstractC20692c4 = (AbstractC20692c) c20695f.f57683a;
            if (abstractC20692c4 != null) {
                abstractC20692c4.mo10840v(arrayList.size());
            }
            AbstractC20692c abstractC20692c5 = (AbstractC20692c) c20695f.f57683a;
            if (abstractC20692c5 != null) {
                abstractC20692c5.mo10842X((CommentViewModel) arrayList.get(0), (CommentViewModel) i.G(arrayList, 1), (CommentViewModel) i.G(arrayList, 2));
            }
            if (arrayList.size() > 3) {
                AbstractC20692c abstractC20692c6 = (AbstractC20692c) this.f58274b.f57683a;
                if (abstractC20692c6 != null) {
                    abstractC20692c6.mo10844E0(this.f58275c.f58578a);
                }
            } else {
                AbstractC20692c abstractC20692c7 = (AbstractC20692c) this.f58274b.f57683a;
                if (abstractC20692c7 != null) {
                    abstractC20692c7.mo10841m0();
                }
            }
            this.f58274b.f58276d.m28195a();
        }
        return s.a;
    }
}
