.class final Lcom/criteo/publisher/f/i$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/f/s;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1143
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 1146
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 1147
    invoke-static {}, Lcom/criteo/publisher/f/s;->l()Lcom/criteo/publisher/f/s$a;

    move-result-object v0

    .line 1148
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1149
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 1151
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 1154
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "cdbCallStartTimestamp"

    .line 1156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1157
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    if-nez v1, :cond_2

    .line 1159
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    .line 1161
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->a(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    goto :goto_0

    :cond_3
    const-string v2, "cdbCallEndTimestamp"

    .line 1164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1165
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    if-nez v1, :cond_4

    .line 1167
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    .line 1169
    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    goto :goto_0

    :cond_5
    const-string v2, "cdbCallTimeout"

    .line 1172
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1173
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_6

    .line 1175
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    .line 1177
    :cond_6
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->a(Z)Lcom/criteo/publisher/f/s$a;

    goto :goto_0

    :cond_7
    const-string v2, "cachedBidUsed"

    .line 1180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1181
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_8

    .line 1183
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    .line 1185
    :cond_8
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->b(Z)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    :cond_9
    const-string v2, "elapsedTimestamp"

    .line 1188
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1189
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    if-nez v1, :cond_a

    .line 1191
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    .line 1193
    :cond_a
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->c(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    :cond_b
    const-string v2, "impressionId"

    .line 1196
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1197
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    if-nez v1, :cond_c

    .line 1199
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    .line 1201
    :cond_c
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->a(Ljava/lang/String;)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    :cond_d
    const-string v2, "requestGroupId"

    .line 1204
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1205
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    if-nez v1, :cond_e

    .line 1207
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    .line 1209
    :cond_e
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/String;)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    :cond_f
    const-string v2, "zoneId"

    .line 1212
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1213
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    if-nez v1, :cond_10

    .line 1215
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    .line 1217
    :cond_10
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->a(Ljava/lang/Integer;)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    :cond_11
    const-string v2, "profileId"

    .line 1220
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1221
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    if-nez v1, :cond_12

    .line 1223
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    .line 1225
    :cond_12
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/Integer;)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    :cond_13
    const-string v2, "readyToSend"

    .line 1228
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1229
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_14

    .line 1231
    iget-object v1, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    .line 1233
    :cond_14
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->c(Z)Lcom/criteo/publisher/f/s$a;

    goto/16 :goto_0

    .line 1236
    :cond_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 1240
    :cond_16
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 1241
    invoke-virtual {v0}, Lcom/criteo/publisher/f/s$a;->a()Lcom/criteo/publisher/f/s;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(Metric)"

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

    .line 26
    check-cast p2, Lcom/criteo/publisher/f/s;

    if-nez p2, :cond_0

    .line 2039
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 2042
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "cdbCallStartTimestamp"

    .line 2043
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2044
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2045
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 2047
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 2049
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    .line 2051
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "cdbCallEndTimestamp"

    .line 2053
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2054
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->b()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2055
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 2057
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 2059
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    .line 2061
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "cdbCallTimeout"

    .line 2063
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2065
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_5

    .line 2067
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    .line 2069
    :cond_5
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "cachedBidUsed"

    .line 2071
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2073
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 2075
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    .line 2077
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "elapsedTimestamp"

    .line 2079
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2080
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2081
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 2083
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 2085
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->a:Lcom/google/gson/j;

    .line 2087
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "impressionId"

    .line 2089
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2090
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2091
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 2093
    :cond_9
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 2095
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    .line 2097
    :cond_a
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "requestGroupId"

    .line 2099
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2100
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2101
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 2103
    :cond_b
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_c

    .line 2105
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->c:Lcom/google/gson/j;

    .line 2107
    :cond_c
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "zoneId"

    .line 2109
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2110
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->h()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2111
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_5

    .line 2113
    :cond_d
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_e

    .line 2115
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    .line 2117
    :cond_e
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_5
    const-string v0, "profileId"

    .line 2119
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2120
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->i()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2121
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_6

    .line 2123
    :cond_f
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_10

    .line 2125
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->d:Lcom/google/gson/j;

    .line 2127
    :cond_10
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_6
    const-string v0, "readyToSend"

    .line 2129
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 2131
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_11

    .line 2133
    iget-object v0, p0, Lcom/criteo/publisher/f/i$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/i$a;->b:Lcom/google/gson/j;

    .line 2135
    :cond_11
    invoke-virtual {p2}, Lcom/criteo/publisher/f/s;->j()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
