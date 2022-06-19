.class final Lcom/mopub/mraid/MraidController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 415
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    .line 416
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->k(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->j(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    .line 417
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->k(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->l(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    .line 418
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->k(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->m(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    invoke-static {}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a()Z

    move-result v4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    .line 419
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->k(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->n(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    .line 420
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->a()Z

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 415
    invoke-virtual/range {v1 .. v6}, Lcom/mopub/mraid/MraidBridge;->a(ZZZZZ)V

    .line 421
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->o(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 422
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->p(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/PlacementType;)V

    .line 423
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Z)V

    .line 424
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    const-string v1, "mraidbridge.notifyReadyEvent();"

    .line 1644
    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method
