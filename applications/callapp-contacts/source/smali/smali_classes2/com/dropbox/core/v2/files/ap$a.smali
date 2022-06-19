.class final Lcom/dropbox/core/v2/files/ap$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/ap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ap$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 636
    new-instance v0, Lcom/dropbox/core/v2/files/ap$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ap$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ap$a;->a:Lcom/dropbox/core/v2/files/ap$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 635
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

    .line 1720
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1722
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1723
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1727
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1728
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_f

    const-string v2, "from_lookup"

    .line 1733
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1735
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/ap$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1736
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    .line 1737
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    const-string v2, "from_write"

    .line 1739
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1741
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/ap$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1742
    sget-object v1, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    .line 1743
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-string v2, "to"

    .line 1745
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1747
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/ap$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1748
    sget-object v1, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    .line 1749
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ap;->b(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v2, "cant_copy_shared_folder"

    .line 1751
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1752
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->a:Lcom/dropbox/core/v2/files/ap;

    goto/16 :goto_1

    :cond_4
    const-string v2, "cant_nest_shared_folder"

    .line 1754
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1755
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->b:Lcom/dropbox/core/v2/files/ap;

    goto/16 :goto_1

    :cond_5
    const-string v2, "cant_move_folder_into_itself"

    .line 1757
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1758
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->c:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_6
    const-string v2, "too_many_files"

    .line 1760
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1761
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->d:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_7
    const-string v2, "duplicated_or_nested_paths"

    .line 1763
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1764
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->e:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_8
    const-string v2, "cant_transfer_ownership"

    .line 1766
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1767
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->f:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_9
    const-string v2, "insufficient_quota"

    .line 1769
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1770
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->g:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_a
    const-string v2, "internal_error"

    .line 1772
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1773
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->h:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_b
    const-string v2, "cant_move_shared_folder"

    .line 1775
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1776
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->i:Lcom/dropbox/core/v2/files/ap;

    goto :goto_1

    :cond_c
    const-string v2, "cant_move_into_vault"

    .line 1778
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1780
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/ap$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1781
    sget-object v1, Lcom/dropbox/core/v2/files/am$a;->a:Lcom/dropbox/core/v2/files/am$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/am$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/am;

    move-result-object v1

    .line 1782
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/am;)Lcom/dropbox/core/v2/files/ap;

    move-result-object v1

    goto :goto_1

    .line 1785
    :cond_d
    sget-object v1, Lcom/dropbox/core/v2/files/ap;->j:Lcom/dropbox/core/v2/files/ap;

    :goto_1
    if-nez v0, :cond_e

    .line 1788
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1789
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_e
    return-object v1

    .line 1731
    :cond_f
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

    .line 635
    check-cast p1, Lcom/dropbox/core/v2/files/ap;

    .line 2640
    sget-object v0, Lcom/dropbox/core/v2/files/ap$1;->a:[I

    .line 3249
    iget-object v1, p1, Lcom/dropbox/core/v2/files/ap;->k:Lcom/dropbox/core/v2/files/ap$b;

    .line 2640
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ap$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2710
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2702
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "cant_move_into_vault"

    .line 2703
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ap$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2704
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2705
    sget-object v0, Lcom/dropbox/core/v2/files/am$a;->a:Lcom/dropbox/core/v2/files/am$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap;->d(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/am;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/am$a;->a(Lcom/dropbox/core/v2/files/am;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2706
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_1
    const-string p1, "cant_move_shared_folder"

    .line 2698
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "internal_error"

    .line 2694
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "insufficient_quota"

    .line 2690
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "cant_transfer_ownership"

    .line 2686
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "duplicated_or_nested_paths"

    .line 2682
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "too_many_files"

    .line 2678
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p1, "cant_move_folder_into_itself"

    .line 2674
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const-string p1, "cant_nest_shared_folder"

    .line 2670
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_9
    const-string p1, "cant_copy_shared_folder"

    .line 2666
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2658
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "to"

    .line 2659
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ap$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2660
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2661
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap;->c(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/bl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2662
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2650
    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "from_write"

    .line 2651
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ap$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2652
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2653
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap;->b(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/bl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2654
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2642
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "from_lookup"

    .line 2643
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ap$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2644
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2645
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ap;->a(Lcom/dropbox/core/v2/files/ap;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2646
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
