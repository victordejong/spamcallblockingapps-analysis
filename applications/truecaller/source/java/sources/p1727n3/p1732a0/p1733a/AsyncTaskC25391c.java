package p1727n3.p1732a0.p1733a;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import java.util.Objects;
import n3.y.e.h0;
import p1727n3.p1732a0.p1733a.C25385b;
/* renamed from: n3.a0.a.c */
/* loaded from: classes-dex2jar.jar:n3/a0/a/c.class */
public class AsyncTaskC25391c extends AsyncTask<Bitmap, Void, C25385b> {

    /* renamed from: a */
    public final /* synthetic */ C25385b.AbstractC25389d f70822a;

    /* renamed from: b */
    public final /* synthetic */ C25385b.C25387b f70823b;

    public AsyncTaskC25391c(C25385b.C25387b c25387b, C25385b.AbstractC25389d abstractC25389d) {
        this.f70823b = c25387b;
        this.f70822a = abstractC25389d;
    }

    @Override // android.os.AsyncTask
    public C25385b doInBackground(Bitmap[] bitmapArr) {
        C25385b c25385b;
        try {
            c25385b = this.f70823b.m3683a();
        } catch (Exception e) {
            c25385b = null;
        }
        return c25385b;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(C25385b c25385b) {
        h0 h0Var = this.f70822a;
        Objects.requireNonNull(h0Var);
        C25385b.C25390e c25390e = c25385b.f70806e;
        h0Var.a.i.setBackgroundColor(c25390e != null ? c25390e.f70816d : 0);
    }
}
