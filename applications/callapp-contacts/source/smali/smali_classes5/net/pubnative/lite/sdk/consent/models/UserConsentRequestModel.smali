.class public Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"


# instance fields
.field private consent:Z
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field private did:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field private did_type:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->did:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->did_type:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->consent:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getConsent()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->consent:Z

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;->did_type:Ljava/lang/String;

    return-object v0
.end method
