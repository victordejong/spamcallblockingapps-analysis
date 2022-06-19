package p193e.p194a.p1365y.p1366a.p1367a;

import android.net.Uri;
import android.os.Bundle;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.QueuedFlash;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import s1.f0.h;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.y.a.a.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/a/d.class */
public final class C21473d implements AbstractC21472c {

    /* renamed from: a */
    public AbstractC21471b f59970a;

    /* renamed from: b */
    public Uri f59971b;

    /* renamed from: c */
    public String f59972c = "";

    /* renamed from: d */
    public String f59973d = "";

    /* renamed from: e */
    public QueuedFlash f59974e;

    @Override // p193e.p194a.p1365y.p1366a.p1367a.AbstractC21472c
    /* renamed from: a */
    public void mo9688a() {
        Payload payload;
        List list;
        String str;
        QueuedFlash queuedFlash = this.f59974e;
        if (queuedFlash == null || (payload = queuedFlash.f11996f) == null) {
            return;
        }
        String m35386a = payload.m35386a();
        l.d(m35386a, "payload.attachment");
        List f = new h(",").f(m35386a, 0);
        if (!f.isEmpty()) {
            ListIterator listIterator = f.listIterator(f.size());
            while (listIterator.hasPrevious()) {
                if (!(((String) listIterator.previous()).length() == 0)) {
                    list = i.K0(f, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        list = s.a;
        Object[] array = list.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        String m35384c = payload.m35384c();
        if (strArr.length == 2) {
            this.f59973d = strArr[0];
            str = strArr[1];
        } else {
            String m35386a2 = payload.m35386a();
            l.d(m35386a2, "payload.attachment");
            this.f59973d = m35386a2;
            str = "";
        }
        AbstractC21471b abstractC21471b = this.f59970a;
        if (abstractC21471b == null) {
            l.l("presenterView");
            throw null;
        }
        String str2 = this.f59973d;
        l.d(m35384c, "imageDescription");
        abstractC21471b.mo9689lg(str2, m35384c, str);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1367a.AbstractC21472c
    /* renamed from: b */
    public void mo9687b(AbstractC21471b abstractC21471b) {
        String string;
        l.e(abstractC21471b, "shareImageFragmentView");
        this.f59970a = abstractC21471b;
        Bundle arguments = ((C21469a) abstractC21471b).getArguments();
        if (arguments == null || (string = arguments.getString("share_image")) == null) {
            return;
        }
        Uri parse = Uri.parse(string);
        l.d(parse, "Uri.parse(bundle.getString(SHARE_IMAGE) ?: return)");
        this.f59971b = parse;
        String string2 = arguments.getString("share_text");
        if (string2 == null) {
            return;
        }
        this.f59972c = string2;
        this.f59974e = (QueuedFlash) arguments.getParcelable("flash");
    }

    @Override // p193e.p194a.p1365y.p1366a.p1367a.AbstractC21472c
    /* renamed from: c */
    public void mo9686c() {
        AbstractC21471b abstractC21471b = this.f59970a;
        if (abstractC21471b == null) {
            l.l("presenterView");
            throw null;
        }
        Uri uri = this.f59971b;
        if (uri == null) {
            l.l("imageUri");
            throw null;
        }
        abstractC21471b.mo9690eq(uri, this.f59972c);
        AbstractC21471b abstractC21471b2 = this.f59970a;
        if (abstractC21471b2 != null) {
            abstractC21471b2.mo9691V0();
        } else {
            l.l("presenterView");
            throw null;
        }
    }
}
