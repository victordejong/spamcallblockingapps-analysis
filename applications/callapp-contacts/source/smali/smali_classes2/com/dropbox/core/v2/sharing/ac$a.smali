.class final Lcom/dropbox/core/v2/sharing/ac$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ac$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 317
    new-instance v0, Lcom/dropbox/core/v2/sharing/ac$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ac$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ac$a;->a:Lcom/dropbox/core/v2/sharing/ac$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 316
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

    .line 1353
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1355
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1360
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1361
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "user_error"

    .line 1366
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1368
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/ac$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1369
    sget-object v1, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object v1

    .line 1370
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ac;->a(Lcom/dropbox/core/v2/sharing/bn;)Lcom/dropbox/core/v2/sharing/ac;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "access_error"

    .line 1372
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1374
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/ac$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1375
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object v1

    .line 1376
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ac;->a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/ac;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "invalid_cursor"

    .line 1378
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1379
    sget-object v1, Lcom/dropbox/core/v2/sharing/ac;->a:Lcom/dropbox/core/v2/sharing/ac;

    goto :goto_1

    .line 1382
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/sharing/ac;->b:Lcom/dropbox/core/v2/sharing/ac;

    :goto_1
    if-nez v0, :cond_4

    .line 1385
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1386
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1364
    :cond_5
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

    .line 316
    check-cast p1, Lcom/dropbox/core/v2/sharing/ac;

    .line 2321
    sget-object v0, Lcom/dropbox/core/v2/sharing/ac$1;->a:[I

    .line 3137
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ac;->c:Lcom/dropbox/core/v2/sharing/ac$b;

    .line 2321
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ac$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2343
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "invalid_cursor"

    .line 2339
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2331
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2332
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ac$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2333
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2334
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac;->b(Lcom/dropbox/core/v2/sharing/ac;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2335
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2323
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user_error"

    .line 2324
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ac$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2325
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2326
    sget-object v0, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ac;->a(Lcom/dropbox/core/v2/sharing/ac;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/dropbox/core/v2/sharing/bn;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2327
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
