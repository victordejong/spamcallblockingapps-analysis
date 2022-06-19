package com.bumptech.glide.p112e.p113a;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: com.bumptech.glide.e.a.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/h.class */
public final class C3582h<Z> extends AbstractC3575c<Z> {

    /* renamed from: b */
    private static final Handler f13634b = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.e.a.h.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                C3582h c3582h = (C3582h) message.obj;
                c3582h.f13635a.m37548a((AbstractC3585j<?>) c3582h);
                return true;
            }
            return false;
        }
    });

    /* renamed from: a */
    final ComponentCallbacks2C3653k f13635a;

    private C3582h(ComponentCallbacks2C3653k componentCallbacks2C3653k, int i, int i2) {
        super(i, i2);
        this.f13635a = componentCallbacks2C3653k;
    }

    /* renamed from: a */
    public static <Z> C3582h<Z> m37678a(ComponentCallbacks2C3653k componentCallbacks2C3653k, int i, int i2) {
        return new C3582h<>(componentCallbacks2C3653k, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo27008a(Z z, AbstractC3595d<? super Z> abstractC3595d) {
        f13634b.obtainMessage(1, this).sendToTarget();
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37199b(Drawable drawable) {
    }
}
