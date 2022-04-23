package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.util.Util;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/ResourceRecycler.class */
class ResourceRecycler {
    private final Handler handler = new Handler(Looper.getMainLooper(), new ResourceRecyclerCallback());
    private boolean isRecycling;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback.class */
    private static final class ResourceRecyclerCallback implements Handler.Callback {
        static final int RECYCLE_RESOURCE = 1;

        ResourceRecyclerCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((Resource) message.obj).recycle();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void recycle(Resource<?> resource) {
        Util.assertMainThread();
        if (this.isRecycling) {
            this.handler.obtainMessage(1, resource).sendToTarget();
            return;
        }
        this.isRecycling = true;
        resource.recycle();
        this.isRecycling = false;
    }
}
