.class final Lcom/dropbox/core/v2/clouddocs/k$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/clouddocs/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/clouddocs/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/clouddocs/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/k$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/k$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/clouddocs/k$a;->a:Lcom/dropbox/core/v2/clouddocs/k$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 358
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

    .line 1399
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1401
    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1406
    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1407
    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "rename_error"

    .line 1412
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1414
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1415
    sget-object v1, Lcom/dropbox/core/v2/clouddocs/j$a;->a:Lcom/dropbox/core/v2/clouddocs/j$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/j$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/clouddocs/j;

    move-result-object v1

    .line 1416
    invoke-static {v1}, Lcom/dropbox/core/v2/clouddocs/k;->a(Lcom/dropbox/core/v2/clouddocs/j;)Lcom/dropbox/core/v2/clouddocs/k;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "generic_error"

    .line 1418
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1420
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1421
    sget-object v1, Lcom/dropbox/core/v2/clouddocs/c$a;->a:Lcom/dropbox/core/v2/clouddocs/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/clouddocs/c;

    move-result-object v1

    .line 1422
    invoke-static {v1}, Lcom/dropbox/core/v2/clouddocs/k;->a(Lcom/dropbox/core/v2/clouddocs/c;)Lcom/dropbox/core/v2/clouddocs/k;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "locking_error"

    .line 1424
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1426
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1427
    sget-object v1, Lcom/dropbox/core/v2/clouddocs/g$a;->a:Lcom/dropbox/core/v2/clouddocs/g$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/g$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/clouddocs/g;

    move-result-object v1

    .line 1428
    invoke-static {v1}, Lcom/dropbox/core/v2/clouddocs/k;->a(Lcom/dropbox/core/v2/clouddocs/g;)Lcom/dropbox/core/v2/clouddocs/k;

    move-result-object v1

    goto :goto_1

    .line 1431
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/clouddocs/k;->a:Lcom/dropbox/core/v2/clouddocs/k;

    :goto_1
    if-nez v0, :cond_4

    .line 1434
    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1435
    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1410
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

    .line 358
    check-cast p1, Lcom/dropbox/core/v2/clouddocs/k;

    .line 2363
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/k$1;->a:[I

    .line 3141
    iget-object v1, p1, Lcom/dropbox/core/v2/clouddocs/k;->b:Lcom/dropbox/core/v2/clouddocs/k$b;

    .line 2363
    invoke-virtual {v1}, Lcom/dropbox/core/v2/clouddocs/k$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 2389
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2381
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "locking_error"

    .line 2382
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/clouddocs/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2383
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2384
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/g$a;->a:Lcom/dropbox/core/v2/clouddocs/g$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k;->c(Lcom/dropbox/core/v2/clouddocs/k;)Lcom/dropbox/core/v2/clouddocs/g;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/clouddocs/g$a;->a(Lcom/dropbox/core/v2/clouddocs/g;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2385
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2373
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "generic_error"

    .line 2374
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/clouddocs/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2375
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2376
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/c$a;->a:Lcom/dropbox/core/v2/clouddocs/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k;->b(Lcom/dropbox/core/v2/clouddocs/k;)Lcom/dropbox/core/v2/clouddocs/c;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/clouddocs/c$a;->a(Lcom/dropbox/core/v2/clouddocs/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2377
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2365
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "rename_error"

    .line 2366
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/clouddocs/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2367
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2368
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/j$a;->a:Lcom/dropbox/core/v2/clouddocs/j$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/k;->a(Lcom/dropbox/core/v2/clouddocs/k;)Lcom/dropbox/core/v2/clouddocs/j;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/clouddocs/j$a;->a(Lcom/dropbox/core/v2/clouddocs/j;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2369
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
