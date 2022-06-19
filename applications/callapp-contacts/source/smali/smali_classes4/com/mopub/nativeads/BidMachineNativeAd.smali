.class public Lcom/mopub/nativeads/BidMachineNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BidMachineNativeAd$a;
    }
.end annotation


# instance fields
.field a:Lio/bidmachine/nativead/NativeAd;

.field b:Ljava/lang/String;

.field c:D

.field d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/BidMachineNativeAd;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/nativeads/BidMachineNativeAd;)D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->c:D

    return-wide v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/BidMachineNativeAd;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "addExtra key is not allowed to be null"

    .line 84
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->unregisterView()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 66
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->destroy()V

    .line 67
    iput-object v1, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    :cond_0
    return-void
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "getExtra key is not allowed to be null"

    .line 73
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/BidMachineNativeAd;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    return-void
.end method
