package com.facebook.internal;

import android.content.Intent;
import com.facebook.AbstractC10179e;
import com.facebook.C10181g;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018�� \u00122\u00020\u0001:\u0003\u0011\u0012\u0013B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lcom/facebook/internal/CallbackManagerImpl;", "Lcom/facebook/CallbackManager;", "()V", "callbacks", "", "", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "onActivityResult", "", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "registerCallback", "", "callback", "unregisterCallback", "Callback", "Companion", "RequestCodeOffset", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c.class */
public final class C10263c implements AbstractC10179e {

    /* renamed from: b */
    public static final C10265b f33772b = new C10265b(null);

    /* renamed from: c */
    private static final Map<Integer, AbstractC10264a> f33773c = new HashMap();

    /* renamed from: a */
    public final Map<Integer, AbstractC10264a> f33774a = new HashMap();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, m4298d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Callback;", "", "onActivityResult", "", "resultCode", "", "data", "Landroid/content/Intent;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c$a.class */
    public interface AbstractC10264a {
        /* renamed from: a */
        boolean mo22728a(int i, Intent intent);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\"\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0003R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lcom/facebook/internal/CallbackManagerImpl$Companion;", "", "()V", "staticCallbacks", "", "", "Lcom/facebook/internal/CallbackManagerImpl$Callback;", "getStaticCallback", "requestCode", "registerStaticCallback", "", "callback", "runStaticCallback", "", "resultCode", "data", "Landroid/content/Intent;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c$b.class */
    public static final class C10265b {
        private C10265b() {
        }

        public /* synthetic */ C10265b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        final AbstractC10264a m23073a(int i) {
            AbstractC10264a abstractC10264a;
            synchronized (this) {
                abstractC10264a = (AbstractC10264a) C10263c.f33773c.get(Integer.valueOf(i));
            }
            return abstractC10264a;
        }

        /* renamed from: a */
        public final void m23072a(int i, AbstractC10264a callback) {
            synchronized (this) {
                C18524p.m3840d(callback, "callback");
                if (C10263c.f33773c.containsKey(Integer.valueOf(i))) {
                    return;
                }
                C10263c.f33773c.put(Integer.valueOf(i), callback);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, m4298d2 = {"Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;", "", VastIconXmlManager.OFFSET, "", "(Ljava/lang/String;II)V", "toRequestCode", "Login", "Share", "Message", "Like", "GameRequest", "AppGroupCreate", "AppGroupJoin", "AppInvite", "DeviceShare", "GamingFriendFinder", "GamingGroupIntegration", "Referral", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c$c.class */
    public enum EnumC10266c {
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

        EnumC10266c(int i) {
            this.offset = i;
        }

        public final int toRequestCode() {
            return C10181g.m23279t() + this.offset;
        }
    }

    /* renamed from: a */
    public static final void m23086a(int i, AbstractC10264a abstractC10264a) {
        synchronized (C10263c.class) {
            try {
                f33772b.m23072a(i, abstractC10264a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.facebook.AbstractC10179e
    /* renamed from: a */
    public final boolean mo23087a(int i, int i2, Intent intent) {
        AbstractC10264a abstractC10264a = this.f33774a.get(Integer.valueOf(i));
        if (abstractC10264a != null) {
            return abstractC10264a.mo22728a(i2, intent);
        }
        AbstractC10264a m23073a = f33772b.m23073a(i);
        if (m23073a == null) {
            return false;
        }
        return m23073a.mo22728a(i2, intent);
    }
}
