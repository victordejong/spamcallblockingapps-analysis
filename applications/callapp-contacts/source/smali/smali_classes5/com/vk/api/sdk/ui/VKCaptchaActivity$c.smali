.class final Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;
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

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity;

    iput-object p2, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 121
    sget-object v0, Lcom/vk/api/sdk/e/f;->a:Lcom/vk/api/sdk/e/f;

    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;->b:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vk/api/sdk/e/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "BitmapFactory.decodeByteArray(data, 0, data.size)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a(Lcom/vk/api/sdk/ui/VKCaptchaActivity;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
