.class public Lcom/twitter/sdk/android/core/models/ApiErrors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/ApiError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/models/ApiErrors;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/ApiError;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic fromJson$36(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/models/ApiErrors;->fromJsonField$36(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$36(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
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
    const/16 v1, 0x4a

    if-eq p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    new-instance p3, Lcom/twitter/sdk/android/core/models/ApiErrorserrorsTypeToken;

    invoke-direct {p3}, Lcom/twitter/sdk/android/core/models/ApiErrorserrorsTypeToken;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public synthetic toJson$36(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/models/ApiErrors;->toJsonBody$36(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$36(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4a

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance p3, Lcom/twitter/sdk/android/core/models/ApiErrorserrorsTypeToken;

    invoke-direct {p3}, Lcom/twitter/sdk/android/core/models/ApiErrorserrorsTypeToken;-><init>()V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    invoke-static {p1, p3, v0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
