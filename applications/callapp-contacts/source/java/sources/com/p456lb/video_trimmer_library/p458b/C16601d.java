package com.p456lb.video_trimmer_library.p458b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��7\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0004\bÀ\u0002\u0018��2\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\bH\u0002J\u001e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m4298d2 = {"Lcom/lb/video_trimmer_library/utils/UiThreadExecutor;", "", "()V", "HANDLER", "com/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1", "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1;", "TOKENS", "Ljava/util/HashMap;", "", "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$Token;", "cancelAll", "", "id", "decrementToken", "token", "nextToken", "runTask", "task", "Ljava/lang/Runnable;", "delay", "", "Token", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.b.d */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/d.class */
public final class C16601d {

    /* renamed from: b */
    public static final C16601d f58419b = new C16601d();

    /* renamed from: a */
    public static final HandlerC16602a f58418a = new HandlerC16602a(Looper.getMainLooper());

    /* renamed from: c */
    private static final HashMap<String, C16603b> f58420c = new HashMap<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m4298d2 = {"com/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1", "Landroid/os/Handler;", "handleMessage", "", "msg", "Landroid/os/Message;", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.b.d$a */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/d$a.class */
    public static final class HandlerC16602a extends Handler {
        HandlerC16602a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message msg) {
            C18524p.m3841c(msg, "msg");
            Runnable callback = msg.getCallback();
            if (callback == null) {
                super.handleMessage(msg);
                return;
            }
            callback.run();
            C16601d c16601d = C16601d.f58419b;
            Object obj = msg.obj;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.lb.video_trimmer_library.utils.UiThreadExecutor.Token");
            }
            C16601d.m6921a((C16603b) obj);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, m4298d2 = {"Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$Token;", "", "id", "", "(Ljava/lang/String;)V", "getId$video_trimmer_library_release", "()Ljava/lang/String;", "runnablesCount", "", "getRunnablesCount$video_trimmer_library_release", "()I", "setRunnablesCount$video_trimmer_library_release", "(I)V", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.b.d$b */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/d$b.class */
    public static final class C16603b {

        /* renamed from: a */
        int f58421a;

        /* renamed from: b */
        final String f58422b;

        public C16603b(String id) {
            C18524p.m3841c(id, "id");
            this.f58422b = id;
        }
    }

    private C16601d() {
    }

    /* renamed from: a */
    public static C16603b m6920a(String str) {
        C16603b c16603b;
        HashMap<String, C16603b> hashMap = f58420c;
        synchronized (hashMap) {
            C16603b c16603b2 = hashMap.get(str);
            c16603b = c16603b2;
            if (c16603b2 == null) {
                c16603b = new C16603b(str);
                hashMap.put(str, c16603b);
            }
            c16603b.f58421a++;
        }
        return c16603b;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6921a(C16603b c16603b) {
        HashMap<String, C16603b> hashMap = f58420c;
        synchronized (hashMap) {
            c16603b.f58421a--;
            if (c16603b.f58421a == 0) {
                String str = c16603b.f58422b;
                C16603b remove = hashMap.remove(str);
                if ((!C18524p.m3850a(remove, c16603b)) && remove != null) {
                    hashMap.put(str, remove);
                }
            }
            C20128v c20128v = C20128v.f66529a;
        }
    }

    /* renamed from: b */
    public static void m6919b(String id) {
        C16603b remove;
        C18524p.m3841c(id, "id");
        HashMap<String, C16603b> hashMap = f58420c;
        synchronized (hashMap) {
            remove = hashMap.remove(id);
            C20128v c20128v = C20128v.f66529a;
        }
        if (remove == null) {
            return;
        }
        f58418a.removeCallbacksAndMessages(remove);
    }
}
