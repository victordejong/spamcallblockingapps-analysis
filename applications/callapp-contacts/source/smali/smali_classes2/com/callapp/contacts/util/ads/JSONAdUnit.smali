.class public Lcom/callapp/contacts/util/ads/JSONAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/JSONAdUnit$AdType;
    }
.end annotation


# static fields
.field public static final BANNER_250:I = 0x2

.field public static final BANNER_50:I = 0x1

.field public static final INTERSTITIAL:I = 0x4

.field public static final NATIVE:I = 0x0

.field public static final NATIVE_BANNER:I = 0x3


# instance fields
.field private adType:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adType"
    .end annotation
.end field

.field private adUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adUnitId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adUnitId:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 60
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adType:I

    iget v2, p1, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adType:I

    if-eq v1, v2, :cond_2

    return v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adUnitId:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adUnitId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getAdType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adType:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adType:I

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONAdUnit;->adUnitId:Ljava/lang/String;

    return-void
.end method
