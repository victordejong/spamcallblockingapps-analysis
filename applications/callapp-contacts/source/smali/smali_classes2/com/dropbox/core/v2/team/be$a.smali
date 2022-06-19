.class final Lcom/dropbox/core/v2/team/be$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/team/be;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/be$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    new-instance v0, Lcom/dropbox/core/v2/team/be$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/be$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/be$a;->a:Lcom/dropbox/core/v2/team/be$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 416
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

    .line 1473
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1475
    invoke-static {p1}, Lcom/dropbox/core/v2/team/be$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1476
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1480
    invoke-static {p1}, Lcom/dropbox/core/v2/team/be$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1481
    invoke-static {p1}, Lcom/dropbox/core/v2/team/be$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 1486
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1488
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/be$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1489
    sget-object v1, Lcom/dropbox/core/v2/team/aw$a;->a:Lcom/dropbox/core/v2/team/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/aw$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/aw;

    move-result-object v1

    .line 1490
    invoke-static {v1}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/aw;)Lcom/dropbox/core/v2/team/be;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "status_error"

    .line 1492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1494
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/be$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1495
    sget-object v1, Lcom/dropbox/core/v2/team/ba$a;->a:Lcom/dropbox/core/v2/team/ba$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/ba$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/ba;

    move-result-object v1

    .line 1496
    invoke-static {v1}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/ba;)Lcom/dropbox/core/v2/team/be;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_shared_dropbox_error"

    .line 1498
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1500
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/be$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1501
    sget-object v1, Lcom/dropbox/core/v2/team/bf$a;->a:Lcom/dropbox/core/v2/team/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bf$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/bf;

    move-result-object v1

    .line 1502
    invoke-static {v1}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/bf;)Lcom/dropbox/core/v2/team/be;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 1504
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1505
    sget-object v1, Lcom/dropbox/core/v2/team/be;->a:Lcom/dropbox/core/v2/team/be;

    goto :goto_1

    :cond_4
    const-string v2, "invalid_folder_name"

    .line 1507
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1508
    sget-object v1, Lcom/dropbox/core/v2/team/be;->b:Lcom/dropbox/core/v2/team/be;

    goto :goto_1

    :cond_5
    const-string v2, "folder_name_already_used"

    .line 1510
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1511
    sget-object v1, Lcom/dropbox/core/v2/team/be;->c:Lcom/dropbox/core/v2/team/be;

    goto :goto_1

    :cond_6
    const-string v2, "folder_name_reserved"

    .line 1513
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1514
    sget-object v1, Lcom/dropbox/core/v2/team/be;->d:Lcom/dropbox/core/v2/team/be;

    :goto_1
    if-nez v0, :cond_7

    .line 1520
    invoke-static {p1}, Lcom/dropbox/core/v2/team/be$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1521
    invoke-static {p1}, Lcom/dropbox/core/v2/team/be$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 1517
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_9
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

    .line 416
    check-cast p1, Lcom/dropbox/core/v2/team/be;

    .line 2421
    sget-object v0, Lcom/dropbox/core/v2/team/be$1;->a:[I

    .line 3158
    iget-object v1, p1, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    .line 2421
    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/be$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2463
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4158
    iget-object p1, p1, Lcom/dropbox/core/v2/team/be;->e:Lcom/dropbox/core/v2/team/be$b;

    .line 2463
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "folder_name_reserved"

    .line 2459
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "folder_name_already_used"

    .line 2455
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "invalid_folder_name"

    .line 2451
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "other"

    .line 2447
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2439
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_shared_dropbox_error"

    .line 2440
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/be$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2441
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2442
    sget-object v0, Lcom/dropbox/core/v2/team/bf$a;->a:Lcom/dropbox/core/v2/team/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/be;->c(Lcom/dropbox/core/v2/team/be;)Lcom/dropbox/core/v2/team/bf;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/bf$a;->a(Lcom/dropbox/core/v2/team/bf;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2443
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2431
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "status_error"

    .line 2432
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/be$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2433
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2434
    sget-object v0, Lcom/dropbox/core/v2/team/ba$a;->a:Lcom/dropbox/core/v2/team/ba$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/be;->b(Lcom/dropbox/core/v2/team/be;)Lcom/dropbox/core/v2/team/ba;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/ba$a;->a(Lcom/dropbox/core/v2/team/ba;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2435
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2423
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2424
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/be$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2425
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2426
    sget-object v0, Lcom/dropbox/core/v2/team/aw$a;->a:Lcom/dropbox/core/v2/team/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/be;->a(Lcom/dropbox/core/v2/team/be;)Lcom/dropbox/core/v2/team/aw;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/aw$a;->a(Lcom/dropbox/core/v2/team/aw;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2427
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
