.class final Lcom/criteo/publisher/model/i$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/model/q;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/q;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 105
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 106
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "placementId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "interstitial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "sizes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "impId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "isNative"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 153
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    .line 125
    :cond_7
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    .line 141
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    new-array v1, v3, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v9

    const-class v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->c:Lcom/google/gson/j;

    .line 149
    :cond_9
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    goto/16 :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 115
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    .line 117
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :pswitch_4
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    .line 133
    :cond_b
    invoke-virtual {v0, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 157
    :cond_c
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 158
    new-instance p1, Lcom/criteo/publisher/model/i;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/criteo/publisher/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Collection;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x1690be1f -> :sswitch_4
        0x5fade07 -> :sswitch_3
        0x6862092 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x2ba4f6e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/q;)V
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

    const-string v0, "impId"

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 41
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "placementId"

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 51
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->a:Lcom/google/gson/j;

    .line 58
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "isNative"

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 61
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->e()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_5

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    .line 68
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->e()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "interstitial"

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 71
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->d()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_7

    .line 72
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 76
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->b:Lcom/google/gson/j;

    .line 78
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "sizes"

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->c()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_9

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 84
    :cond_9
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_a

    .line 86
    iget-object v0, p0, Lcom/criteo/publisher/model/i$a;->d:Lcom/google/gson/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/i$a;->c:Lcom/google/gson/j;

    .line 88
    :cond_a
    invoke-virtual {p2}, Lcom/criteo/publisher/model/q;->c()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 90
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

    .line 24
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/i$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/q;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(CdbRequestSlot)"

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

    .line 24
    check-cast p2, Lcom/criteo/publisher/model/q;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/i$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/q;)V

    return-void
.end method
