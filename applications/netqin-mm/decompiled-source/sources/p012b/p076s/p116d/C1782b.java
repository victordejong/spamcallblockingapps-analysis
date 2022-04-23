package p012b.p076s.p116d;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
import p012b.p076s.p116d.AbstractC1786d;
/* renamed from: b.s.d.b */
/* loaded from: classes-dex2jar.jar:b/s/d/b.class */
public class C1782b extends CustomVersionedParcelable {

    /* renamed from: a */
    public int f7185a;

    /* renamed from: b */
    public IBinder f7186b;

    /* renamed from: c */
    public AbstractC1786d f7187c;

    /* renamed from: d */
    public PendingIntent f7188d;

    /* renamed from: e */
    public int f7189e;

    /* renamed from: f */
    public MediaItem f7190f;

    /* renamed from: g */
    public MediaItem f7191g;

    /* renamed from: h */
    public long f7192h;

    /* renamed from: i */
    public long f7193i;

    /* renamed from: j */
    public float f7194j;

    /* renamed from: k */
    public long f7195k;

    /* renamed from: l */
    public MediaController.PlaybackInfo f7196l;

    /* renamed from: m */
    public int f7197m;

    /* renamed from: n */
    public int f7198n;

    /* renamed from: o */
    public ParcelImplListSlice f7199o;

    /* renamed from: p */
    public SessionCommandGroup f7200p;

    /* renamed from: q */
    public int f7201q;

    /* renamed from: r */
    public int f7202r;

    /* renamed from: s */
    public int f7203s;

    /* renamed from: t */
    public Bundle f7204t;

    /* renamed from: u */
    public VideoSize f7205u;

    /* renamed from: v */
    public List<SessionPlayer.TrackInfo> f7206v;

    /* renamed from: w */
    public SessionPlayer.TrackInfo f7207w;

    /* renamed from: x */
    public SessionPlayer.TrackInfo f7208x;

    /* renamed from: y */
    public SessionPlayer.TrackInfo f7209y;

    /* renamed from: z */
    public SessionPlayer.TrackInfo f7210z;

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo32076a(boolean z) {
        this.f7186b = (IBinder) this.f7187c;
        this.f7191g = C1796i.m32079a(this.f7190f);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: f */
    public void mo32075f() {
        this.f7187c = AbstractC1786d.AbstractBinderC1787a.m32096a(this.f7186b);
        this.f7186b = null;
        this.f7190f = this.f7191g;
        this.f7191g = null;
    }
}
