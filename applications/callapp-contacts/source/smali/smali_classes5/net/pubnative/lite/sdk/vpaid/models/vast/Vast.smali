.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad:Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private status:Lnet/pubnative/lite/sdk/vpaid/models/vast/Status;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private version:Ljava/lang/String;
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
.method public getAd()Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;
    .locals 1

    .line 22
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->ad:Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;

    return-object v0
.end method

.method public getStatus()Lnet/pubnative/lite/sdk/vpaid/models/vast/Status;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->status:Lnet/pubnative/lite/sdk/vpaid/models/vast/Status;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->version:Ljava/lang/String;

    return-object v0
.end method
