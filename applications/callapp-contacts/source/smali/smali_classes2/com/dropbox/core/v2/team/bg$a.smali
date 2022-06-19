.class final Lcom/dropbox/core/v2/team/bg$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/team/bg;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/bg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 428
    new-instance v0, Lcom/dropbox/core/v2/team/bg$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bg$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/bg$a;->a:Lcom/dropbox/core/v2/team/bg$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 427
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

    .line 1480
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1482
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1487
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1488
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "access_error"

    .line 1493
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1495
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bg$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1496
    sget-object v1, Lcom/dropbox/core/v2/team/aw$a;->a:Lcom/dropbox/core/v2/team/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/aw$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/aw;

    move-result-object v1

    .line 1497
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bg;->a(Lcom/dropbox/core/v2/team/aw;)Lcom/dropbox/core/v2/team/bg;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "status_error"

    .line 1499
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1501
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bg$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1502
    sget-object v1, Lcom/dropbox/core/v2/team/ba$a;->a:Lcom/dropbox/core/v2/team/ba$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/ba$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/ba;

    move-result-object v1

    .line 1503
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bg;->a(Lcom/dropbox/core/v2/team/ba;)Lcom/dropbox/core/v2/team/bg;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_shared_dropbox_error"

    .line 1505
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1507
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bg$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1508
    sget-object v1, Lcom/dropbox/core/v2/team/bf$a;->a:Lcom/dropbox/core/v2/team/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bf$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/bf;

    move-result-object v1

    .line 1509
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bg;->a(Lcom/dropbox/core/v2/team/bf;)Lcom/dropbox/core/v2/team/bg;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 1511
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1512
    sget-object v1, Lcom/dropbox/core/v2/team/bg;->a:Lcom/dropbox/core/v2/team/bg;

    goto :goto_1

    :cond_4
    const-string v2, "sync_settings_error"

    .line 1514
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1516
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bg$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1517
    sget-object v1, Lcom/dropbox/core/v2/files/ay$a;->a:Lcom/dropbox/core/v2/files/ay$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ay$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ay;

    move-result-object v1

    .line 1518
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bg;->a(Lcom/dropbox/core/v2/files/ay;)Lcom/dropbox/core/v2/team/bg;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_5

    .line 1524
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1525
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 1521
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1491
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

    .line 427
    check-cast p1, Lcom/dropbox/core/v2/team/bg;

    .line 2432
    sget-object v0, Lcom/dropbox/core/v2/team/bg$1;->a:[I

    .line 3156
    iget-object v1, p1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 2432
    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/bg$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2462
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sync_settings_error"

    .line 2463
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2464
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2465
    sget-object v0, Lcom/dropbox/core/v2/files/ay$a;->a:Lcom/dropbox/core/v2/files/ay$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg;->d(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/files/ay;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ay$a;->a(Lcom/dropbox/core/v2/files/ay;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2466
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2470
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4156
    iget-object p1, p1, Lcom/dropbox/core/v2/team/bg;->b:Lcom/dropbox/core/v2/team/bg$b;

    .line 2470
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "other"

    .line 2458
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2450
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_shared_dropbox_error"

    .line 2451
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2452
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2453
    sget-object v0, Lcom/dropbox/core/v2/team/bf$a;->a:Lcom/dropbox/core/v2/team/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg;->c(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/team/bf;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/bf$a;->a(Lcom/dropbox/core/v2/team/bf;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2454
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2442
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "status_error"

    .line 2443
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2444
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2445
    sget-object v0, Lcom/dropbox/core/v2/team/ba$a;->a:Lcom/dropbox/core/v2/team/ba$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg;->b(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/team/ba;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/ba$a;->a(Lcom/dropbox/core/v2/team/ba;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2446
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2434
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2435
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2436
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2437
    sget-object v0, Lcom/dropbox/core/v2/team/aw$a;->a:Lcom/dropbox/core/v2/team/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bg;->a(Lcom/dropbox/core/v2/team/bg;)Lcom/dropbox/core/v2/team/aw;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/aw$a;->a(Lcom/dropbox/core/v2/team/aw;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2438
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
