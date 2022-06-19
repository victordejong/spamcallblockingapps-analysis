.class final Lio/bidmachine/nativead/utils/ImageHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/utils/ImageHelper;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onImagePrepared(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
