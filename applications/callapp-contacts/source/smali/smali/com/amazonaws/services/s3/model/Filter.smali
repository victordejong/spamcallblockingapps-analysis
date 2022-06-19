.class public Lcom/amazonaws/services/s3/model/Filter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic fromJson$13(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/Filter;->fromJsonField$13(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$13(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5d

    if-eq p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-class p3, Lcom/amazonaws/services/s3/model/S3KeyFilter;

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/S3KeyFilter;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Filter;->s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Filter;->s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public getS3KeyFilter()Lcom/amazonaws/services/s3/model/S3KeyFilter;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Filter;->s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    return-object v0
.end method

.method public setS3KeyFilter(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Filter;->s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    return-void
.end method

.method public synthetic toJson$13(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/Filter;->toJsonBody$13(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$13(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Filter;->s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class p3, Lcom/amazonaws/services/s3/model/S3KeyFilter;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Filter;->s3KeyFilter:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    invoke-static {p1, p3, v0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public withS3KeyFilter(Lcom/amazonaws/services/s3/model/S3KeyFilter;)Lcom/amazonaws/services/s3/model/Filter;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/Filter;->setS3KeyFilter(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V

    return-object p0
.end method
