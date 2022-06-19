.class public Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"


# instance fields
.field private data:Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getConsent()Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->data:Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->status:Ljava/lang/String;

    return-object v0
.end method
