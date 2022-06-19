.class final Lcom/criteo/publisher/model/h$a;
.super Lcom/google/gson/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/j<",
        "Lcom/criteo/publisher/model/o;",
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
            "Lcom/criteo/publisher/model/v;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/z;",
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

.field private volatile e:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/k/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/o;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 130
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "gdprConsent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "id"

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    .line 150
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "publisher"

    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->b:Lcom/google/gson/j;

    if-nez v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v2, Lcom/criteo/publisher/model/v;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->b:Lcom/google/gson/j;

    .line 158
    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/criteo/publisher/model/v;

    goto :goto_0

    :cond_5
    const-string v2, "user"

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->c:Lcom/google/gson/j;

    if-nez v1, :cond_6

    .line 164
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v2, Lcom/criteo/publisher/model/z;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->c:Lcom/google/gson/j;

    .line 166
    :cond_6
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/criteo/publisher/model/z;

    goto :goto_0

    :cond_7
    const-string v2, "sdkVersion"

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 170
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    if-nez v1, :cond_8

    .line 172
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    .line 174
    :cond_8
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v2, "profileId"

    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 178
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->d:Lcom/google/gson/j;

    if-nez v1, :cond_a

    .line 180
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->d:Lcom/google/gson/j;

    .line 182
    :cond_a
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_0

    :cond_b
    const-string v2, "slots"

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 186
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->f:Lcom/google/gson/j;

    if-nez v1, :cond_c

    .line 188
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/criteo/publisher/model/q;

    aput-object v3, v2, v0

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->f:Lcom/google/gson/j;

    .line 190
    :cond_c
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/List;

    goto/16 :goto_0

    .line 193
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 137
    :cond_e
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->e:Lcom/google/gson/j;

    if-nez v1, :cond_f

    .line 139
    iget-object v1, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v2, Lcom/criteo/publisher/k/a/c;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/h$a;->e:Lcom/google/gson/j;

    .line 141
    :cond_f
    invoke-virtual {v1, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/criteo/publisher/k/a/c;

    goto/16 :goto_0

    .line 197
    :cond_10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 198
    new-instance p1, Lcom/criteo/publisher/model/h;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/criteo/publisher/model/h;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/k/a/c;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "id"

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 45
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    .line 52
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "publisher"

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 55
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->d()Lcom/criteo/publisher/model/v;

    move-result-object v0

    if-nez v0, :cond_3

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->b:Lcom/google/gson/j;

    if-nez v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v1, Lcom/criteo/publisher/model/v;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->b:Lcom/google/gson/j;

    .line 62
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->d()Lcom/criteo/publisher/model/v;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "user"

    .line 64
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 65
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->g()Lcom/criteo/publisher/model/z;

    move-result-object v0

    if-nez v0, :cond_5

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->c:Lcom/google/gson/j;

    if-nez v0, :cond_6

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v1, Lcom/criteo/publisher/model/z;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->c:Lcom/google/gson/j;

    .line 72
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->g()Lcom/criteo/publisher/model/z;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "sdkVersion"

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 76
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    if-nez v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->a:Lcom/google/gson/j;

    .line 82
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "profileId"

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 86
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->d:Lcom/google/gson/j;

    if-nez v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->d:Lcom/google/gson/j;

    .line 90
    :cond_9
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "gdprConsent"

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 93
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->a()Lcom/criteo/publisher/k/a/c;

    move-result-object v0

    if-nez v0, :cond_a

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->e:Lcom/google/gson/j;

    if-nez v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const-class v1, Lcom/criteo/publisher/k/a/c;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->e:Lcom/google/gson/j;

    .line 100
    :cond_b
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->a()Lcom/criteo/publisher/k/a/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "slots"

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 103
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    .line 104
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_5

    .line 106
    :cond_c
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->f:Lcom/google/gson/j;

    if-nez v0, :cond_d

    .line 108
    iget-object v0, p0, Lcom/criteo/publisher/model/h$a;->g:Lcom/google/gson/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Lcom/criteo/publisher/model/q;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/gson/a/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/h$a;->f:Lcom/google/gson/j;

    .line 110
    :cond_d
    invoke-virtual {p2}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 112
    :goto_5
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
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/h$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/o;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAdapter(CdbRequest)"

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
    check-cast p2, Lcom/criteo/publisher/model/o;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/h$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/o;)V

    return-void
.end method
