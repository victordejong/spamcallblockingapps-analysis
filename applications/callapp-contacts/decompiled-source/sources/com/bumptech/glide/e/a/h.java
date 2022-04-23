package com.bumptech.glide.e.a;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.e.b.d;
import com.bumptech.glide.k;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/h.class */
public final class h<Z> extends c<Z> {

    /* renamed from: b  reason: collision with root package name */
    private static final Handler f7283b = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.e.a.h.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            h hVar = (h) message.obj;
            hVar.f7284a.a((j<?>) hVar);
            return true;
        }
    });

    /* renamed from: a  reason: collision with root package name */
    final k f7284a;

    private h(k kVar, int i, int i2) {
        super(i, i2);
        this.f7284a = kVar;
    }

    public static <Z> h<Z> a(k kVar, int i, int i2) {
        return new h<>(kVar, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(Z z, d<? super Z> dVar) {
        f7283b.obtainMessage(1, this).sendToTarget();
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(Drawable drawable) {
    }
}
