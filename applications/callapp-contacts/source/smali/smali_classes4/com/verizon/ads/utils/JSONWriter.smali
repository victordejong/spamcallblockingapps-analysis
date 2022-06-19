.class public final Lcom/verizon/ads/utils/JSONWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\t\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0006\u0010\u000b\u001a\u00020\u0008J\u0006\u0010\u000c\u001a\u00020\u0008J\u0006\u0010\r\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0014J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0015J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0016J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/verizon/ads/utils/JSONWriter;",
        "Ljava/io/Closeable;",
        "writer",
        "Ljava/io/Writer;",
        "(Ljava/io/Writer;)V",
        "jsonWriter",
        "Landroid/util/JsonWriter;",
        "beginArray",
        "",
        "beginObject",
        "close",
        "endArray",
        "endObject",
        "flush",
        "name",
        "",
        "setIndent",
        "indent",
        "value",
        "",
        "",
        "",
        "",
        "write",
        "obj",
        "Lorg/json/JSONObject;",
        "writeArray",
        "array",
        "Lorg/json/JSONArray;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final jsonWriter:Landroid/util/JsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    return-void
.end method


# virtual methods
.method public final beginArray()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public final beginObject()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public final close()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    return-void
.end method

.method public final endArray()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public final endObject()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method public final name(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    return-void
.end method

.method public final value(D)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-void
.end method

.method public final value(J)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-void
.end method

.method public final value(Ljava/lang/Number;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-void
.end method

.method public final value(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void
.end method

.method public final value(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/verizon/ads/utils/JSONWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-void
.end method

.method public final write(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/verizon/ads/utils/JSONWriter;->beginObject()V

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "childNames"

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "childName"

    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/verizon/ads/utils/JSONWriter;->name(Ljava/lang/String;)V

    .line 33
    instance-of v1, v2, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 34
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->write(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 36
    :cond_1
    instance-of v1, v2, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 37
    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->writeArray(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 39
    :cond_2
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 40
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/verizon/ads/utils/JSONWriter;->value(Z)V

    goto :goto_0

    .line 42
    :cond_3
    instance-of v1, v2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 43
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(J)V

    goto :goto_0

    .line 45
    :cond_4
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 46
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(D)V

    goto :goto_0

    .line 48
    :cond_5
    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_6

    .line 49
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(Ljava/lang/Number;)V

    goto :goto_0

    .line 51
    :cond_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_7
    invoke-virtual {p0}, Lcom/verizon/ads/utils/JSONWriter;->endObject()V

    return-void
.end method

.method public final writeArray(Lorg/json/JSONArray;)V
    .locals 4

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/verizon/ads/utils/JSONWriter;->beginArray()V

    .line 66
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 68
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 69
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->write(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 71
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 72
    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->writeArray(Lorg/json/JSONArray;)V

    goto :goto_1

    .line 74
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 75
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(Z)V

    goto :goto_1

    .line 77
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 78
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/verizon/ads/utils/JSONWriter;->value(J)V

    goto :goto_1

    .line 80
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 81
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/verizon/ads/utils/JSONWriter;->value(D)V

    goto :goto_1

    .line 83
    :cond_4
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 84
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(Ljava/lang/Number;)V

    goto :goto_1

    .line 86
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 87
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/utils/JSONWriter;->value(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/verizon/ads/utils/JSONWriter;->endArray()V

    return-void
.end method
