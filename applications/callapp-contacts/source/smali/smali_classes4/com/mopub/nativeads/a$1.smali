.class final Lcom/mopub/nativeads/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/a;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

.field final synthetic b:Lcom/mopub/nativeads/a;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/a;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mopub/nativeads/a$1;->b:Lcom/mopub/nativeads/a;

    iput-object p2, p0, Lcom/mopub/nativeads/a$1;->a:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/mopub/nativeads/a$1;->a:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    iget-object v1, p0, Lcom/mopub/nativeads/a$1;->b:Lcom/mopub/nativeads/a;

    .line 1015
    iget-object v1, v1, Lcom/mopub/nativeads/a;->a:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 29
    invoke-interface {v0, v1}, Lcom/mopub/nativeads/PositioningSource$PositioningListener;->onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method
