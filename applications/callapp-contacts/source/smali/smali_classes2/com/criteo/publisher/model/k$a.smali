.class final Lcom/criteo/publisher/model/k$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/model/w;",
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

.field private final c:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/w;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v9, v8

    const/4 v7, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 112
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "cpId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "rtbProfileId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "bundleId"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 140
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "sdkVersion"

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 148
    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "deviceId"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 152
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 156
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v1, "deviceOs"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 164
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    .line 167
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->b:Lcom/google/gson/j;

    .line 131
    :cond_b
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_0

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_d

    .line 121
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 123
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 171
    :cond_e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 172
    new-instance p1, Lcom/criteo/publisher/model/k;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/criteo/publisher/model/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/w;)V
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

    const-string v0, "cpId"

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 38
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 45
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "bundleId"

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 48
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 55
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "sdkVersion"

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 58
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 65
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "rtbProfileId"

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 69
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->b:Lcom/google/gson/j;

    .line 73
    :cond_7
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "deviceId"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 79
    :cond_8
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 83
    :cond_9
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "deviceOs"

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 86
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 87
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 89
    :cond_a
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_b

    .line 91
    iget-object v0, p0, Lcom/criteo/publisher/model/k$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/k$a;->a:Lcom/google/gson/j;

    .line 93
    :cond_b
    invoke-virtual {p2}, Lcom/criteo/publisher/model/w;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 95
    :goto_4
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

    .line 22
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/k$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/w;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(RemoteConfigRequest)"

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

    .line 22
    check-cast p2, Lcom/criteo/publisher/model/w;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/k$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/w;)V

    return-void
.end method
