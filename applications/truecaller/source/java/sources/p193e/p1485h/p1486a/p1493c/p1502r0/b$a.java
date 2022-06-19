package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.os.Bundle;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import java.util.Objects;
import n3.r.a.l;
/* renamed from: e.h.a.c.r0.b$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/b$a.class */
public class b$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ i f63266a;

    /* renamed from: b */
    public final /* synthetic */ CTInboxMessage f63267b;

    /* renamed from: c */
    public final /* synthetic */ i f63268c;

    /* renamed from: d */
    public final /* synthetic */ int f63269d;

    /* renamed from: e */
    public final /* synthetic */ b f63270e;

    /* renamed from: e.h.a.c.r0.b$a$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/b$a$a.class */
    public class RunnableC22812a implements Runnable {
        public RunnableC22812a() {
            b$a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            b$a b_a;
            i iVar;
            b$a b_a2 = b$a.this;
            if (b_a2.f63267b.f2386p == EnumC22824k.CarouselImageMessage) {
                b bVar = b_a2.f63270e;
                int i = b.v;
                Objects.requireNonNull(bVar);
                throw null;
            }
            if (b_a2.f63270e.q.getVisibility() == 0 && (iVar = (b_a = b$a.this).f63268c) != null) {
                iVar.PA((Bundle) null, b_a.f63269d);
            }
            b$a.this.f63270e.q.setVisibility(8);
        }
    }

    public b$a(b bVar, i iVar, CTInboxMessage cTInboxMessage, i iVar2, int i) {
        this.f63270e = bVar;
        this.f63266a = iVar;
        this.f63267b = cTInboxMessage;
        this.f63268c = iVar2;
        this.f63269d = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        l activity = this.f63266a.getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new RunnableC22812a());
    }
}
