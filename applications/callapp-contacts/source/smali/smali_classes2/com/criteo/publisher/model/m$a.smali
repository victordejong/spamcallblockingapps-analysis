.class final Lcom/criteo/publisher/model/m$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/model/z;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/z;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 127
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "deviceId"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 140
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "deviceIdType"

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 148
    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "deviceOs"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 152
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 156
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v1, "mopubConsent"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 160
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 162
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 164
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v1, "uspIab"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 168
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 170
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 172
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v1, "uspOptout"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 176
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_c

    .line 178
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 180
    :cond_c
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v1, "ext"

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->b:Lcom/google/gson/j;

    .line 188
    :cond_e
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map;

    goto/16 :goto_0

    .line 191
    :cond_f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 195
    :cond_10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 196
    new-instance p1, Lcom/criteo/publisher/model/m;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/criteo/publisher/model/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public final a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/z;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "deviceId"

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 41
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "deviceIdType"

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 58
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "deviceOs"

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 61
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 68
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "mopubConsent"

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 71
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 72
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 76
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 78
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "uspIab"

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 84
    :cond_9
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 86
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 88
    :cond_a
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "uspOptout"

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 91
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 92
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_5

    .line 94
    :cond_b
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_c

    .line 96
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->a:Lcom/google/gson/j;

    .line 98
    :cond_c
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_5
    const-string v0, "ext"

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 101
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->d()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_d

    .line 102
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_6

    .line 104
    :cond_d
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_e

    .line 106
    iget-object v0, p0, Lcom/criteo/publisher/model/m$a;->c:Lcom/google/gson/f;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/m$a;->b:Lcom/google/gson/j;

    .line 108
    :cond_e
    invoke-virtual {p2}, Lcom/criteo/publisher/model/z;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 110
    :goto_6
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

    .line 25
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/m$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/z;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(User)"

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

    .line 25
    check-cast p2, Lcom/criteo/publisher/model/z;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/m$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/z;)V

    return-void
.end method
