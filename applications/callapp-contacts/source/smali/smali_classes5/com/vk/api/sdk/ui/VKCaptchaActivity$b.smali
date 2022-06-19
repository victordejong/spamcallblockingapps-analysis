.class final Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/ui/VKCaptchaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/api/sdk/ui/VKCaptchaActivity;

.field final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity;

    iput-object p2, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity;

    invoke-static {v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->c(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity;

    invoke-static {v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->d(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
