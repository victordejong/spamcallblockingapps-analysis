.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$7;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->K(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    invoke-static {p3}, Lw71;->d(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lk61$a;

    const/16 v0, 0x1f4

    const-string v1, ""

    invoke-direct {p3, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_0
    return-void
.end method
