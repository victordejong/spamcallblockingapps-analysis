.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$5;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->Z(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    :try_start_0
    new-instance p4, Lb71;

    invoke-direct {p4, p3}, Lb71;-><init>(Li91;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lb71;

    invoke-direct {v0, p3, p4, p5, p6}, Lb71;-><init>(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, v0

    :goto_0
    invoke-static {p4}, Lk61;->y(Lb71;)Z

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_1
    return-void
.end method
