package com.facebook.internal;

import android.content.Intent;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1538j.AbstractC23280y;
import p193e.p1538j.C23228f0;
import s1.z.c.f;
@Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018�� \u00122\u00020\u0001:\u0003\u0011\u0012\u0013B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl;", "Lcom/facebook/CallbackManager;", "()V", "callbacks", "", "", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "onActivityResult", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "registerCallback", "", "callback", "unregisterCallback", "Callback", "Companion", "RequestCodeOffset", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.t */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/t.class */
public final class C1190t implements AbstractC23280y {

    /* renamed from: b */
    public static final C1192b f3233b = new C1192b(null);

    /* renamed from: c */
    public static final Map<Integer, AbstractC1191a> f3234c = new HashMap();

    /* renamed from: a */
    public final Map<Integer, AbstractC1191a> f3235a = new HashMap();

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Callback;", "", "onActivityResult", "", "resultCode", "", RemoteMessageConst.DATA, "Landroid/content/Intent;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.t$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/t$a.class */
    public interface AbstractC1191a {
        /* renamed from: a */
        boolean mo41559a(int i, Intent intent);
    }

    @Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\"\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0003R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Companion;", "", "()V", "staticCallbacks", "", "", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "getStaticCallback", "requestCode", "registerStaticCallback", "", "callback", "runStaticCallback", "", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.t$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/t$b.class */
    public static final class C1192b {
        public C1192b(f fVar) {
        }
    }

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;", "", VastIconXmlManager.OFFSET, "", "(Ljava/lang/String;II)V", "toRequestCode", "Login", "Share", "Message", "Like", "GameRequest", "AppGroupCreate", "AppGroupJoin", "AppInvite", "DeviceShare", "GamingFriendFinder", "GamingGroupIntegration", "Referral", "GamingContextCreate", "GamingContextSwitch", "GamingContextChoose", "TournamentShareDialog", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.t$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/t$c.class */
    public enum EnumC1193c {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        GamingFriendFinder(9),
        GamingGroupIntegration(10),
        Referral(11),
        GamingContextCreate(12),
        GamingContextSwitch(13),
        GamingContextChoose(14),
        TournamentShareDialog(15);
        

        /* renamed from: a */
        public final int f3253a;

        EnumC1193c(int i) {
            this.f3253a = i;
        }

        /* renamed from: a */
        public final int m41639a() {
            C23228f0 c23228f0 = C23228f0.f64291a;
            C1172r0 c1172r0 = C1172r0.f3203a;
            C1172r0.m41649f();
            return C23228f0.f64301k + this.f3253a;
        }
    }

    @Override // p193e.p1538j.AbstractC23280y
    public boolean onActivityResult(int i, int i2, Intent intent) {
        boolean z;
        AbstractC1191a abstractC1191a;
        AbstractC1191a abstractC1191a2 = this.f3235a.get(Integer.valueOf(i));
        if (abstractC1191a2 == null) {
            synchronized (f3233b) {
                abstractC1191a = f3234c.get(Integer.valueOf(i));
            }
            z = abstractC1191a == null ? false : abstractC1191a.mo41559a(i2, intent);
        } else {
            z = abstractC1191a2.mo41559a(i2, intent);
        }
        return z;
    }
}
