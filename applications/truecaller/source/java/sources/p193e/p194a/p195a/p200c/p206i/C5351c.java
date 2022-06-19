package p193e.p194a.p195a.p200c.p206i;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import s1.z.c.l;
/* renamed from: e.a.a.c.i.c */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/c.class */
public final class C5351c {

    /* renamed from: a */
    public final Context f18302a;

    /* renamed from: b */
    public final Participant f18303b;

    /* renamed from: c */
    public final long f18304c;

    /* renamed from: d */
    public final long f18305d;

    /* renamed from: e */
    public final boolean f18306e;

    /* renamed from: f */
    public final boolean f18307f;

    /* renamed from: g */
    public final FlashContact f18308g;

    public C5351c(Context context, Participant participant, long j, long j2, boolean z, boolean z2, FlashContact flashContact) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(participant, "participant");
        this.f18302a = context;
        this.f18303b = participant;
        this.f18304c = j;
        this.f18305d = j2;
        this.f18306e = z;
        this.f18307f = z2;
        this.f18308g = flashContact;
    }
}
