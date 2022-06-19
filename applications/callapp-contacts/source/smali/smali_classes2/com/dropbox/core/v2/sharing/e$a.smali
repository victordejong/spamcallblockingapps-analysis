.class final Lcom/dropbox/core/v2/sharing/e$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 632
    new-instance v0, Lcom/dropbox/core/v2/sharing/e$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/e$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/e$a;->a:Lcom/dropbox/core/v2/sharing/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 718
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/e$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 723
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/e$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 724
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/e$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_f

    const-string v2, "access_error"

    .line 729
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/e$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 732
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 733
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    const-string v2, "email_unverified"

    .line 735
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 736
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->a:Lcom/dropbox/core/v2/sharing/e;

    goto/16 :goto_1

    :cond_2
    const-string v2, "banned_member"

    .line 738
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->b:Lcom/dropbox/core/v2/sharing/e;

    goto/16 :goto_1

    :cond_3
    const-string v2, "bad_member"

    .line 741
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 743
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/e$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 744
    sget-object v1, Lcom/dropbox/core/v2/sharing/f$a;->a:Lcom/dropbox/core/v2/sharing/f$a;

    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/f$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object v1

    .line 745
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/f;)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-string v2, "cant_share_outside_team"

    .line 747
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 748
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->c:Lcom/dropbox/core/v2/sharing/e;

    goto/16 :goto_1

    :cond_5
    const-string v2, "too_many_members"

    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 752
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/e$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 4020
    sget-object v1, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 753
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 754
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/dropbox/core/v2/sharing/e;->a(J)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v2, "too_many_pending_invites"

    .line 756
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 758
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/sharing/e$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 5020
    sget-object v1, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 759
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 760
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/dropbox/core/v2/sharing/e;->b(J)Lcom/dropbox/core/v2/sharing/e;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string v2, "rate_limit"

    .line 762
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 763
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->d:Lcom/dropbox/core/v2/sharing/e;

    goto :goto_1

    :cond_8
    const-string v2, "too_many_invitees"

    .line 765
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 766
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->e:Lcom/dropbox/core/v2/sharing/e;

    goto :goto_1

    :cond_9
    const-string v2, "insufficient_plan"

    .line 768
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 769
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->f:Lcom/dropbox/core/v2/sharing/e;

    goto :goto_1

    :cond_a
    const-string v2, "team_folder"

    .line 771
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 772
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->g:Lcom/dropbox/core/v2/sharing/e;

    goto :goto_1

    :cond_b
    const-string v2, "no_permission"

    .line 774
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 775
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->h:Lcom/dropbox/core/v2/sharing/e;

    goto :goto_1

    :cond_c
    const-string v2, "invalid_shared_folder"

    .line 777
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 778
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->i:Lcom/dropbox/core/v2/sharing/e;

    goto :goto_1

    .line 781
    :cond_d
    sget-object v1, Lcom/dropbox/core/v2/sharing/e;->j:Lcom/dropbox/core/v2/sharing/e;

    :goto_1
    if-nez v0, :cond_e

    .line 784
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/e$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 785
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/e$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_e
    return-object v1

    .line 727
    :cond_f
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/sharing/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 636
    sget-object v0, Lcom/dropbox/core/v2/sharing/e$1;->a:[I

    .line 1247
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/e;->k:Lcom/dropbox/core/v2/sharing/e$b;

    .line 636
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 706
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "invalid_shared_folder"

    .line 702
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "no_permission"

    .line 698
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "team_folder"

    .line 694
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "insufficient_plan"

    .line 690
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "too_many_invitees"

    .line 686
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "rate_limit"

    .line 682
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 674
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "too_many_pending_invites"

    .line 675
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/e$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 676
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3020
    sget-object v0, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 677
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/e;->d(Lcom/dropbox/core/v2/sharing/e;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 678
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 666
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "too_many_members"

    .line 667
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/e$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 668
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2020
    sget-object v0, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 669
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/e;->c(Lcom/dropbox/core/v2/sharing/e;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 670
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_8
    const-string p1, "cant_share_outside_team"

    .line 662
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 654
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "bad_member"

    .line 655
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/e$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 656
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/dropbox/core/v2/sharing/f$a;->a:Lcom/dropbox/core/v2/sharing/f$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/e;->b(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/f;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/f$a;->a(Lcom/dropbox/core/v2/sharing/f;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 658
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_a
    const-string p1, "banned_member"

    .line 650
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_b
    const-string p1, "email_unverified"

    .line 646
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 638
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 639
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/e$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 640
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 641
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/e;->a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 642
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

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 631
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/e;

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

    .line 631
    check-cast p1, Lcom/dropbox/core/v2/sharing/e;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/e$a;->a(Lcom/dropbox/core/v2/sharing/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
