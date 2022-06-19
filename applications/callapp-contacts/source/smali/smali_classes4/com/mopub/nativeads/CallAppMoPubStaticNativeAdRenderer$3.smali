.class final Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 144
    sget-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->LTR:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    const/16 v1, 0x3e8

    invoke-static {p1, p1, v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V

    .line 146
    new-instance v0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3$1;-><init>(Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;Landroid/view/View;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$5sNGN-fm_Ktx1dv5VzBPRueJIZA(Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;->a:Landroid/view/View;

    sget-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->LTR:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    const/16 v2, 0x3e8

    invoke-static {v0, v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V

    .line 143
    iget-object v0, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;->a:Landroid/view/View;

    new-instance v1, Lcom/mopub/nativeads/-$$Lambda$CallAppMoPubStaticNativeAdRenderer$3$5sNGN-fm_Ktx1dv5VzBPRueJIZA;

    invoke-direct {v1, p0, v0}, Lcom/mopub/nativeads/-$$Lambda$CallAppMoPubStaticNativeAdRenderer$3$5sNGN-fm_Ktx1dv5VzBPRueJIZA;-><init>(Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;Landroid/view/View;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
