.class final Lcom/monet/bidder/AppMonetView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/monet/bidder/AppMonetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/monet/bidder/AppMonetView;


# direct methods
.method constructor <init>(Lcom/monet/bidder/AppMonetView;)V
    .locals 0

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-static {v0}, Lcom/monet/bidder/AppMonetView;->a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-static {v0}, Lcom/monet/bidder/AppMonetView;->a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 0

    return-void
.end method

.method public final onAdLoadFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-static {v0}, Lcom/monet/bidder/AppMonetView;->a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-static {v0}, Lcom/monet/bidder/AppMonetView;->a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;

    invoke-static {p1}, Lcom/monet/bidder/b;->parseHyBidException(Ljava/lang/Throwable;)Lcom/monet/bidder/b;

    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-static {v0}, Lcom/monet/bidder/AppMonetView;->a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/monet/bidder/AppMonetView$1;->a:Lcom/monet/bidder/AppMonetView;

    invoke-static {v0}, Lcom/monet/bidder/AppMonetView;->a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;

    :cond_0
    return-void
.end method
