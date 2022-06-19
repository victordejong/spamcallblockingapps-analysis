.class final Lcom/criteo/publisher/f/k$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/f/y;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1073
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 1076
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v2

    const/4 v3, 0x0

    .line 1080
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1081
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 1082
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_1

    .line 1083
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 1086
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "wrapper_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "profile_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "feedbacks"

    .line 1104
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1105
    iget-object v2, p0, Lcom/criteo/publisher/f/k$a;->a:Lcom/google/gson/j;

    if-nez v2, :cond_2

    .line 1107
    iget-object v2, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    const-class v5, Lcom/criteo/publisher/f/y$a;

    aput-object v5, v4, v0

    const-class v5, Ljava/util/List;

    invoke-static {v5, v4}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v2

    iput-object v2, p0, Lcom/criteo/publisher/f/k$a;->a:Lcom/google/gson/j;

    .line 1109
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    .line 1112
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 1096
    :cond_4
    iget-object v3, p0, Lcom/criteo/publisher/f/k$a;->c:Lcom/google/gson/j;

    if-nez v3, :cond_5

    .line 1098
    iget-object v3, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v3

    iput-object v3, p0, Lcom/criteo/publisher/f/k$a;->c:Lcom/google/gson/j;

    .line 1100
    :cond_5
    invoke-virtual {v3, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 1088
    :cond_6
    iget-object v1, p0, Lcom/criteo/publisher/f/k$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_7

    .line 1090
    iget-object v1, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/k$a;->b:Lcom/google/gson/j;

    .line 1092
    :cond_7
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_0

    .line 1116
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 1117
    new-instance p1, Lcom/criteo/publisher/f/k;

    invoke-direct {p1, v2, v1, v3}, Lcom/criteo/publisher/f/k;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(MetricRequest)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p2, Lcom/criteo/publisher/f/y;

    if-nez p2, :cond_0

    .line 2035
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 2038
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "feedbacks"

    .line 2039
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2040
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2041
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 2043
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/f/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 2045
    iget-object v0, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Lcom/criteo/publisher/f/y$a;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/k$a;->a:Lcom/google/gson/j;

    .line 2047
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "wrapper_version"

    .line 2049
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2050
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2051
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 2053
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/f/k$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 2055
    iget-object v0, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/k$a;->b:Lcom/google/gson/j;

    .line 2057
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "profile_id"

    .line 2059
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2061
    iget-object v0, p0, Lcom/criteo/publisher/f/k$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 2063
    iget-object v0, p0, Lcom/criteo/publisher/f/k$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/k$a;->c:Lcom/google/gson/j;

    .line 2065
    :cond_5
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 2067
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
