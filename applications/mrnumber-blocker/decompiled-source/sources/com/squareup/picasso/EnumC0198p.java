package com.squareup.picasso;
/* renamed from: com.squareup.picasso.p */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/p.class */
public enum EnumC0198p {
    NO_CACHE(1),
    NO_STORE(2);
    
    final int index;

    EnumC0198p(int i) {
        this.index = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldReadFromMemoryCache(int i) {
        return (i & NO_CACHE.index) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldWriteToMemoryCache(int i) {
        return (i & NO_STORE.index) == 0;
    }
}
