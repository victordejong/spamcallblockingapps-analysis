.class final Lcom/criteo/publisher/model/b0/g$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/b0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/model/b0/m;",
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
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/b0/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/b0/m;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move-object v0, v2

    move-object v1, v0

    move-object v3, v1

    .line 91
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 92
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "domain"

    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    if-nez v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v2

    iput-object v2, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    .line 104
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "description"

    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 108
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    .line 112
    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v5, "logoClickUrl"

    .line 115
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 116
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/g$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v4, Ljava/net/URI;

    invoke-virtual {v1, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/b0/g$a;->b:Lcom/google/gson/j;

    .line 120
    :cond_6
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    goto :goto_0

    :cond_7
    const-string v5, "logo"

    .line 123
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 124
    iget-object v3, p0, Lcom/criteo/publisher/model/b0/g$a;->c:Lcom/google/gson/j;

    if-nez v3, :cond_8

    .line 126
    iget-object v3, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v4, Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v3, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v3

    iput-object v3, p0, Lcom/criteo/publisher/model/b0/g$a;->c:Lcom/google/gson/j;

    .line 128
    :cond_8
    invoke-virtual {v3, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/model/b0/o;

    goto/16 :goto_0

    .line 131
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 135
    :cond_a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 136
    new-instance p1, Lcom/criteo/publisher/model/b0/g;

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/criteo/publisher/model/b0/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Lcom/criteo/publisher/model/b0/o;)V

    return-object p1
.end method

.method public final a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/b0/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "domain"

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 38
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    .line 45
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "description"

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 48
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->a:Lcom/google/gson/j;

    .line 55
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "logoClickUrl"

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 58
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->d()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->b:Lcom/google/gson/j;

    .line 65
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->d()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "logo"

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 68
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->c()Lcom/criteo/publisher/model/b0/o;

    move-result-object v0

    if-nez v0, :cond_7

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->d:Lcom/google/gson/f;

    const-class v1, Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/g$a;->c:Lcom/google/gson/j;

    .line 75
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/m;->c()Lcom/criteo/publisher/model/b0/o;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 77
    :goto_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/b0/g$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/b0/m;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(NativeAdvertiser)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    check-cast p2, Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/b0/g$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/b0/m;)V

    return-void
.end method
