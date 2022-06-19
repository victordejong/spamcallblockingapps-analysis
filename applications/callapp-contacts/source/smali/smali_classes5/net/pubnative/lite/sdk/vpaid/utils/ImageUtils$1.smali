.class final Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils;->setScaledImage(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 15
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 17
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 18
    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils$1;->val$filePath:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lnet/pubnative/lite/sdk/vpaid/utils/ImageUtils;->access$000(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    return v0
.end method
