.class final Lcom/dropbox/core/v2/sharing/az$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/az;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/az$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 509
    new-instance v0, Lcom/dropbox/core/v2/sharing/az$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/az$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/az$a;->a:Lcom/dropbox/core/v2/sharing/az$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/az;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 586
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/az$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 591
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/az$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 592
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/az$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_10

    const-string v3, "is_file"

    .line 597
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->a:Lcom/dropbox/core/v2/sharing/az;

    goto/16 :goto_1

    :cond_1
    const-string v3, "inside_shared_folder"

    .line 600
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->b:Lcom/dropbox/core/v2/sharing/az;

    goto/16 :goto_1

    :cond_2
    const-string v3, "contains_shared_folder"

    .line 603
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 604
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->c:Lcom/dropbox/core/v2/sharing/az;

    goto/16 :goto_1

    :cond_3
    const-string v3, "contains_app_folder"

    .line 606
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->d:Lcom/dropbox/core/v2/sharing/az;

    goto/16 :goto_1

    :cond_4
    const-string v3, "contains_team_folder"

    .line 609
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 610
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->e:Lcom/dropbox/core/v2/sharing/az;

    goto/16 :goto_1

    :cond_5
    const-string v3, "is_app_folder"

    .line 612
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 613
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->f:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_6
    const-string v3, "inside_app_folder"

    .line 615
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 616
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->g:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_7
    const-string v3, "is_public_folder"

    .line 618
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 619
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->h:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_8
    const-string v3, "inside_public_folder"

    .line 621
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 622
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->i:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_9
    const-string v3, "already_shared"

    .line 624
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 626
    sget-object v0, Lcom/dropbox/core/v2/sharing/be$a;->a:Lcom/dropbox/core/v2/sharing/be$a;

    invoke-static {p0, v2}, Lcom/dropbox/core/v2/sharing/be$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/be;

    move-result-object v0

    .line 627
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/be;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v2, "invalid_path"

    .line 629
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 630
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->j:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_b
    const-string v2, "is_osx_package"

    .line 632
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 633
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->k:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_c
    const-string v2, "inside_osx_package"

    .line 635
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 636
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->l:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    :cond_d
    const-string v2, "is_vault"

    .line 638
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 639
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->m:Lcom/dropbox/core/v2/sharing/az;

    goto :goto_1

    .line 642
    :cond_e
    sget-object v0, Lcom/dropbox/core/v2/sharing/az;->n:Lcom/dropbox/core/v2/sharing/az;

    :goto_1
    if-nez v1, :cond_f

    .line 645
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/az$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 646
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/az$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_f
    return-object v0

    .line 595
    :cond_10
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/sharing/az;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/dropbox/core/v2/sharing/az$1;->a:[I

    .line 1218
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/az;->o:Lcom/dropbox/core/v2/sharing/az$b;

    .line 513
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/az$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 574
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "is_vault"

    .line 570
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "inside_osx_package"

    .line 566
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "is_osx_package"

    .line 562
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "invalid_path"

    .line 558
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 551
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "already_shared"

    .line 552
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/az$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 553
    sget-object v0, Lcom/dropbox/core/v2/sharing/be$a;->a:Lcom/dropbox/core/v2/sharing/be$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/az;->a(Lcom/dropbox/core/v2/sharing/az;)Lcom/dropbox/core/v2/sharing/be;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/dropbox/core/v2/sharing/be$a;->a(Lcom/dropbox/core/v2/sharing/be;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 554
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_5
    const-string p1, "inside_public_folder"

    .line 547
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "is_public_folder"

    .line 543
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p1, "inside_app_folder"

    .line 539
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const-string p1, "is_app_folder"

    .line 535
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_9
    const-string p1, "contains_team_folder"

    .line 531
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_a
    const-string p1, "contains_app_folder"

    .line 527
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_b
    const-string p1, "contains_shared_folder"

    .line 523
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_c
    const-string p1, "inside_shared_folder"

    .line 519
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_d
    const-string p1, "is_file"

    .line 515
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 508
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/az$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/az;

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

    .line 508
    check-cast p1, Lcom/dropbox/core/v2/sharing/az;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/az$a;->a(Lcom/dropbox/core/v2/sharing/az;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
