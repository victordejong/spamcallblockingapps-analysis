.class final Lcom/mopub/mobileads/AdViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubAd;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$3;->c:Lcom/mopub/mobileads/AdViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController$3;->a:Lcom/mopub/mobileads/MoPubAd;

    iput-object p3, p0, Lcom/mopub/mobileads/AdViewController$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$3;->a:Lcom/mopub/mobileads/MoPubAd;

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 710
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$3;->a:Lcom/mopub/mobileads/MoPubAd;

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$3;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$3;->c:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
