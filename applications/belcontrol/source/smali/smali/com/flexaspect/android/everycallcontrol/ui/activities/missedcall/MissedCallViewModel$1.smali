.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel$1;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->A(ILjava/lang/String;ZLcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    :try_start_0
    new-instance v0, Lb71;

    invoke-direct {v0, p3}, Lb71;-><init>(Li91;)V

    iput-object p5, v0, Lb71;->e:Ljava/lang/String;

    iput-object p4, v0, Lb71;->d:Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, v0, Lb71;->f:I

    invoke-static {v0}, Lk61;->y(Lb71;)Z

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    new-instance p4, Lk61$a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/16 p5, 0x1f4

    invoke-direct {p4, p3, p5}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, p4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_0
    return-void
.end method
