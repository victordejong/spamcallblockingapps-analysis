package p193e.p194a.p195a.p286y0;

import android.graphics.Bitmap;
import android.net.Uri;
import com.truecaller.data.entity.messaging.Participant;
import java.util.Map;
import java.util.Objects;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p751f4.p764i.C14037a;
import p193e.p194a.p912i4.AbstractC15287q;
/* renamed from: e.a.a.y0.w */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/w.class */
public final class C7349w implements AbstractC15287q.AbstractC15288a {

    /* renamed from: a */
    public final /* synthetic */ Participant f23427a;

    /* renamed from: b */
    public final /* synthetic */ C7350x f23428b;

    /* renamed from: c */
    public final /* synthetic */ Map f23429c;

    public C7349w(Participant participant, C7350x c7350x, Map map) {
        this.f23427a = participant;
        this.f23428b = c7350x;
        this.f23429c = map;
    }

    @Override // p193e.p194a.p912i4.AbstractC15287q.AbstractC15288a
    public final Bitmap create() {
        C7350x c7350x = this.f23428b;
        Participant participant = this.f23427a;
        Objects.requireNonNull(c7350x);
        Uri mo14235k = c7350x.f23433d.mo14235k(participant.f11582o, participant.f11580m, true);
        String uri = mo14235k != null ? mo14235k.toString() : null;
        if (uri == null) {
            uri = participant.f11580m;
        }
        return C17891a1.C17902k.m15651P0(C14037a.m20828a(uri, 0, 2), 2131232500, c7350x.f23430a);
    }
}
