.class Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;

    .line 47
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/kms/model/Tag;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/Tag;->getTagKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/Tag;->getTagKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TagKey"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/Tag;->getTagValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/Tag;->getTagValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TagValue"

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
