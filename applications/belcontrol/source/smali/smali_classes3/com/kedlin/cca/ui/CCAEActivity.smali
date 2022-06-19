.class public Lcom/kedlin/cca/ui/CCAEActivity;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/ui/CCAEActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_DLG_DEFAULT_MESSAGING_APP_PERMISSION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {p1, p2, p3}, Lfa1;->s(IILandroid/content/Intent;)Z

    move-result v0

    const-string v1, "cca_message"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v2, "Call Control Messages"

    invoke-static {v1, v2, v0}, Lfa1;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {p1, p2, p3}, Lfa1;->y(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lfa1;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/kedlin/cca/ui/CCAEActivity$a;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/CCAEActivity$a;-><init>(Lcom/kedlin/cca/ui/CCAEActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
