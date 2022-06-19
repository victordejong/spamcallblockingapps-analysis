.class final Lcom/google/android/play/core/assetpacks/t;
.super Lcom/google/android/play/core/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/a/c<",
        "Lcom/google/android/play/core/assetpacks/b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/play/core/assetpacks/bb;

.field final b:Lcom/google/android/play/core/assetpacks/am;

.field final c:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/play/core/assetpacks/af;

.field private final g:Lcom/google/android/play/core/assetpacks/ap;

.field private final h:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/assetpacks/am;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/assetpacks/ap;Lcom/google/android/play/core/assetpacks/af;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/internal/ba;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/assetpacks/am;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/ap;",
            "Lcom/google/android/play/core/assetpacks/af;",
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "AssetPackServiceListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/a/c;-><init>(Lcom/google/android/play/core/internal/h;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/t;->j:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/t;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/t;->b:Lcom/google/android/play/core/assetpacks/am;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/t;->c:Lcom/google/android/play/core/internal/ba;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/t;->g:Lcom/google/android/play/core/assetpacks/ap;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/t;->f:Lcom/google/android/play/core/assetpacks/af;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/t;->h:Lcom/google/android/play/core/internal/ba;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/t;->i:Lcom/google/android/play/core/internal/ba;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, "pack_names"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/t;->g:Lcom/google/android/play/core/assetpacks/ap;

    sget-object v3, Lcom/google/android/play/core/assetpacks/v;->b:Lcom/google/android/play/core/assetpacks/u;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/play/core/assetpacks/b;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/ap;Lcom/google/android/play/core/assetpacks/u;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/t;->d:Lcom/google/android/play/core/internal/h;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v1, p2, v2}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "confirmation_intent"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/t;->f:Lcom/google/android/play/core/assetpacks/af;

    .line 1000
    iput-object p2, v1, Lcom/google/android/play/core/assetpacks/af;->a:Landroid/app/PendingIntent;

    :cond_1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/t;->i:Lcom/google/android/play/core/internal/ba;

    invoke-interface {p2}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/r;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/r;-><init>(Lcom/google/android/play/core/assetpacks/t;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/b;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/t;->h:Lcom/google/android/play/core/internal/ba;

    invoke-interface {p2}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/s;-><init>(Lcom/google/android/play/core/assetpacks/t;Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 0
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/t;->d:Lcom/google/android/play/core/internal/h;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1000
    :cond_3
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/t;->d:Lcom/google/android/play/core/internal/h;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/play/core/assetpacks/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/t;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/assetpacks/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/q;-><init>(Lcom/google/android/play/core/assetpacks/t;Lcom/google/android/play/core/assetpacks/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
