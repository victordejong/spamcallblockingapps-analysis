.class final Lcom/dropbox/core/v2/files/ak$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/files/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ak$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Lcom/dropbox/core/v2/files/ak$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ak$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ak$a;->a:Lcom/dropbox/core/v2/files/ak$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ak;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 243
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ak$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 244
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ak$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_6

    move-object v0, v1

    move-object v2, v0

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "dimensions"

    .line 256
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    sget-object v1, Lcom/dropbox/core/v2/files/i$a;->a:Lcom/dropbox/core/v2/files/i$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/i;

    goto :goto_0

    :cond_2
    const-string v4, "location"

    .line 259
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    sget-object v0, Lcom/dropbox/core/v2/files/z$a;->a:Lcom/dropbox/core/v2/files/z$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/z;

    goto :goto_0

    :cond_3
    const-string v4, "time_taken"

    .line 262
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1056
    sget-object v2, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 263
    invoke-static {v2}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    goto :goto_0

    .line 266
    :cond_4
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ak$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 269
    :cond_5
    new-instance v3, Lcom/dropbox/core/v2/files/ak;

    invoke-direct {v3, v1, v0, v2}, Lcom/dropbox/core/v2/files/ak;-><init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V

    goto :goto_1

    .line 271
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 272
    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/ak$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ak;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string v0, "photo"

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 275
    sget-object v0, Lcom/dropbox/core/v2/files/an$a;->a:Lcom/dropbox/core/v2/files/an$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/an$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/an;

    move-result-object v3

    goto :goto_1

    :cond_8
    const-string v0, "video"

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 278
    sget-object v0, Lcom/dropbox/core/v2/files/bj$a;->a:Lcom/dropbox/core/v2/files/bj$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/files/bj$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/bj;

    move-result-object v3

    :goto_1
    if-nez p1, :cond_9

    .line 284
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ak$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 286
    :cond_9
    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ak;->a()Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v3

    .line 281
    :cond_a
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No subtype found that matches tag: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 205
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/ak$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ak;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 205
    check-cast p1, Lcom/dropbox/core/v2/files/ak;

    .line 1210
    instance-of v0, p1, Lcom/dropbox/core/v2/files/an;

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/dropbox/core/v2/files/an$a;->a:Lcom/dropbox/core/v2/files/an$a;

    check-cast p1, Lcom/dropbox/core/v2/files/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/an$a;->a(Lcom/dropbox/core/v2/files/an;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 1214
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/files/bj;

    if-eqz v0, :cond_1

    .line 1215
    sget-object v0, Lcom/dropbox/core/v2/files/bj$a;->a:Lcom/dropbox/core/v2/files/bj$a;

    check-cast p1, Lcom/dropbox/core/v2/files/bj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/bj$a;->a(Lcom/dropbox/core/v2/files/bj;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 1219
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1221
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/ak;->a:Lcom/dropbox/core/v2/files/i;

    if-eqz v0, :cond_3

    const-string v0, "dimensions"

    .line 1222
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1223
    sget-object v0, Lcom/dropbox/core/v2/files/i$a;->a:Lcom/dropbox/core/v2/files/i$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ak;->a:Lcom/dropbox/core/v2/files/i;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1225
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/ak;->b:Lcom/dropbox/core/v2/files/z;

    if-eqz v0, :cond_4

    const-string v0, "location"

    .line 1226
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1227
    sget-object v0, Lcom/dropbox/core/v2/files/z$a;->a:Lcom/dropbox/core/v2/files/z$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ak;->b:Lcom/dropbox/core/v2/files/z;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1229
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/ak;->c:Ljava/util/Date;

    if-eqz v0, :cond_5

    const-string v0, "time_taken"

    .line 1230
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 1231
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ak;->c:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_5
    if-nez p3, :cond_6

    .line 1234
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_6
    return-void
.end method
