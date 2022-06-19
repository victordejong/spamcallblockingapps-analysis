.class final Lorg/xutils/image/c;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ReusableBitmapDrawable.java"

# interfaces
.implements Lorg/xutils/image/d;


# instance fields
.field private d:Lorg/xutils/image/b;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getMemCacheKey()Lorg/xutils/image/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/c;->d:Lorg/xutils/image/b;

    return-object v0
.end method

.method public setMemCacheKey(Lorg/xutils/image/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/c;->d:Lorg/xutils/image/b;

    return-void
.end method
