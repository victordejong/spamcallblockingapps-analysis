.class Lcom/callerid/block/main/MainActivity$s;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "s"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/main/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity$s;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/main/MainActivity;

    if-eqz v0, :cond_4

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x38f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3ca

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/callerid/block/bean/GameInfosVersionModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/callerid/block/bean/GameInfosVersionModel;->getUpdatePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/main/MainActivity;->T(Lcom/callerid/block/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callerid/block/bean/GameInfosVersionModel;->getMinMaintenanceVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->S(Lcom/callerid/block/main/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->S(Lcom/callerid/block/main/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minVersion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "testupdate"

    invoke-static {v3, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->U(Lcom/callerid/block/main/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Utils.getTestRest=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->D(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callerid/block/util/t0;->D(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/callerid/block/main/MainActivity;->f1(Z)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/util/t0;->f0(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->U(Lcom/callerid/block/main/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10009e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.STARRED_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    new-instance p1, Lcom/callerid/block/main/MainActivity$s$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/main/MainActivity$s$a;-><init>(Lcom/callerid/block/main/MainActivity$s;)V

    invoke-static {v0, p1}, Lcom/callerid/block/h/a/f/g;->k(Landroid/content/Context;Lcom/callerid/block/h/a/f/m;)V

    :cond_4
    :goto_0
    return-void
.end method
