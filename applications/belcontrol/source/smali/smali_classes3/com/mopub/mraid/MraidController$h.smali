.class public Lcom/mopub/mraid/MraidController$h;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public final synthetic c:Lcom/mopub/mraid/MraidController;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mraid/MraidController$h;->c:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/mopub/mraid/MraidController$h;->b:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/mopub/mraid/MraidController$h;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mopub/mraid/MraidController$h;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {p1}, Lcom/mopub/mraid/MraidController;->t(Lcom/mopub/mraid/MraidController;)I

    move-result p1

    iget p2, p0, Lcom/mopub/mraid/MraidController$h;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/mopub/mraid/MraidController$h;->b:I

    iget-object p2, p0, Lcom/mopub/mraid/MraidController$h;->c:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p2, p1}, Lcom/mopub/mraid/MraidController;->P(I)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mraid/MraidController$h;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$h;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method
