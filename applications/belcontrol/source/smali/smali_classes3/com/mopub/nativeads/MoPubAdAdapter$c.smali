.class public Lcom/mopub/nativeads/MoPubAdAdapter$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubAdAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/widget/Adapter;Lcom/mopub/common/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/MoPubAdAdapter;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MoPubAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$c;->a:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(I)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$c;->a:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->d(I)V

    return-void
.end method

.method public onAdRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$c;->a:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->e(I)V

    return-void
.end method
