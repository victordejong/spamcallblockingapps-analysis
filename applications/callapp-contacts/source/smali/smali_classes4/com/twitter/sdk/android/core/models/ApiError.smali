.class public Lcom/twitter/sdk/android/core/models/ApiError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I

    return-void
.end method


# virtual methods
.method public synthetic fromJson$8(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/models/ApiError;->fromJsonField$8(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$8(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x4b

    if-eq p3, v0, :cond_4

    const/16 v0, 0x5b

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

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public synthetic toJson$8(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/models/ApiError;->toJsonBody$8(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$8(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    iget-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    if-eq p0, p1, :cond_0

    const/16 p1, 0x5b

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_0
    const/16 p1, 0x4b

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
