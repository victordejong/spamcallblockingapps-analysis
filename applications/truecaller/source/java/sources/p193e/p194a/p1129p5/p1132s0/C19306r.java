package p193e.p194a.p1129p5.p1132s0;

import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.r */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/r.class */
public final class C19306r extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ C19307s f53737a;

    /* renamed from: b */
    public final /* synthetic */ CharacterStyle f53738b;

    public C19306r(C19307s c19307s, CharacterStyle characterStyle) {
        this.f53737a = c19307s;
        this.f53738b = characterStyle;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, ViewAction.VIEW);
        s1.z.b.l lVar = this.f53737a.f53739b;
        String url = ((URLSpan) this.f53738b).getURL();
        l.d(url, "style.url");
        lVar.d(url);
    }
}
