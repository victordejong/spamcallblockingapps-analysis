.class public Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"


# instance fields
.field private consent:Z
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
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

    .line 37
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public isConsented()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;->consent:Z

    return v0
.end method
