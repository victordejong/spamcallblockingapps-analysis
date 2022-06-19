.class public final Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J5\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;",
        "",
        "adLoader",
        "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;",
        "moPubView",
        "Lcom/mopub/mobileads/MoPubView;",
        "nativeAd",
        "Lcom/mopub/nativeads/NativeAd;",
        "disableRefresh",
        "",
        "(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V",
        "getAdLoader",
        "()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;",
        "getDisableRefresh",
        "()Z",
        "getMoPubView",
        "()Lcom/mopub/mobileads/MoPubView;",
        "getNativeAd",
        "()Lcom/mopub/nativeads/NativeAd;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private final b:Lcom/mopub/mobileads/MoPubView;

.field private final c:Lcom/mopub/nativeads/NativeAd;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 1

    const-string v0, "adLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->b:Lcom/mopub/mobileads/MoPubView;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->c:Lcom/mopub/nativeads/NativeAd;

    iput-boolean p4, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    iget-object v1, p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->b:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->c:Lcom/mopub/nativeads/NativeAd;

    iget-object v1, p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->c:Lcom/mopub/nativeads/NativeAd;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->d:Z

    iget-boolean p1, p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->d:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAdLoader()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object v0
.end method

.method public final getDisableRefresh()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->d:Z

    return v0
.end method

.method public final getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->b:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public final getNativeAd()Lcom/mopub/nativeads/NativeAd;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->c:Lcom/mopub/nativeads/NativeAd;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->c:Lcom/mopub/nativeads/NativeAd;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->d:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdData(adLoader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->c:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
