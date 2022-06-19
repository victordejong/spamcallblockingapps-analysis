.class public final Lcom/dropbox/core/v2/c/b$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/c/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lcom/dropbox/core/v2/c/b$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/b$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/c/b$a;->a:Lcom/dropbox/core/v2/c/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1286
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1288
    invoke-static {p1}, Lcom/dropbox/core/v2/c/b$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1293
    invoke-static {p1}, Lcom/dropbox/core/v2/c/b$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1294
    invoke-static {p1}, Lcom/dropbox/core/v2/c/b$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "invalid_root"

    .line 1299
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1301
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/c/b$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1302
    sget-object v1, Lcom/dropbox/core/v2/c/c$a;->a:Lcom/dropbox/core/v2/c/c$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/c/c$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/c/c;

    .line 1303
    invoke-static {v1}, Lcom/dropbox/core/v2/c/b;->a(Lcom/dropbox/core/v2/c/c;)Lcom/dropbox/core/v2/c/b;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "no_permission"

    .line 1305
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1306
    sget-object v1, Lcom/dropbox/core/v2/c/b;->a:Lcom/dropbox/core/v2/c/b;

    goto :goto_1

    .line 1309
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/c/b;->b:Lcom/dropbox/core/v2/c/b;

    :goto_1
    if-nez v0, :cond_3

    .line 1312
    invoke-static {p1}, Lcom/dropbox/core/v2/c/b$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1313
    invoke-static {p1}, Lcom/dropbox/core/v2/c/b$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 1297
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 257
    check-cast p1, Lcom/dropbox/core/v2/c/b;

    .line 2262
    sget-object v0, Lcom/dropbox/core/v2/c/b$1;->a:[I

    .line 3123
    iget-object v1, p1, Lcom/dropbox/core/v2/c/b;->c:Lcom/dropbox/core/v2/c/b$b;

    .line 2262
    invoke-virtual {v1}, Lcom/dropbox/core/v2/c/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2276
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "no_permission"

    .line 2272
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2264
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_root"

    .line 2265
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/c/b$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2266
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2267
    sget-object v0, Lcom/dropbox/core/v2/c/c$a;->a:Lcom/dropbox/core/v2/c/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/c/b;->a(Lcom/dropbox/core/v2/c/b;)Lcom/dropbox/core/v2/c/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/c/c$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
