.class final Lcom/explorestack/iab/mraid/MraidInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidInterstitial;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewListener: onClose"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    .line 65
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a()V

    return-void
.end method

.method public final onError(Lcom/explorestack/iab/mraid/MraidView;I)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewListener: onError ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    .line 72
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    const/4 v0, 0x0

    .line 1187
    iput-boolean v0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->c:Z

    const/4 v0, 0x1

    .line 1188
    iput-boolean v0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->d:Z

    .line 1189
    iget-object v0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V

    .line 1192
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    return-void
.end method

.method public final onExpand(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public final onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewListener: onLoaded"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a(Lcom/explorestack/iab/mraid/MraidInterstitial;)Z

    .line 43
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    :cond_0
    return-void
.end method

.method public final onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewListener: onOpenBrowser ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2, p3}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V

    :cond_0
    return-void
.end method

.method public final onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewListener: onPlayVideo ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onShown(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewListener: onShown"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    :cond_0
    return-void
.end method
