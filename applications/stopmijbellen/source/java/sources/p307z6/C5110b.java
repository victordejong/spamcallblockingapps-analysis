package p307z6;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Objects;
import p008a7.C0042i;
import p032c7.C0848a;
import p032c7.C0852e;
import p134j4.C3206g0;
/* renamed from: z6.b */
/* loaded from: classes-dex2jar.jar:z6/b.class */
public final class C5110b extends ContentObserver {

    /* renamed from: a */
    public final Context f15479a;

    /* renamed from: b */
    public final AudioManager f15480b;

    /* renamed from: c */
    public final C3206g0 f15481c;

    /* renamed from: d */
    public final AbstractC5109a f15482d;

    /* renamed from: e */
    public float f15483e;

    public C5110b(Handler handler, Context context, C3206g0 c3206g0, AbstractC5109a abstractC5109a) {
        super(handler);
        this.f15479a = context;
        this.f15480b = (AudioManager) context.getSystemService("audio");
        this.f15481c = c3206g0;
        this.f15482d = abstractC5109a;
    }

    /* renamed from: a */
    public final float m17a() {
        float f;
        int streamVolume = this.f15480b.getStreamVolume(3);
        int streamMaxVolume = this.f15480b.getStreamMaxVolume(3);
        Objects.requireNonNull(this.f15481c);
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            f = 0.0f;
        } else {
            float f2 = streamVolume / streamMaxVolume;
            f = f2;
            if (f2 > 1.0f) {
                f = 1.0f;
            }
        }
        return f;
    }

    /* renamed from: b */
    public final void m16b() {
        AbstractC5109a abstractC5109a = this.f15482d;
        float f = this.f15483e;
        C0852e c0852e = (C0852e) abstractC5109a;
        c0852e.f3142a = f;
        if (c0852e.f3146e == null) {
            c0852e.f3146e = C0848a.f3130c;
        }
        for (C0042i c0042i : c0852e.f3146e.m7279b()) {
            c0042i.f92e.m2861b(f);
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float m17a = m17a();
        if (m17a != this.f15483e) {
            this.f15483e = m17a;
            m16b();
        }
    }
}
