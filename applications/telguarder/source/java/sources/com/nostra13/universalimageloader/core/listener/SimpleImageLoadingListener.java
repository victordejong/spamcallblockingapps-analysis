package com.nostra13.universalimageloader.core.listener;

import android.graphics.Bitmap;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.FailReason;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener.class */
public class SimpleImageLoadingListener implements ImageLoadingListener {
    @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
    public void onLoadingCancelled(String str, View view) {
    }

    @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
    public void onLoadingComplete(String str, View view, Bitmap bitmap) {
    }

    @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
    public void onLoadingFailed(String str, View view, FailReason failReason) {
    }

    @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
    public void onLoadingStarted(String str, View view) {
    }
}
