.class final Lcom/mopub/nativeads/PangleAdRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/PangleAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

.field final synthetic b:Lcom/mopub/nativeads/PangleAdRenderer;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/PangleAdRenderer;Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdRenderer$1;->b:Lcom/mopub/nativeads/PangleAdRenderer;

    iput-object p2, p0, Lcom/mopub/nativeads/PangleAdRenderer$1;->a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdRenderer$1;->a:Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->showPrivacyActivity()V

    return-void
.end method
