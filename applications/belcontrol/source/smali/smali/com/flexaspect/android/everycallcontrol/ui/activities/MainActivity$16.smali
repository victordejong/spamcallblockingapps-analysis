.class public final Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$16;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Y0(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p3}, Lk61;->F(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V

    return-void
.end method
