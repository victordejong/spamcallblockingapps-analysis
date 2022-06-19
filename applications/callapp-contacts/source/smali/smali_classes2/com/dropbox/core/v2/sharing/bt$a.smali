.class final Lcom/dropbox/core/v2/sharing/bt$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bt;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 416
    new-instance v0, Lcom/dropbox/core/v2/sharing/bt$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bt$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bt$a;->a:Lcom/dropbox/core/v2/sharing/bt$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 415
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

    .line 1464
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1466
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1467
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1471
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1472
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "access_error"

    .line 1477
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1479
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/bt$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1480
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 1481
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bt;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "member_error"

    .line 1483
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1485
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/bt$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1486
    sget-object v1, Lcom/dropbox/core/v2/sharing/bd$a;->a:Lcom/dropbox/core/v2/sharing/bd$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bd$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object v1

    .line 1487
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/bd;)Lcom/dropbox/core/v2/sharing/bt;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "no_explicit_access"

    .line 1489
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1491
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/bt$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1492
    sget-object v1, Lcom/dropbox/core/v2/sharing/e$a;->a:Lcom/dropbox/core/v2/sharing/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v1

    .line 1493
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/bt;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "insufficient_plan"

    .line 1495
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1496
    sget-object v1, Lcom/dropbox/core/v2/sharing/bt;->a:Lcom/dropbox/core/v2/sharing/bt;

    goto :goto_1

    :cond_4
    const-string v2, "no_permission"

    .line 1498
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1499
    sget-object v1, Lcom/dropbox/core/v2/sharing/bt;->b:Lcom/dropbox/core/v2/sharing/bt;

    goto :goto_1

    .line 1502
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/sharing/bt;->c:Lcom/dropbox/core/v2/sharing/bt;

    :goto_1
    if-nez v0, :cond_6

    .line 1505
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1506
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 1475
    :cond_7
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

    .line 415
    check-cast p1, Lcom/dropbox/core/v2/sharing/bt;

    .line 2420
    sget-object v0, Lcom/dropbox/core/v2/sharing/bt$1;->a:[I

    .line 3168
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bt;->d:Lcom/dropbox/core/v2/sharing/bt$b;

    .line 2420
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/bt$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2454
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "no_permission"

    .line 2450
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "insufficient_plan"

    .line 2446
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2438
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_explicit_access"

    .line 2439
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bt$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2440
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2441
    sget-object v0, Lcom/dropbox/core/v2/sharing/e$a;->a:Lcom/dropbox/core/v2/sharing/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt;->c(Lcom/dropbox/core/v2/sharing/bt;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/e$a;->a(Lcom/dropbox/core/v2/sharing/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2442
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2430
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_error"

    .line 2431
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bt$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2432
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2433
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$a;->a:Lcom/dropbox/core/v2/sharing/bd$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt;->b(Lcom/dropbox/core/v2/sharing/bt;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/bd$a;->a(Lcom/dropbox/core/v2/sharing/bd;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2434
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2422
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2423
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bt$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2424
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2425
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bt;->a(Lcom/dropbox/core/v2/sharing/bt;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2426
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
