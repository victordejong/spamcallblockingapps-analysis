package com.squareup.picasso;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Callback.class */
public interface Callback {

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Callback$EmptyCallback.class */
    public static class EmptyCallback implements Callback {
        @Override // com.squareup.picasso.Callback
        public void onError(Exception exc) {
        }

        @Override // com.squareup.picasso.Callback
        public void onSuccess() {
        }
    }

    void onError(Exception exc);

    void onSuccess();
}
