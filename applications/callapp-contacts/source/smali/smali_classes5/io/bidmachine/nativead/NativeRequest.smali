.class public final Lio/bidmachine/nativead/NativeRequest;
.super Lio/bidmachine/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeRequest$a;,
        Lio/bidmachine/nativead/NativeRequest$AdRequestListener;,
        Lio/bidmachine/nativead/NativeRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mediaAssetTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdsType;)V

    .line 19
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$1;

    invoke-static {}, Lio/bidmachine/MediaAssetType;->values()[Lio/bidmachine/MediaAssetType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lio/bidmachine/nativead/NativeRequest$1;-><init>(Lio/bidmachine/nativead/NativeRequest;I)V

    iput-object v0, p0, Lio/bidmachine/nativead/NativeRequest;->mediaAssetTypes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/nativead/NativeRequest$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeRequest;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/bidmachine/nativead/NativeRequest;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/bidmachine/nativead/NativeRequest;->mediaAssetTypes:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final containsAssetType(Lio/bidmachine/MediaAssetType;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest;->mediaAssetTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest;->mediaAssetTypes:Ljava/util/List;

    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/bidmachine/nativead/NativeRequest;->mediaAssetTypes:Ljava/util/List;

    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/NativeRequest;->createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method protected final createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedNativeAdRequestParams;
    .locals 1

    .line 39
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$a;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/nativead/NativeRequest$a;-><init>(Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-object v0
.end method
