.class final Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;Landroid/view/View;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3$1;->b:Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;

    iput-object p2, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3$1;->a:Landroid/view/View;

    sget-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->LTR:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    const/16 v2, 0x3e8

    invoke-static {v0, v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V

    return-void
.end method
