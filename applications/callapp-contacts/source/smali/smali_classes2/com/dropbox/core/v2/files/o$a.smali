.class final Lcom/dropbox/core/v2/files/o$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lcom/dropbox/core/v2/files/o$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/o$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/o$a;->a:Lcom/dropbox/core/v2/files/o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    invoke-static {p0}, Lcom/dropbox/core/v2/files/o$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    invoke-static {p0}, Lcom/dropbox/core/v2/files/o$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 286
    invoke-static {p0}, Lcom/dropbox/core/v2/files/o$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "unlocked"

    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    sget-object v0, Lcom/dropbox/core/v2/files/o;->a:Lcom/dropbox/core/v2/files/o;

    goto :goto_1

    :cond_1
    const-string v3, "single_user"

    .line 294
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/files/aw$a;->a:Lcom/dropbox/core/v2/files/aw$a;

    invoke-static {p0, v2}, Lcom/dropbox/core/v2/files/aw$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/aw;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/dropbox/core/v2/files/o;->a(Lcom/dropbox/core/v2/files/aw;)Lcom/dropbox/core/v2/files/o;

    move-result-object v0

    goto :goto_1

    .line 300
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/files/o;->b:Lcom/dropbox/core/v2/files/o;

    :goto_1
    if-nez v1, :cond_3

    .line 303
    invoke-static {p0}, Lcom/dropbox/core/v2/files/o$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 304
    invoke-static {p0}, Lcom/dropbox/core/v2/files/o$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 289
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/o;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/dropbox/core/v2/files/o$1;->a:[I

    .line 1119
    iget-object v1, p1, Lcom/dropbox/core/v2/files/o;->c:Lcom/dropbox/core/v2/files/o$b;

    .line 255
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/o$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "other"

    .line 268
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "single_user"

    .line 262
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/o$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/files/aw$a;->a:Lcom/dropbox/core/v2/files/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/o;->a(Lcom/dropbox/core/v2/files/o;)Lcom/dropbox/core/v2/files/aw;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/dropbox/core/v2/files/aw$a;->a(Lcom/dropbox/core/v2/files/aw;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_1
    const-string p1, "unlocked"

    .line 257
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/files/o$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/files/o;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/o$a;->a(Lcom/dropbox/core/v2/files/o;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
