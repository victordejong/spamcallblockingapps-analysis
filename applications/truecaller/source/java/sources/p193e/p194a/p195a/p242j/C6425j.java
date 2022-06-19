package p193e.p194a.p195a.p242j;

import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.mediamanager.AttachmentType;
import com.truecaller.messaging.mediamanager.SortOption;
import com.truecaller.messaging.mediaviewer.MediaPosition;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6147o;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.mediaviewer.MediaViewerPresenter$loadAttachments$1", f = "MediaViewerPresenter.kt", l = {170}, m = "invokeSuspend")
/* renamed from: e.a.a.j.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/j.class */
public final class C6425j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f21357e;

    /* renamed from: f */
    public final /* synthetic */ C6427l f21358f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6425j(C6427l c6427l, d dVar) {
        super(2, dVar);
        this.f21358f = c6427l;
    }

    /* renamed from: i */
    public final d<s> m31258i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6425j(this.f21358f, dVar);
    }

    /* renamed from: k */
    public final Object m31257k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6425j(this.f21358f, dVar).m31256s(s.a);
    }

    /* renamed from: s */
    public final Object m31256s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f21357e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C6427l c6427l = this.f21358f;
            AbstractC7004h abstractC7004h = c6427l.f21380w;
            long j = c6427l.f21374q.f13381b;
            Conversation conversation = c6427l.f21375r;
            int intValue = conversation != null ? new Integer(conversation.f13217s).intValue() : 1;
            Conversation conversation2 = this.f21358f.f21375r;
            int intValue2 = conversation2 != null ? new Integer(conversation2.f13218t).intValue() : 0;
            AttachmentType attachmentType = AttachmentType.MEDIA;
            SortOption sortOption = SortOption.DATE_DESC;
            this.f21357e = 1;
            Object m25975d0 = C10480a.m25975d0(abstractC7004h, j, intValue, intValue2, attachmentType, sortOption, "entity_status = 0", null, this, 64, null);
            obj = m25975d0;
            if (m25975d0 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC6147o abstractC6147o = (AbstractC6147o) obj;
        if (abstractC6147o != null) {
            if (((AbstractC6424i) this.f21358f.f57683a) == null) {
                abstractC6147o.close();
                return sVar;
            }
            while (abstractC6147o.moveToNext()) {
                long mo31743a0 = abstractC6147o.mo31743a0();
                C6427l c6427l2 = this.f21358f;
                if (mo31743a0 == c6427l2.f21373p.f13306a) {
                    c6427l2.f21369l = abstractC6147o;
                    if (abstractC6147o.moveToNext()) {
                        c6427l2.m31251Jj(MediaPosition.PREVIOUS, abstractC6147o.mo31742f2());
                    }
                    abstractC6147o.moveToPrevious();
                    C6427l c6427l3 = this.f21358f;
                    Objects.requireNonNull(c6427l3);
                    if (abstractC6147o.moveToPrevious()) {
                        c6427l3.m31251Jj(MediaPosition.NEXT, abstractC6147o.mo31742f2());
                    }
                    abstractC6147o.moveToNext();
                    return sVar;
                }
            }
            abstractC6147o.close();
        }
        return sVar;
    }
}
