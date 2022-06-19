.class Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    .line 64
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdentityId"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getLogins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getLogins()Ljava/util/List;

    move-result-object v0

    const-string v1, "Logins"

    .line 37
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 48
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p1

    const-string v0, "LastModifiedDate"

    .line 53
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    :cond_5
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
