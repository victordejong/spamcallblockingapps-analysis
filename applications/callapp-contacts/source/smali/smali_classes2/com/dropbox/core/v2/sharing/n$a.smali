.class final Lcom/dropbox/core/v2/sharing/n$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lcom/dropbox/core/v2/sharing/n$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/n$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/n$a;->a:Lcom/dropbox/core/v2/sharing/n$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1393
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1395
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1400
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1401
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const-string v3, "invalid_member"

    .line 1406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1407
    sget-object v0, Lcom/dropbox/core/v2/sharing/n;->a:Lcom/dropbox/core/v2/sharing/n;

    goto :goto_1

    :cond_1
    const-string v3, "no_permission"

    .line 1409
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1410
    sget-object v0, Lcom/dropbox/core/v2/sharing/n;->b:Lcom/dropbox/core/v2/sharing/n;

    goto :goto_1

    :cond_2
    const-string v3, "access_error"

    .line 1412
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1414
    invoke-static {v3, p1}, Lcom/dropbox/core/v2/sharing/n$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1415
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object v0

    .line 1416
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/n;->a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/n;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "no_explicit_access"

    .line 1418
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1420
    sget-object v0, Lcom/dropbox/core/v2/sharing/ai$a;->a:Lcom/dropbox/core/v2/sharing/ai$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/sharing/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ai;

    move-result-object v0

    .line 1421
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/n;->a(Lcom/dropbox/core/v2/sharing/ai;)Lcom/dropbox/core/v2/sharing/n;

    move-result-object v0

    goto :goto_1

    .line 1424
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/n;->c:Lcom/dropbox/core/v2/sharing/n;

    :goto_1
    if-nez v1, :cond_5

    .line 1427
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1428
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v0

    .line 1404
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 353
    check-cast p1, Lcom/dropbox/core/v2/sharing/n;

    .line 2358
    sget-object v0, Lcom/dropbox/core/v2/sharing/n$1;->a:[I

    .line 3152
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/n;->d:Lcom/dropbox/core/v2/sharing/n$b;

    .line 2358
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/n$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string p1, "other"

    .line 2383
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2376
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_explicit_access"

    .line 2377
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/n$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2378
    sget-object v0, Lcom/dropbox/core/v2/sharing/ai$a;->a:Lcom/dropbox/core/v2/sharing/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n;->b(Lcom/dropbox/core/v2/sharing/n;)Lcom/dropbox/core/v2/sharing/ai;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/dropbox/core/v2/sharing/ai$a;->a(Lcom/dropbox/core/v2/sharing/ai;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2379
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2368
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2369
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/n$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2370
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2371
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/n;->a(Lcom/dropbox/core/v2/sharing/n;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2372
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_2
    const-string p1, "no_permission"

    .line 2364
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "invalid_member"

    .line 2360
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
