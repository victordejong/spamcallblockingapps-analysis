.class Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;
    .locals 1

    .line 86
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    .line 88
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/kms/model/GrantListEntry;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrantId"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GranteePrincipal"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetiringPrincipal"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IssuingAccount"

    .line 61
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v0

    const-string v1, "Operations"

    .line 66
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 70
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 73
    :cond_8
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 76
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object p1

    const-string v0, "Constraints"

    .line 77
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->getInstance()Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->marshall(Lcom/amazonaws/services/kms/model/GrantConstraints;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 80
    :cond_a
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
