package p012b.p074r.p075j;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.p009v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import p012b.p042i.p043h.AbstractC0856g;
import p012b.p042i.p043h.C0857h;
import p012b.p074r.C1150g;
import p012b.p074r.C1151h;
import p012b.p074r.C1152i;
/* renamed from: b.r.j.a */
/* loaded from: classes-dex2jar.jar:b/r/j/a.class */
public class C1153a extends C0857h.AbstractC0862e {

    /* renamed from: e */
    public int[] f4663e = null;

    /* renamed from: f */
    public MediaSessionCompat.Token f4664f;

    /* renamed from: g */
    public boolean f4665g;

    /* renamed from: h */
    public PendingIntent f4666h;

    /* renamed from: a */
    public int m34573a(int i) {
        return i <= 3 ? C1152i.notification_template_big_media_narrow : C1152i.notification_template_big_media;
    }

    /* renamed from: a */
    public Notification.MediaStyle m34572a(Notification.MediaStyle mediaStyle) {
        int[] iArr = this.f4663e;
        if (iArr != null) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f4664f;
        if (token != null) {
            mediaStyle.setMediaSession((MediaSession.Token) token.m39237c());
        }
        return mediaStyle;
    }

    /* renamed from: a */
    public RemoteViews m34574a() {
        int min = Math.min(this.f4041a.f4016b.size(), 5);
        RemoteViews a = m35720a(false, m34573a(min), false);
        a.removeAllViews(C1150g.media_actions);
        if (min > 0) {
            for (int i = 0; i < min; i++) {
                a.addView(C1150g.media_actions, m34568a(this.f4041a.f4016b.get(i)));
            }
        }
        if (this.f4665g) {
            a.setViewVisibility(C1150g.cancel_action, 0);
            a.setInt(C1150g.cancel_action, "setAlpha", this.f4041a.f4015a.getResources().getInteger(C1151h.cancel_button_image_alpha));
            a.setOnClickPendingIntent(C1150g.cancel_action, this.f4666h);
        } else {
            a.setViewVisibility(C1150g.cancel_action, 8);
        }
        return a;
    }

    /* renamed from: a */
    public final RemoteViews m34568a(C0857h.C0858a aVar) {
        boolean z = aVar.m35767a() == null;
        RemoteViews remoteViews = new RemoteViews(this.f4041a.f4015a.getPackageName(), C1152i.notification_media_action);
        remoteViews.setImageViewResource(C1150g.action0, aVar.m35763e());
        if (!z) {
            remoteViews.setOnClickPendingIntent(C1150g.action0, aVar.m35767a());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(C1150g.action0, aVar.m35758j());
        }
        return remoteViews;
    }

    /* renamed from: a */
    public C1153a m34571a(PendingIntent pendingIntent) {
        this.f4666h = pendingIntent;
        return this;
    }

    /* renamed from: a */
    public C1153a m34570a(MediaSessionCompat.Token token) {
        this.f4664f = token;
        return this;
    }

    /* renamed from: a */
    public C1153a m34567a(int... iArr) {
        this.f4663e = iArr;
        return this;
    }

    @Override // p012b.p042i.p043h.C0857h.AbstractC0862e
    /* renamed from: a */
    public void mo34569a(AbstractC0856g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            Notification.Builder a = gVar.mo35718a();
            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
            m34572a(mediaStyle);
            a.setStyle(mediaStyle);
        } else if (this.f4665g) {
            gVar.mo35718a().setOngoing(true);
        }
    }

    /* renamed from: b */
    public RemoteViews m34566b() {
        RemoteViews a = m35720a(false, m34564c(), true);
        int size = this.f4041a.f4016b.size();
        int[] iArr = this.f4663e;
        int min = iArr == null ? 0 : Math.min(iArr.length, 3);
        a.removeAllViews(C1150g.media_actions);
        if (min > 0) {
            for (int i = 0; i < min; i++) {
                if (i < size) {
                    a.addView(C1150g.media_actions, m34568a(this.f4041a.f4016b.get(this.f4663e[i])));
                } else {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                }
            }
        }
        if (this.f4665g) {
            a.setViewVisibility(C1150g.end_padder, 8);
            a.setViewVisibility(C1150g.cancel_action, 0);
            a.setOnClickPendingIntent(C1150g.cancel_action, this.f4666h);
            a.setInt(C1150g.cancel_action, "setAlpha", this.f4041a.f4015a.getResources().getInteger(C1151h.cancel_button_image_alpha));
        } else {
            a.setViewVisibility(C1150g.end_padder, 0);
            a.setViewVisibility(C1150g.cancel_action, 8);
        }
        return a;
    }

    @Override // p012b.p042i.p043h.C0857h.AbstractC0862e
    /* renamed from: b */
    public RemoteViews mo34565b(AbstractC0856g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return m34574a();
    }

    /* renamed from: c */
    public int m34564c() {
        return C1152i.notification_template_media;
    }

    @Override // p012b.p042i.p043h.C0857h.AbstractC0862e
    /* renamed from: c */
    public RemoteViews mo34563c(AbstractC0856g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return m34566b();
    }
}
