.class public Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
.super Lcom/amazonaws/services/s3/model/TopicConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicConfiguration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/TopicConfiguration;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 312
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/TopicConfiguration;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic fromJson$27(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->fromJsonField$27(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$27(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/TopicConfiguration;->fromJsonField$24(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    return-void
.end method

.method public getEvent()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getEvents()Ljava/util/Set;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 340
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getTopicARN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toJson$27(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->toJsonBody$27(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$27(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/TopicConfiguration;->toJsonBody$24(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 345
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
