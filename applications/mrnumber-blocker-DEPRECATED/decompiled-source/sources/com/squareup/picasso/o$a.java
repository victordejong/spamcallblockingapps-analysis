package com.squareup.picasso;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/o$a.class */
enum o$a {
    MICRO(3, 96, 96),
    MINI(1, 512, 384),
    FULL(2, -1, -1);
    
    final int androidKind;
    final int height;
    final int width;

    o$a(int i, int i2, int i3) {
        this.androidKind = i;
        this.width = i2;
        this.height = i3;
    }
}
