.class final Lorg/xutils/image/ImageDecoder$a;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageDecoder;->c(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lorg/xutils/image/ImageOptions;

.field final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageDecoder$a;->d:Ljava/io/File;

    iput-object p2, p0, Lorg/xutils/image/ImageDecoder$a;->e:Lorg/xutils/image/ImageOptions;

    iput-object p3, p0, Lorg/xutils/image/ImageDecoder$a;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageDecoder$a;->d:Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/image/ImageDecoder$a;->e:Lorg/xutils/image/ImageOptions;

    iget-object v2, p0, Lorg/xutils/image/ImageDecoder$a;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lorg/xutils/image/ImageDecoder;->a(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    return-void
.end method
