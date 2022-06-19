.class public Lcom/explorestack/iab/vast/processor/VastAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/explorestack/iab/vast/processor/VastAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appodealExtension:Lcom/explorestack/iab/vast/tags/d;

.field private clickTrackingUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private companionTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/iab/vast/tags/f;",
            ">;"
        }
    .end annotation
.end field

.field private final creativeTag:Lcom/explorestack/iab/vast/tags/k;

.field private errorUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impressionUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pickedMediaFileTag:Lcom/explorestack/iab/vast/tags/MediaFileTag;

.field private trackingEventListMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private vastRequest:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/explorestack/iab/vast/processor/VastAd$1;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/VastAd$1;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/processor/VastAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/tags/k;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->pickedMediaFileTag:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->impressionUrlList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->errorUrlList:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->clickTrackingUrlList:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->trackingEventListMap:Ljava/util/EnumMap;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/vast/tags/d;

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->appodealExtension:Lcom/explorestack/iab/vast/tags/d;

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/vast/tags/k;Lcom/explorestack/iab/vast/tags/MediaFileTag;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    .line 44
    iput-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->pickedMediaFileTag:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdParameters()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    .line 4106
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->appodealExtension:Lcom/explorestack/iab/vast/tags/d;

    return-object v0
.end method

.method public getBanner(Landroid/content/Context;)Lcom/explorestack/iab/vast/tags/f;
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/f;

    const-string v3, "width"

    .line 5177
    invoke-virtual {v2, v3}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    .line 5181
    invoke-virtual {v2, v4}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    .line 181
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2d8

    if-ne v3, v5, :cond_2

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_2

    return-object v2

    .line 183
    :cond_2
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x140

    if-ne v3, v5, :cond_1

    const/16 v3, 0x32

    if-ne v4, v3, :cond_1

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    .line 2098
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/k;->b:Lcom/explorestack/iab/vast/tags/s;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    .line 3098
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/k;->b:Lcom/explorestack/iab/vast/tags/s;

    .line 4036
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/s;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClickTrackingUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->clickTrackingUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompanion(II)Lcom/explorestack/iab/vast/tags/f;
    .locals 12

    .line 138
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x258

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 143
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    iget-object v3, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/iab/vast/tags/f;

    const-string v5, "width"

    .line 4177
    invoke-virtual {v4, v5}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    .line 4181
    invoke-virtual {v4, v6}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v6

    if-ltz v5, :cond_1

    if-ltz v6, :cond_1

    .line 149
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 150
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v9, 0xfa

    if-lt v8, v9, :cond_1

    float-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_1

    .line 151
    invoke-virtual {v4}, Lcom/explorestack/iab/vast/tags/f;->f()Z

    move-result v7

    if-eqz v7, :cond_1

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 152
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 160
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 161
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v1, p1

    .line 162
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v4, v2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    move v1, v2

    goto :goto_1

    .line 166
    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/vast/tags/f;

    return-object p1

    .line 169
    :cond_5
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->sendError(I)V

    return-object v1

    .line 139
    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->sendError(I)V

    return-object v1
.end method

.method public getErrorUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->errorUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->impressionUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->pickedMediaFileTag:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    return-object v0
.end method

.method public getSkipOffsetSec()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    .line 1122
    iget v0, v0, Lcom/explorestack/iab/vast/tags/k;->e:I

    return v0
.end method

.method public getTrackingEventListMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->trackingEventListMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method sendError(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/VastAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V

    :cond_0
    return-void
.end method

.method setAppodealExtension(Lcom/explorestack/iab/vast/tags/d;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->appodealExtension:Lcom/explorestack/iab/vast/tags/d;

    return-void
.end method

.method setClickTrackingUrlList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->clickTrackingUrlList:Ljava/util/ArrayList;

    return-void
.end method

.method setCompanionTagList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/iab/vast/tags/f;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    return-void
.end method

.method setErrorUrlList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->errorUrlList:Ljava/util/ArrayList;

    return-void
.end method

.method setImpressionUrlList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->impressionUrlList:Ljava/util/ArrayList;

    return-void
.end method

.method setTrackingEventListMap(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->trackingEventListMap:Ljava/util/EnumMap;

    return-void
.end method

.method public setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/VastAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->creativeTag:Lcom/explorestack/iab/vast/tags/k;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 67
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->pickedMediaFileTag:Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 68
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->companionTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 69
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->impressionUrlList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 70
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->errorUrlList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 71
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->clickTrackingUrlList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 72
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->trackingEventListMap:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 73
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/VastAd;->appodealExtension:Lcom/explorestack/iab/vast/tags/d;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
