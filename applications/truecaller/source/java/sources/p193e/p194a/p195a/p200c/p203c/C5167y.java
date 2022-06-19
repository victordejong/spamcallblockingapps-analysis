package p193e.p194a.p195a.p200c.p203c;

import android.net.Uri;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.c.y */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/y.class */
public final class C5167y extends m implements l<LinkMetaData, s> {

    /* renamed from: b */
    public final /* synthetic */ AbstractC5166x f17656b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5167y(AbstractC5166x abstractC5166x) {
        super(1);
        this.f17656b = abstractC5166x;
    }

    /* renamed from: d */
    public Object m33706d(Object obj) {
        LinkMetaData linkMetaData = (LinkMetaData) obj;
        if (linkMetaData != null) {
            String str = linkMetaData.f13537d;
            this.f17656b.mo33713P4(linkMetaData.f13535b, linkMetaData.f13536c, str != null ? Uri.parse(str) : null);
        } else {
            this.f17656b.mo33709n1();
        }
        return s.a;
    }
}
