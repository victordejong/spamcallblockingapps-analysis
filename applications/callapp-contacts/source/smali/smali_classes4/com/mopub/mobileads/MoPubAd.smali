.class public interface abstract Lcom/mopub/mobileads/MoPubAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH\u0017J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0017J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0008\u0010\u000f\u001a\u00020\nH\u0017J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000cH\u0017J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u0012H\u0017J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\n\u0010\u0016\u001a\u0004\u0018\u00010\u000cH\u0017J\u0008\u0010\u0017\u001a\u00020\u0004H\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J\u0008\u0010\u001c\u001a\u00020\u0004H\u0017J\u0008\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u0004H\u0017J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"H\u0017J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u000cH\u0017J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u000eH&J\u0012\u0010\'\u001a\u00020\u00042\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0017J\u001c\u0010)\u001a\u00020\u00042\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00130\u0012H\u0017J\u0012\u0010+\u001a\u00020\u00042\u0008\u0010,\u001a\u0004\u0018\u00010\u000cH\u0017\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u0091(0\u0001\u00a8\u0006-"
    }
    d2 = {
        "Lcom/mopub/mobileads/MoPubAd;",
        "Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;",
        "Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;",
        "fakeLoadAd",
        "",
        "adResponse",
        "Lcom/mopub/network/AdResponse;",
        "getAdFormat",
        "Lcom/mopub/common/AdFormat;",
        "getAdHeight",
        "",
        "getAdUnitId",
        "",
        "getAdViewController",
        "Lcom/mopub/mobileads/AdViewController;",
        "getAdWidth",
        "getKeywords",
        "getLocalExtras",
        "",
        "",
        "getLocation",
        "Landroid/location/Location;",
        "getUserDataKeywords",
        "loadAd",
        "loadFailUrl",
        "",
        "errorCode",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        "pauseAutoRefresh",
        "resolveAdSize",
        "Landroid/graphics/Point;",
        "resumeAutoRefresh",
        "setAdContentView",
        "view",
        "Landroid/view/View;",
        "setAdUnitId",
        "adUnitId",
        "setAdViewController",
        "adViewController",
        "setKeywords",
        "keywords",
        "setLocalExtras",
        "localExtras",
        "setUserDataKeywords",
        "userDataKeywords",
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
.method public abstract fakeLoadAd(Lcom/mopub/network/AdResponse;)V
.end method

.method public abstract getAdFormat()Lcom/mopub/common/AdFormat;
.end method

.method public abstract getAdHeight()I
.end method

.method public abstract getAdUnitId()Ljava/lang/String;
.end method

.method public abstract getAdViewController()Lcom/mopub/mobileads/AdViewController;
.end method

.method public abstract getAdWidth()I
.end method

.method public abstract getKeywords()Ljava/lang/String;
.end method

.method public abstract getLocalExtras()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getUserDataKeywords()Ljava/lang/String;
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
.end method

.method public abstract pauseAutoRefresh()V
.end method

.method public abstract resolveAdSize()Landroid/graphics/Point;
.end method

.method public abstract resumeAutoRefresh()V
.end method

.method public abstract setAdContentView(Landroid/view/View;)V
.end method

.method public abstract setAdUnitId(Ljava/lang/String;)V
.end method

.method public abstract setAdViewController(Lcom/mopub/mobileads/AdViewController;)V
.end method

.method public abstract setKeywords(Ljava/lang/String;)V
.end method

.method public abstract setLocalExtras(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserDataKeywords(Ljava/lang/String;)V
.end method
