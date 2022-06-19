.class final Lcom/criteo/publisher/f/l$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/f/y$a;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Long;",
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

.field private volatile d:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1107
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 1110
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    move-wide v8, v0

    move-object v5, v2

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    const/4 v7, 0x0

    .line 1117
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1118
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 1120
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "isTimeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "slots"

    .line 1133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1134
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/criteo/publisher/f/y$b;

    aput-object v2, v1, v3

    const-class v2, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->a:Lcom/google/gson/j;

    .line 1138
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string v1, "elapsed"

    .line 1141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1142
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 1144
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    .line 1146
    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    goto :goto_0

    :cond_5
    const-string v1, "cdbCallStartElapsed"

    .line 1149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1150
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 1152
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->d:Lcom/google/gson/j;

    .line 1154
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto/16 :goto_0

    :cond_7
    const-string v1, "cdbCallEndElapsed"

    .line 1157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1158
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 1160
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    .line 1162
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Long;

    goto/16 :goto_0

    :cond_9
    const-string v1, "requestGroupId"

    .line 1165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1166
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->e:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 1168
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->e:Lcom/google/gson/j;

    .line 1170
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_0

    .line 1173
    :cond_b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 1125
    :cond_c
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_d

    .line 1127
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->c:Lcom/google/gson/j;

    .line 1129
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_0

    .line 1177
    :cond_e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 1178
    new-instance p1, Lcom/criteo/publisher/f/l;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/criteo/publisher/f/l;-><init>(Ljava/util/List;Ljava/lang/Long;ZJLjava/lang/Long;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(MetricRequest.MetricRequestFeedback)"

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

    .line 26
    check-cast p2, Lcom/criteo/publisher/f/y$a;

    if-nez p2, :cond_0

    .line 2041
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 2044
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "slots"

    .line 2045
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2046
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2047
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 2051
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Lcom/criteo/publisher/f/y$b;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->a:Lcom/google/gson/j;

    .line 2053
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "elapsed"

    .line 2055
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2056
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->b()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2057
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 2059
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 2061
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    .line 2063
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "isTimeout"

    .line 2065
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2067
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 2069
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->c:Lcom/google/gson/j;

    .line 2071
    :cond_5
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "cdbCallStartElapsed"

    .line 2073
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2075
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 2077
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->d:Lcom/google/gson/j;

    .line 2079
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "cdbCallEndElapsed"

    .line 2081
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2082
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2083
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 2085
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 2087
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->b:Lcom/google/gson/j;

    .line 2089
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "requestGroupId"

    .line 2091
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2092
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2093
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 2095
    :cond_9
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->e:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 2097
    iget-object v0, p0, Lcom/criteo/publisher/f/l$a;->f:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/l$a;->e:Lcom/google/gson/j;

    .line 2099
    :cond_a
    invoke-virtual {p2}, Lcom/criteo/publisher/f/y$a;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 2101
    :goto_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
