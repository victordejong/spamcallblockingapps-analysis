.class public final Lj4/t;
.super Lp4/c;
.source "SourceFile"


# instance fields
.field public final g:Lj4/b1;

.field public final h:Lj4/o0;

.field public final i:Lo4/p;

.field public final j:Lj4/f0;

.field public final k:Lj4/r0;

.field public final l:Lo4/p;

.field public final m:Lo4/p;

.field public final n:Lj4/r1;

.field public final o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj4/b1;Lj4/o0;Lo4/p;Lj4/r0;Lj4/f0;Lo4/p;Lo4/p;Lj4/r1;)V
    .locals 3

    .line 1
    new-instance v0, Lp6/c;

    const-string v1, "AssetPackServiceListenerRegistry"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lp4/c;-><init>(Lp6/c;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lj4/t;->o:Landroid/os/Handler;

    iput-object p2, p0, Lj4/t;->g:Lj4/b1;

    iput-object p3, p0, Lj4/t;->h:Lj4/o0;

    iput-object p4, p0, Lj4/t;->i:Lo4/p;

    iput-object p5, p0, Lj4/t;->k:Lj4/r0;

    iput-object p6, p0, Lj4/t;->j:Lj4/f0;

    iput-object p7, p0, Lj4/t;->l:Lo4/p;

    iput-object p8, p0, Lj4/t;->m:Lo4/p;

    iput-object p9, p0, Lj4/t;->n:Lj4/r1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, "pack_names"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lj4/t;->k:Lj4/r0;

    iget-object v3, p0, Lj4/t;->n:Lj4/r1;

    sget-object v4, Lc4/e;->c:Lc4/e;

    .line 5
    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/play/core/assetpacks/AssetPackState;->i(Landroid/os/Bundle;Ljava/lang/String;Lj4/r0;Lj4/r1;Lj4/v;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v0

    iget-object v1, p0, Lp4/c;->a:Lp6/c;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 6
    invoke-virtual {v1, p2, v2}, Lp6/c;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "confirmation_intent"

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lj4/t;->j:Lj4/f0;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lj4/t;->m:Lo4/p;

    .line 9
    invoke-interface {p2}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Lj4/r;

    invoke-direct {v1, p0, p1, v0}, Lj4/r;-><init>(Lj4/t;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    .line 10
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lj4/t;->l:Lo4/p;

    .line 11
    invoke-interface {p2}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Li2/w;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Li2/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lp4/c;->a:Lp6/c;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    .line 14
    invoke-virtual {p1, v0, p2}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Lp4/c;->a:Lp6/c;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    .line 16
    invoke-virtual {p1, v0, p2}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
