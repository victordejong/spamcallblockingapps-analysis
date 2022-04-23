package com.facebook.internal;

import android.content.Intent;
import com.facebook.e;
import com.facebook.g;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018�� \u00122\u00020\u0001:\u0003\u0011\u0012\u0013B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl;", "Lcom/facebook/CallbackManager;", "()V", "callbacks", "", "", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "onActivityResult", "", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "registerCallback", "", "callback", "unregisterCallback", "Callback", "Companion", "RequestCodeOffset", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c.class */
public final class c implements e {

    /* renamed from: b  reason: collision with root package name */
    public static final b f19900b = new b(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Integer, a> f19901c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public final Map<Integer, a> f19902a = new HashMap();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Callback;", "", "onActivityResult", "", "resultCode", "", "data", "Landroid/content/Intent;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c$a.class */
    public interface a {
        boolean a(int i, Intent intent);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\"\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0003R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Companion;", "", "()V", "staticCallbacks", "", "", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "getStaticCallback", "requestCode", "registerStaticCallback", "", "callback", "runStaticCallback", "", "resultCode", "data", "Landroid/content/Intent;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        final a a(int i) {
            a aVar;
            synchronized (this) {
                aVar = (a) c.f19901c.get(Integer.valueOf(i));
            }
            return aVar;
        }

        public final void a(int i, a callback) {
            synchronized (this) {
                p.d(callback, "callback");
                if (!c.f19901c.containsKey(Integer.valueOf(i))) {
                    c.f19901c.put(Integer.valueOf(i), callback);
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;", "", VastIconXmlManager.OFFSET, "", "(Ljava/lang/String;II)V", "toRequestCode", "Login", "Share", "Message", "Like", "GameRequest", "AppGroupCreate", "AppGroupJoin", "AppInvite", "DeviceShare", "GamingFriendFinder", "GamingGroupIntegration", "Referral", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c$c.class */
    public enum EnumC0402c {
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
        Referral(11);
        
        private final int offset;

        EnumC0402c(int i) {
            this.offset = i;
        }

        public final int toRequestCode() {
            return g.t() + this.offset;
        }
    }

    public static final void a(int i, a aVar) {
        synchronized (c.class) {
            try {
                f19900b.a(i, aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.facebook.e
    public final boolean a(int i, int i2, Intent intent) {
        a aVar = this.f19902a.get(Integer.valueOf(i));
        if (aVar != null) {
            return aVar.a(i2, intent);
        }
        a a2 = f19900b.a(i);
        if (a2 != null) {
            return a2.a(i2, intent);
        }
        return false;
    }
}
