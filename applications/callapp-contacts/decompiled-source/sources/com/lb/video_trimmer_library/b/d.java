package com.lb.video_trimmer_library.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��7\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0004\bÀ\u0002\u0018��2\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\bH\u0002J\u001e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/lb/video_trimmer_library/utils/UiThreadExecutor;", "", "()V", "HANDLER", "com/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1", "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1;", "TOKENS", "Ljava/util/HashMap;", "", "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$Token;", "cancelAll", "", "id", "decrementToken", "token", "nextToken", "runTask", "task", "Ljava/lang/Runnable;", "delay", "", "Token", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final d f33635b = new d();

    /* renamed from: a  reason: collision with root package name */
    public static final a f33634a = new a(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<String, b> f33636c = new HashMap<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1", "Landroid/os/Handler;", "handleMessage", "", "msg", "Landroid/os/Message;", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/d$a.class */
    public static final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message msg) {
            p.c(msg, "msg");
            Runnable callback = msg.getCallback();
            if (callback != null) {
                callback.run();
                d dVar = d.f33635b;
                Object obj = msg.obj;
                if (obj != null) {
                    d.a((b) obj);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.lb.video_trimmer_library.utils.UiThreadExecutor.Token");
            }
            super.handleMessage(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$Token;", "", "id", "", "(Ljava/lang/String;)V", "getId$video_trimmer_library_release", "()Ljava/lang/String;", "runnablesCount", "", "getRunnablesCount$video_trimmer_library_release", "()I", "setRunnablesCount$video_trimmer_library_release", "(I)V", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/d$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        int f33637a;

        /* renamed from: b  reason: collision with root package name */
        final String f33638b;

        public b(String id) {
            p.c(id, "id");
            this.f33638b = id;
        }
    }

    private d() {
    }

    public static b a(String str) {
        b bVar;
        HashMap<String, b> hashMap = f33636c;
        synchronized (hashMap) {
            b bVar2 = hashMap.get(str);
            bVar = bVar2;
            if (bVar2 == null) {
                bVar = new b(str);
                hashMap.put(str, bVar);
            }
            bVar.f33637a++;
        }
        return bVar;
    }

    public static final /* synthetic */ void a(b bVar) {
        HashMap<String, b> hashMap = f33636c;
        synchronized (hashMap) {
            bVar.f33637a--;
            if (bVar.f33637a == 0) {
                String str = bVar.f33638b;
                b remove = hashMap.remove(str);
                if ((!p.a(remove, bVar)) && remove != null) {
                    hashMap.put(str, remove);
                }
            }
            v vVar = v.f38654a;
        }
    }

    public static void b(String id) {
        b remove;
        p.c(id, "id");
        HashMap<String, b> hashMap = f33636c;
        synchronized (hashMap) {
            remove = hashMap.remove(id);
            v vVar = v.f38654a;
        }
        if (remove != null) {
            f33634a.removeCallbacksAndMessages(remove);
        }
    }
}
