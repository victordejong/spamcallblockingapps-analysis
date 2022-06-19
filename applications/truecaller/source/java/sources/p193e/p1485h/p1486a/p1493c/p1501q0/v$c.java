package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.os.Bundle;
import android.view.View;
import com.clevertap.android.sdk.gif.GifImageView;
/* renamed from: e.h.a.c.q0.v$c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/v$c.class */
public class v$c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ v f63228a;

    public v$c(v vVar) {
        this.f63228a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f63228a.PA((Bundle) null);
        GifImageView gifImageView = this.f63228a.k;
        if (gifImageView != null) {
            gifImageView.m42078d();
        }
        this.f63228a.getActivity().finish();
    }
}
