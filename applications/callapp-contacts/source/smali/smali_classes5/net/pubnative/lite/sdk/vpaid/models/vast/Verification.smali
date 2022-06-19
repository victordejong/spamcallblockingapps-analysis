.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private javaScriptResource:Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private trackingEvents:Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private vendor:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private verificationParameters:Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
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
.method public getJavaScriptResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;
    .locals 1

    .line 24
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->javaScriptResource:Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;

    return-object v0
.end method

.method public getTrackingEvents()Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;
    .locals 1

    .line 28
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->trackingEvents:Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationParameters()Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;
    .locals 1

    .line 32
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->verificationParameters:Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;

    return-object v0
.end method
