.class final Lcom/criteo/publisher/f/m$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/f/y$b;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1074
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 1077
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v2

    .line 1081
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1082
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_1

    .line 1084
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 1087
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "impressionId"

    .line 1089
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1090
    iget-object v2, p0, Lcom/criteo/publisher/f/m$a;->a:Lcom/google/gson/j;

    if-nez v2, :cond_2

    .line 1092
    iget-object v2, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v2

    iput-object v2, p0, Lcom/criteo/publisher/f/m$a;->a:Lcom/google/gson/j;

    .line 1094
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "zoneId"

    .line 1097
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1098
    iget-object v1, p0, Lcom/criteo/publisher/f/m$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_4

    .line 1100
    iget-object v1, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/m$a;->b:Lcom/google/gson/j;

    .line 1102
    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_5
    const-string v4, "cachedBidUsed"

    .line 1105
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1106
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 1108
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/m$a;->c:Lcom/google/gson/j;

    .line 1110
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1113
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 1117
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 1118
    new-instance p1, Lcom/criteo/publisher/f/m;

    invoke-direct {p1, v2, v1, v0}, Lcom/criteo/publisher/f/m;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(MetricRequest.MetricRequestSlot)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p2, Lcom/criteo/publisher/f/y$b;

    if-nez p2, :cond_0

    .line 2036
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 2039
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "impressionId"

    .line 2040
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2041
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2042
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 2044
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 2046
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/m$a;->a:Lcom/google/gson/j;

    .line 2048
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "zoneId"

    .line 2050
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2051
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$b;->b()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2052
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 2054
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 2056
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/m$a;->b:Lcom/google/gson/j;

    .line 2058
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$b;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "cachedBidUsed"

    .line 2060
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2062
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 2064
    iget-object v0, p0, Lcom/criteo/publisher/f/m$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/m$a;->c:Lcom/google/gson/j;

    .line 2066
    :cond_5
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$b;->c()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 2068
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
