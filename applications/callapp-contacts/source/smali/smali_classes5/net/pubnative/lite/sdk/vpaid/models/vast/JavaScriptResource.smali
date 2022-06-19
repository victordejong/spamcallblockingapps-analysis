.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apiFramework:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private browserOptional:Z
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Text;
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
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isBrowserOptional()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;->browserOptional:Z

    return v0
.end method
