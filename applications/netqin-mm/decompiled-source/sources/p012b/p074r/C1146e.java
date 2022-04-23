package p012b.p074r;

import android.content.Context;
import android.media.session.MediaSessionManager;
import p012b.p074r.C1141c;
import p012b.p074r.C1148f;
/* renamed from: b.r.e */
/* loaded from: classes-dex2jar.jar:b/r/e.class */
public class C1146e extends C1145d {

    /* renamed from: b.r.e$a */
    /* loaded from: classes-dex2jar.jar:b/r/e$a.class */
    public static final class C1147a extends C1148f.C1149a {
        public C1147a(String str, int i, int i2) {
            super(str, i, i2);
            new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }
    }

    public C1146e(Context context) {
        super(context);
        MediaSessionManager mediaSessionManager = (MediaSessionManager) context.getSystemService("media_session");
    }

    @Override // p012b.p074r.C1145d, p012b.p074r.C1148f, p012b.p074r.C1141c.AbstractC1142a
    /* renamed from: a */
    public boolean mo34580a(C1141c.AbstractC1144c cVar) {
        return super.mo34580a(cVar);
    }
}
