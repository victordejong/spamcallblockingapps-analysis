.class final Lcom/criteo/publisher/model/l$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/model/y;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/lang/Boolean;",
            ">;"
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

.field private volatile d:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/y;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    .line 165
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 166
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "AndroidDisplayUrlMacro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "AndroidAdTagDataMacro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "AndroidAdTagUrlMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "AndroidAdTagDataMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "killSwitch"

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 206
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 210
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    const-string v1, "csmEnabled"

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 214
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 218
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_9
    const-string v1, "liveBiddingEnabled"

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 222
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 224
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 226
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_b
    const-string v1, "liveBiddingTimeBudgetInMillis"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 230
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_c

    .line 232
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->c:Lcom/google/gson/j;

    .line 234
    :cond_c
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_d
    const-string v1, "prefetchOnInitEnabled"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 238
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_e

    .line 240
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 242
    :cond_e
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_f
    const-string v1, "remoteLogLevel"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 246
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_10

    .line 248
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->d:Lcom/google/gson/j;

    .line 250
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto/16 :goto_0

    .line 253
    :cond_11
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_12

    .line 175
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 177
    :cond_12
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_13

    .line 191
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 193
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_14

    .line 183
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 185
    :cond_14
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_15

    .line 199
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 201
    :cond_15
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    .line 257
    :cond_16
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 258
    new-instance p1, Lcom/criteo/publisher/model/l;

    move-object v3, p1

    invoke-direct/range {v3 .. v13}, Lcom/criteo/publisher/model/l;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x26a64c0b -> :sswitch_3
        0x1ac972a -> :sswitch_2
        0x51d66bba -> :sswitch_1
        0x53293030 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "killSwitch"

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 46
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "AndroidDisplayUrlMacro"

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 56
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 63
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "AndroidAdTagUrlMode"

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 66
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 71
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 73
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "AndroidAdTagDataMacro"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 76
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 79
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 83
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "AndroidAdTagDataMode"

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 86
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 87
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 89
    :cond_9
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->b:Lcom/google/gson/j;

    .line 93
    :cond_a
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "csmEnabled"

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 96
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    .line 97
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_5

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_c

    .line 101
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 103
    :cond_c
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_5
    const-string v0, "liveBiddingEnabled"

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 106
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    .line 107
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_6

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_e

    .line 111
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 113
    :cond_e
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_6
    const-string v0, "liveBiddingTimeBudgetInMillis"

    .line 115
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 116
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    .line 117
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_7

    .line 119
    :cond_f
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_10

    .line 121
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->c:Lcom/google/gson/j;

    .line 123
    :cond_10
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_7
    const-string v0, "prefetchOnInitEnabled"

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 126
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    .line 127
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_8

    .line 129
    :cond_11
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_12

    .line 131
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->a:Lcom/google/gson/j;

    .line 133
    :cond_12
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_8
    const-string v0, "remoteLogLevel"

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 136
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v0

    if-nez v0, :cond_13

    .line 137
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_9

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_14

    .line 141
    iget-object v0, p0, Lcom/criteo/publisher/model/l$a;->e:Lcom/google/gson/f;

    const-class v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/l$a;->d:Lcom/google/gson/j;

    .line 143
    :cond_14
    invoke-virtual {p2}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 145
    :goto_9
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

    .line 28
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/l$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/y;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(RemoteConfigResponse)"

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

    .line 28
    check-cast p2, Lcom/criteo/publisher/model/y;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/l$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/y;)V

    return-void
.end method
