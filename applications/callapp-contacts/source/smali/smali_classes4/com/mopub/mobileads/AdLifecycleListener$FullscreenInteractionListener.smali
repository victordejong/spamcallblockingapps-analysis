.class public interface abstract Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FullscreenInteractionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0017J\u0008\u0010\u0006\u001a\u00020\u0003H\u0017\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u0091(0\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;",
        "",
        "onAdComplete",
        "",
        "moPubReward",
        "Lcom/mopub/common/MoPubReward;",
        "onAdDismissed",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onAdComplete(Lcom/mopub/common/MoPubReward;)V
.end method

.method public abstract onAdDismissed()V
.end method
