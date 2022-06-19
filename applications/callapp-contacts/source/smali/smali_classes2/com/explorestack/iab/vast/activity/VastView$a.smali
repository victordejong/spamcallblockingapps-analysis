.class final Lcom/explorestack/iab/vast/activity/VastView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1853
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$1;)V
    .locals 0

    .line 1853
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView$a;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method


# virtual methods
.method public final onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 1870
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->F(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method

.method public final onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V
    .locals 0

    .line 1875
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->G(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method

.method public final onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 2

    .line 1857
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->x(Lcom/explorestack/iab/vast/activity/VastView;)V

    .line 1859
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->showInView(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public final onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V
    .locals 0

    .line 1887
    invoke-interface {p3}, Lcom/explorestack/iab/utils/c;->clickHandled()V

    .line 1888
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p3, p1, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    invoke-static {p1, p3, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/tags/f;Ljava/lang/String;)Z

    return-void
.end method

.method public final onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    return-void
.end method
