.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$3;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->U0(Li91;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Li91;Ljava/lang/Integer;)V
    .locals 7

    new-instance v0, Lv61;

    invoke-direct {v0}, Lv61;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Ld71;->b(Li91;Z)V

    invoke-static {v0}, Ll61;->c(Lu61;)Lu61;

    move-result-object v0

    check-cast v0, Lv61;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v4, v0, Ld71;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v0, v0, Ld71;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ld71$b;

    invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld71$b;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p3, v4, v3

    new-instance v5, Lmq0;

    array-length v6, v0

    if-lez v6, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Ld71$b;->a()Ld71$b;

    move-result-object v0

    :goto_0
    invoke-direct {v5, v0}, Lmq0;-><init>(Ld71$b;)V

    aput-object v5, v4, v1

    invoke-virtual {p1, p2, v4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lw61;

    invoke-direct {v0}, Lw61;-><init>()V

    invoke-virtual {v0, p3, v3}, Lw61;->c(Li91;Z)V

    iput-boolean v3, v0, Lw61;->a:Z

    :try_start_0
    invoke-static {v0}, Lk61;->o(Lw61;)Lw61;

    move-result-object v0

    iget-object v4, v0, Lw61;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v0, v0, Lw61;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lw61$b;

    invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw61$b;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v3

    new-instance p3, Lmq0;

    array-length v5, v0

    if-lez v5, :cond_2

    aget-object v0, v0, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lw61$b;->a()Lw61$b;

    move-result-object v0

    :goto_1
    invoke-direct {p3, v0}, Lmq0;-><init>(Lw61$b;)V

    aput-object p3, v4, v1

    aput-object p4, v4, v2

    invoke-virtual {p1, p2, v4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    new-instance p4, Lk61$a;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x1f4

    invoke-direct {p4, p3, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, p4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    goto :goto_2

    :catch_0
    move-exception p3

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_2
    return-void
.end method
