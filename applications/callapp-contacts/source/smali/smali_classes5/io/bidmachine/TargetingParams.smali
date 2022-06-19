.class public final Lio/bidmachine/TargetingParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/ITargetingParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/TargetingParams;",
        ">;",
        "Lio/bidmachine/models/ITargetingParams<",
        "Lio/bidmachine/TargetingParams;",
        ">;"
    }
.end annotation


# instance fields
.field private birthdayYear:Ljava/lang/Integer;

.field private blockedParams:Lio/bidmachine/BlockedParams;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private deviceLocation:Landroid/location/Location;

.field private framework:Ljava/lang/String;

.field private gender:Lio/bidmachine/utils/Gender;

.field private isPaid:Ljava/lang/Boolean;

.field private keywords:[Ljava/lang/String;

.field private storeCategory:Ljava/lang/String;

.field private storeSubCategories:[Ljava/lang/String;

.field private storeUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method

.method private prepareBlockParams()V
    .locals 1

    .line 297
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lio/bidmachine/BlockedParams;

    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1

    .line 255
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 256
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public final bridge synthetic addBlockedAdvertiserDomain(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1

    .line 248
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 249
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public final bridge synthetic addBlockedAdvertiserIABCategory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1

    .line 241
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 242
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public final bridge synthetic addBlockedApplication(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method final build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 73
    :cond_0
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 77
    :cond_1
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 81
    :cond_2
    iget-object p1, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setStoreurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 84
    :cond_3
    iget-object p1, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPaid(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method

.method final build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCountry(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 150
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCity(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 153
    :cond_1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setZip(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_2
    return-void
.end method

.method final build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .locals 7

    .line 119
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 123
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setYob(I)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 127
    :cond_1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Lio/bidmachine/utils/Gender;->getOrtbValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGender(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 131
    :cond_2
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v2, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setKeywords(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 140
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    const/4 v2, 0x0

    .line 142
    invoke-static {v0, v2, v1}, Lio/bidmachine/g;->locationToGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V

    .line 143
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    return-void
.end method

.method final fillAppExtension(Lcom/explorestack/protobuf/Struct$Builder;)V
    .locals 6

    .line 88
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    const-string v1, "storecat"

    .line 89
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 94
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 95
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 97
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v5

    .line 98
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v4

    .line 97
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    const-string v1, "storesubcat"

    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 106
    :cond_2
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 108
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    const-string v1, "fmwname"

    .line 107
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 112
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-double v1, v1

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    const-string v1, "apilevel"

    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-void
.end method

.method final getBirthdayYear()Ljava/lang/Integer;
    .locals 1

    .line 269
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    return-object v0
.end method

.method final getBlockedParams()Lio/bidmachine/BlockedParams;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    return-object v0
.end method

.method final getCity()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    return-object v0
.end method

.method final getCountry()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method final getDeviceLocation()Landroid/location/Location;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    return-object v0
.end method

.method final getGender()Lio/bidmachine/utils/Gender;
    .locals 1

    .line 265
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    return-object v0
.end method

.method final getKeywords()[Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    return-object v0
.end method

.method final getPaid()Ljava/lang/Boolean;
    .locals 1

    .line 293
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    return-object v0
.end method

.method final getStoreUrl()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    return-object v0
.end method

.method final getUserId()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    return-object v0
.end method

.method final getZip()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public final merge(Lio/bidmachine/TargetingParams;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/utils/Gender;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    .line 49
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    .line 50
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    .line 55
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    .line 60
    iget-object v0, p1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lio/bidmachine/BlockedParams;

    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 64
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    iget-object p1, p1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->merge(Lio/bidmachine/BlockedParams;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    .line 20
    check-cast p1, Lio/bidmachine/TargetingParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->merge(Lio/bidmachine/TargetingParams;)V

    return-void
.end method

.method public final setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;
    .locals 1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/core/Utils;->assertYear(I)V

    .line 175
    :cond_0
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public final bridge synthetic setBirthdayYear(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 193
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setCity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 187
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setCountry(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 235
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    return-object p0
.end method

.method public final bridge synthetic setDeviceLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 223
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setFramework(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 166
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    return-object p0
.end method

.method public final bridge synthetic setGender(Lio/bidmachine/utils/Gender;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final varargs setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 181
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setKeywords([Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 229
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bridge synthetic setPaid(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 211
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setStoreCategory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final varargs setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 217
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setStoreSubCategories([Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 205
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setStoreUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 160
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setUserId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 199
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic setZip(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method
