.class final Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->b(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->a:Landroid/view/View;

    iput p2, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->b:I

    iput-object p3, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->a:Landroid/view/View;

    iget v1, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const v1, 0x7f060196

    goto :goto_0

    :cond_0
    const v1, 0x7f060088

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    iget-object v0, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->c:Landroid/view/View;

    iget v1, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const v1, 0x7f060193

    goto :goto_1

    :cond_1
    const v1, 0x7f060026

    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->c:Landroid/view/View;

    iget v2, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method
