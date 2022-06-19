.class public Lcom/amazonaws/services/s3/model/FilterRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic fromJson$32(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/FilterRule;->fromJsonField$32(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$32(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x48

    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    const/16 v0, 0x58

    if-eq p3, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object p3, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq p1, p3, :cond_2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    return-void

    :cond_3
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object p3, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq p1, p3, :cond_5

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    return-void

    :cond_6
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FilterRule Name is a required argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic toJson$32(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/FilterRule;->toJsonBody$32(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$32(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    iget-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    if-eq p0, p1, :cond_0

    const/16 p1, 0x48

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    if-eq p0, p1, :cond_1

    const/16 p1, 0x58

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->value:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_1
    return-void
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/FilterRule;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/FilterRule;->setValue(Ljava/lang/String;)V

    return-object p0
.end method
