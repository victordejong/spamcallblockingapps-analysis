package p193e.p194a.p195a.p200c.p213l8;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.C26077m0;
import p1727n3.p1758e.p1775c.C26109c;
import p1727n3.p1868v.AbstractC26992b0;
/* renamed from: e.a.a.c.l8.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/a.class */
public final class RunnableC5487a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AttachmentPicker f18638a;

    /* renamed from: b */
    public final /* synthetic */ ListenableFuture f18639b;

    /* renamed from: c */
    public final /* synthetic */ C25898c1 f18640c;

    public RunnableC5487a(AttachmentPicker attachmentPicker, ListenableFuture listenableFuture, C25898c1 c25898c1) {
        this.f18638a = attachmentPicker;
        this.f18639b = listenableFuture;
        this.f18640c = c25898c1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C26109c c26109c = (C26109c) this.f18639b.get();
        try {
            c26109c.m2708c();
            if (!this.f18638a.isVisible()) {
                return;
            }
            Context context = this.f18638a.getContext();
            if (context == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            }
            c26109c.m2710a((AbstractC26992b0) context, C26077m0.f72753c, this.f18640c);
            this.f18638a.f13066w = c26109c;
        } catch (RuntimeException e) {
        }
    }
}
