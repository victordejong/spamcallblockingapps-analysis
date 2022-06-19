package com.squareup.picasso;

import android.graphics.Bitmap;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Cache.class */
public interface Cache {
    public static final Cache NONE = new Cache() { // from class: com.squareup.picasso.Cache.1
        @Override // com.squareup.picasso.Cache
        public final void clear() {
        }

        @Override // com.squareup.picasso.Cache
        public final void clearKeyUri(String str) {
        }

        @Override // com.squareup.picasso.Cache
        public final Bitmap get(String str) {
            return null;
        }

        @Override // com.squareup.picasso.Cache
        public final int maxSize() {
            return 0;
        }

        @Override // com.squareup.picasso.Cache
        public final void set(String str, Bitmap bitmap) {
        }

        @Override // com.squareup.picasso.Cache
        public final int size() {
            return 0;
        }
    };

    void clear();

    void clearKeyUri(String str);

    Bitmap get(String str);

    int maxSize();

    void set(String str, Bitmap bitmap);

    int size();
}
