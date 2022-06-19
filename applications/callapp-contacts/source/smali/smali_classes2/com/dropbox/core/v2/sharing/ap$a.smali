.class final Lcom/dropbox/core/v2/sharing/ap$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/ap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ap$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 526
    new-instance v0, Lcom/dropbox/core/v2/sharing/ap$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ap$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ap$a;->a:Lcom/dropbox/core/v2/sharing/ap$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 525
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

    .line 1605
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1607
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ap$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1608
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1612
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ap$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1613
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ap$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_11

    const-string v3, "user_not_same_team_as_owner"

    .line 1618
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1619
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->a:Lcom/dropbox/core/v2/sharing/ap;

    goto/16 :goto_1

    :cond_1
    const-string v3, "user_not_allowed_by_owner"

    .line 1621
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1622
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->b:Lcom/dropbox/core/v2/sharing/ap;

    goto/16 :goto_1

    :cond_2
    const-string v3, "target_is_indirect_member"

    .line 1624
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1625
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->c:Lcom/dropbox/core/v2/sharing/ap;

    goto/16 :goto_1

    :cond_3
    const-string v3, "target_is_owner"

    .line 1627
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1628
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->d:Lcom/dropbox/core/v2/sharing/ap;

    goto/16 :goto_1

    :cond_4
    const-string v3, "target_is_self"

    .line 1630
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1631
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->e:Lcom/dropbox/core/v2/sharing/ap;

    goto/16 :goto_1

    :cond_5
    const-string v3, "target_not_active"

    .line 1633
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1634
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->f:Lcom/dropbox/core/v2/sharing/ap;

    goto/16 :goto_1

    :cond_6
    const-string v3, "folder_is_limited_team_folder"

    .line 1636
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1637
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->g:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_7
    const-string v3, "owner_not_on_team"

    .line 1639
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1640
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->h:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_8
    const-string v3, "permission_denied"

    .line 1642
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1643
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->i:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_9
    const-string v3, "restricted_by_team"

    .line 1645
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1646
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->j:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_a
    const-string v3, "user_account_type"

    .line 1648
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1649
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->k:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_b
    const-string v3, "user_not_on_team"

    .line 1651
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1652
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->l:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_c
    const-string v3, "folder_is_inside_shared_folder"

    .line 1654
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1655
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->m:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_d
    const-string v3, "restricted_by_parent_folder"

    .line 1657
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1658
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->n:Lcom/dropbox/core/v2/sharing/ap;

    goto :goto_1

    :cond_e
    const-string v3, "insufficient_plan"

    .line 1660
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1662
    sget-object v0, Lcom/dropbox/core/v2/sharing/v$a;->a:Lcom/dropbox/core/v2/sharing/v$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/sharing/v$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/v;

    move-result-object v0

    .line 1663
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/v;)Lcom/dropbox/core/v2/sharing/ap;

    move-result-object v0

    goto :goto_1

    .line 1666
    :cond_f
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap;->o:Lcom/dropbox/core/v2/sharing/ap;

    :goto_1
    if-nez v1, :cond_10

    .line 1669
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ap$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1670
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ap$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_10
    return-object v0

    .line 1616
    :cond_11
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

    .line 525
    check-cast p1, Lcom/dropbox/core/v2/sharing/ap;

    .line 2530
    sget-object v0, Lcom/dropbox/core/v2/sharing/ap$1;->a:[I

    .line 3226
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ap;->p:Lcom/dropbox/core/v2/sharing/ap$b;

    .line 2530
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ap$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2595
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2588
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "insufficient_plan"

    .line 2589
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ap$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2590
    sget-object v0, Lcom/dropbox/core/v2/sharing/v$a;->a:Lcom/dropbox/core/v2/sharing/v$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ap;->a(Lcom/dropbox/core/v2/sharing/ap;)Lcom/dropbox/core/v2/sharing/v;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/dropbox/core/v2/sharing/v$a;->a(Lcom/dropbox/core/v2/sharing/v;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2591
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_1
    const-string p1, "restricted_by_parent_folder"

    .line 2584
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "folder_is_inside_shared_folder"

    .line 2580
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "user_not_on_team"

    .line 2576
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "user_account_type"

    .line 2572
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "restricted_by_team"

    .line 2568
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "permission_denied"

    .line 2564
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p1, "owner_not_on_team"

    .line 2560
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const-string p1, "folder_is_limited_team_folder"

    .line 2556
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_9
    const-string p1, "target_not_active"

    .line 2552
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_a
    const-string p1, "target_is_self"

    .line 2548
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_b
    const-string p1, "target_is_owner"

    .line 2544
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_c
    const-string p1, "target_is_indirect_member"

    .line 2540
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_d
    const-string p1, "user_not_allowed_by_owner"

    .line 2536
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_e
    const-string p1, "user_not_same_team_as_owner"

    .line 2532
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
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
