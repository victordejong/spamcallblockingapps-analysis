package com.squareup.picasso;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/FetchAction.class */
public class FetchAction extends Action<Object> {
    private Callback callback;
    private final Object target = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public FetchAction(Picasso picasso, Request request, int i, int i2, Object obj, String str, Callback callback) {
        super(picasso, null, request, i, i2, 0, null, str, obj, false);
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void cancel() {
        super.cancel();
        this.callback = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (this.callback != null) {
            this.callback.onSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void error() {
        if (this.callback != null) {
            this.callback.onError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public Object getTarget() {
        return this.target;
    }
}
