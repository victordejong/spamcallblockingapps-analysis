.class public Lcom/amazonaws/services/s3/model/LambdaConfiguration;
.super Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private functionARN:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazonaws/services/s3/model/S3Event;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>(Ljava/util/EnumSet;)V

    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>([Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic fromJson$37(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->fromJsonField$37(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$37(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
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
    const/16 v1, 0x3a

    if-eq p3, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->fromJsonField$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object p3, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq p1, p3, :cond_2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public getFunctionARN()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic toJson$37(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->toJsonBody$37(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$37(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->functionARN:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->toJsonBody$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-void
.end method
