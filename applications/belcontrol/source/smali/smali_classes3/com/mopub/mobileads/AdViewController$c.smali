.class public Lcom/mopub/mobileads/AdViewController$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;->setAdContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/MoPubAd;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$c;->c:Lcom/mopub/mobileads/AdViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController$c;->a:Lcom/mopub/mobileads/MoPubAd;

    iput-object p3, p0, Lcom/mopub/mobileads/AdViewController$c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$c;->a:Lcom/mopub/mobileads/MoPubAd;

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$c;->a:Lcom/mopub/mobileads/MoPubAd;

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController$c;->c:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
