.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$3;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->g(Lsb1$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lb71;

    invoke-direct {v2, p3, p4, p5, p6}, Lb71;-><init>(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lk61;->y(Lb71;)Z

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v0

    invoke-virtual {p1, p2, p4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v0

    invoke-virtual {p1, p2, p4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V

    return-void
.end method
