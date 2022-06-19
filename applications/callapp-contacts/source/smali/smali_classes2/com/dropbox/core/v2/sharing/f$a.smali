.class final Lcom/dropbox/core/v2/sharing/f$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 471
    new-instance v0, Lcom/dropbox/core/v2/sharing/f$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/f$a;->a:Lcom/dropbox/core/v2/sharing/f$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 525
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/f$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/f$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 531
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/f$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "automatic_group"

    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    sget-object v1, Lcom/dropbox/core/v2/sharing/f;->a:Lcom/dropbox/core/v2/sharing/f;

    goto :goto_1

    :cond_1
    const-string v2, "invalid_dropbox_id"

    .line 539
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/f$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 5052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 542
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 543
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/f;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "invalid_email"

    .line 545
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/f$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 6052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 548
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/f;->b(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "unverified_dropbox_id"

    .line 551
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/f$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 7052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 554
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/f;->c(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "group_deleted"

    .line 557
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 558
    sget-object v1, Lcom/dropbox/core/v2/sharing/f;->b:Lcom/dropbox/core/v2/sharing/f;

    goto :goto_1

    :cond_5
    const-string v2, "group_not_on_team"

    .line 560
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    sget-object v1, Lcom/dropbox/core/v2/sharing/f;->c:Lcom/dropbox/core/v2/sharing/f;

    goto :goto_1

    .line 564
    :cond_6
    sget-object v1, Lcom/dropbox/core/v2/sharing/f;->d:Lcom/dropbox/core/v2/sharing/f;

    :goto_1
    if-nez v0, :cond_7

    .line 567
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/f$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 568
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/f$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 534
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/sharing/f;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/dropbox/core/v2/sharing/f$1;->a:[I

    .line 1186
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/f;->e:Lcom/dropbox/core/v2/sharing/f$b;

    .line 475
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/f$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 513
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "group_not_on_team"

    .line 509
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "group_deleted"

    .line 505
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 497
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "unverified_dropbox_id"

    .line 498
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/f$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 499
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 500
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/f;->c(Lcom/dropbox/core/v2/sharing/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 501
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 489
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_email"

    .line 490
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/f$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 491
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 492
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/f;->b(Lcom/dropbox/core/v2/sharing/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 493
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 481
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_dropbox_id"

    .line 482
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/f$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 483
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 484
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/f;->a(Lcom/dropbox/core/v2/sharing/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 485
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_5
    const-string p1, "automatic_group"

    .line 477
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 470
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/f$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/f;

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

    .line 470
    check-cast p1, Lcom/dropbox/core/v2/sharing/f;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/f$a;->a(Lcom/dropbox/core/v2/sharing/f;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
