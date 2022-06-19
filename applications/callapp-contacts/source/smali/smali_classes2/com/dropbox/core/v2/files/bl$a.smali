.class final Lcom/dropbox/core/v2/files/bl$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/bl;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bl$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 432
    new-instance v0, Lcom/dropbox/core/v2/files/bl$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bl$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 486
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bl$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 491
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bl$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 492
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bl$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_b

    const-string v2, "malformed_path"

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_1

    .line 500
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/files/bl$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 501
    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    .line 504
    invoke-static {}, Lcom/dropbox/core/v2/files/bl;->a()Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    goto :goto_1

    .line 507
    :cond_2
    invoke-static {v1}, Lcom/dropbox/core/v2/files/bl;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "conflict"

    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/files/bl$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 513
    sget-object v1, Lcom/dropbox/core/v2/files/bk$a;->a:Lcom/dropbox/core/v2/files/bk$a;

    invoke-static {p0}, Lcom/dropbox/core/v2/files/bk$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bk;

    move-result-object v1

    .line 514
    invoke-static {v1}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bk;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "no_write_permission"

    .line 516
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 517
    sget-object v1, Lcom/dropbox/core/v2/files/bl;->a:Lcom/dropbox/core/v2/files/bl;

    goto :goto_1

    :cond_5
    const-string v2, "insufficient_space"

    .line 519
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 520
    sget-object v1, Lcom/dropbox/core/v2/files/bl;->b:Lcom/dropbox/core/v2/files/bl;

    goto :goto_1

    :cond_6
    const-string v2, "disallowed_name"

    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 523
    sget-object v1, Lcom/dropbox/core/v2/files/bl;->c:Lcom/dropbox/core/v2/files/bl;

    goto :goto_1

    :cond_7
    const-string v2, "team_folder"

    .line 525
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 526
    sget-object v1, Lcom/dropbox/core/v2/files/bl;->d:Lcom/dropbox/core/v2/files/bl;

    goto :goto_1

    :cond_8
    const-string v2, "too_many_write_operations"

    .line 528
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 529
    sget-object v1, Lcom/dropbox/core/v2/files/bl;->e:Lcom/dropbox/core/v2/files/bl;

    goto :goto_1

    .line 532
    :cond_9
    sget-object v1, Lcom/dropbox/core/v2/files/bl;->f:Lcom/dropbox/core/v2/files/bl;

    :goto_1
    if-nez v0, :cond_a

    .line 535
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bl$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 536
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bl$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_a
    return-object v1

    .line 495
    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/dropbox/core/v2/files/bl$1;->a:[I

    .line 1178
    iget-object v1, p1, Lcom/dropbox/core/v2/files/bl;->g:Lcom/dropbox/core/v2/files/bl$b;

    .line 436
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/bl$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 474
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "too_many_write_operations"

    .line 470
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "team_folder"

    .line 466
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "disallowed_name"

    .line 462
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "insufficient_space"

    .line 458
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "no_write_permission"

    .line 454
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 446
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "conflict"

    .line 447
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/bl$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 448
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/dropbox/core/v2/files/bk$a;->a:Lcom/dropbox/core/v2/files/bk$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl;->b(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/bk;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/bk$a;->a(Lcom/dropbox/core/v2/files/bk;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 450
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 438
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "malformed_path"

    .line 439
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/bl$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 440
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 441
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl;->a(Lcom/dropbox/core/v2/files/bl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 442
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

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 431
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

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

    .line 431
    check-cast p1, Lcom/dropbox/core/v2/files/bl;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
