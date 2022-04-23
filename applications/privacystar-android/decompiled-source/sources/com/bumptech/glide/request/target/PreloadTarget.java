package com.bumptech.glide.request.target;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.transition.Transition;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/target/PreloadTarget.class */
public final class PreloadTarget<Z> extends SimpleTarget<Z> {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.request.target.PreloadTarget.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((PreloadTarget) message.obj).clear();
            return true;
        }
    });
    private static final int MESSAGE_CLEAR = 1;
    private final RequestManager requestManager;

    private PreloadTarget(RequestManager requestManager, int i, int i2) {
        super(i, i2);
        this.requestManager = requestManager;
    }

    public static <Z> PreloadTarget<Z> obtain(RequestManager requestManager, int i, int i2) {
        return new PreloadTarget<>(requestManager, i, i2);
    }

    void clear() {
        this.requestManager.clear(this);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onResourceReady(@NonNull Z z, @Nullable Transition<? super Z> transition) {
        HANDLER.obtainMessage(1, this).sendToTarget();
    }
}
