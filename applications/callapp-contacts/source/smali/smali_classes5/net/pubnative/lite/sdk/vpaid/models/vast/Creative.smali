.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private companionAds:Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private linear:Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private sequence:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompanionAds()Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->companionAds:Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinear()Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;
    .locals 1

    .line 29
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->linear:Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;

    return-object v0
.end method

.method public getSequence()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->sequence:Ljava/lang/String;

    return-object v0
.end method
