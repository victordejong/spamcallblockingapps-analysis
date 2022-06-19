.class final enum Lorg/jsoup/c/c$22;
.super Lorg/jsoup/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private inBodyEndTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 8

    .line 36385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 628
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "br"

    const-string v5, "body"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "sarcasm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "span"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x8

    goto :goto_0

    :sswitch_8
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_9
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_a
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_b
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_c
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_d
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_f
    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 720
    sget-object v0, Lorg/jsoup/c/c$a;->s:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 721
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$22;->inBodyEndTagAdoption(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 722
    :cond_10
    sget-object v0, Lorg/jsoup/c/c$a;->r:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 723
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 725
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 728
    :cond_11
    invoke-virtual {p2}, Lorg/jsoup/c/b;->l()V

    .line 729
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 43152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 44046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 729
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 730
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 731
    :cond_12
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    goto/16 :goto_2

    .line 733
    :cond_13
    sget-object v0, Lorg/jsoup/c/c$a;->m:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "name"

    .line 734
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 735
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 736
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 739
    :cond_14
    invoke-virtual {p2}, Lorg/jsoup/c/b;->l()V

    .line 740
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 44152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 45046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 740
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 741
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 742
    :cond_15
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 743
    invoke-virtual {p2}, Lorg/jsoup/c/b;->n()V

    goto/16 :goto_2

    .line 746
    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$22;->anyOtherEndTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 634
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$22;->anyOtherEndTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 656
    :pswitch_1
    invoke-virtual {p2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 658
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 38555
    :pswitch_2
    iget-object p1, p2, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    const/4 v0, 0x0

    .line 38559
    iput-object v0, p2, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    if-eqz p1, :cond_19

    .line 663
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1

    .line 667
    :cond_17
    invoke-virtual {p2}, Lorg/jsoup/c/b;->l()V

    .line 668
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 39152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 40046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 669
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 671
    :cond_18
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->d(Lorg/jsoup/nodes/h;)Z

    goto/16 :goto_2

    .line 664
    :cond_19
    :goto_1
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 647
    :pswitch_3
    invoke-virtual {p2, v5}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 648
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 652
    :cond_1a
    sget-object p1, Lorg/jsoup/c/c$22;->AfterBody:Lorg/jsoup/c/c;

    .line 38145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_2

    .line 636
    :pswitch_4
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 637
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 640
    :cond_1b
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->j(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 37152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 38046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 641
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 642
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 643
    :cond_1c
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    goto/16 :goto_2

    .line 704
    :pswitch_5
    sget-object p1, Lorg/jsoup/c/c$a;->i:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->b([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 705
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 708
    :cond_1d
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->j(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 42152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 43046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 709
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 710
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 711
    :cond_1e
    sget-object p1, Lorg/jsoup/c/c$a;->i:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 688
    :pswitch_6
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 689
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v6

    .line 692
    :cond_1f
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->j(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 41152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 42046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 693
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 694
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 695
    :cond_20
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    goto :goto_2

    .line 715
    :pswitch_7
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 716
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    return v6

    .line 675
    :pswitch_8
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 676
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 677
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 678
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 680
    :cond_21
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->j(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 40152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 41046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 681
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 682
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 683
    :cond_22
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    :cond_23
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private inBodyEndTagAdoption(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 13

    .line 48385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 776
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-virtual {p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ge v3, v4, :cond_10

    .line 781
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->k(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v4

    if-nez v4, :cond_0

    .line 783
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$22;->anyOtherEndTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 784
    :cond_0
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->c(Lorg/jsoup/nodes/h;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 785
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 786
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->h(Lorg/jsoup/nodes/h;)V

    return v5

    .line 49152
    :cond_1
    iget-object v6, v4, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 50046
    iget-object v6, v6, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 788
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 789
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v2

    .line 791
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v6

    if-eq v6, v4, :cond_3

    .line 792
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 799
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move-object v10, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v6, :cond_6

    const/16 v11, 0x40

    if-ge v8, v11, :cond_6

    .line 801
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/h;

    if-ne v11, v4, :cond_4

    add-int/lit8 v9, v8, -0x1

    .line 803
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lorg/jsoup/nodes/h;

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_5

    .line 805
    invoke-static {v11}, Lorg/jsoup/c/b;->f(Lorg/jsoup/nodes/h;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v7, v11

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v7, :cond_7

    .line 50047
    iget-object p1, v4, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 50048
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 811
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 812
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->h(Lorg/jsoup/nodes/h;)V

    return v5

    :cond_7
    move-object v6, v7

    move-object v8, v6

    const/4 v5, 0x0

    :goto_4
    const/4 v9, 0x3

    if-ge v5, v9, :cond_b

    .line 821
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->c(Lorg/jsoup/nodes/h;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 822
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->e(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v6

    .line 50049
    :cond_8
    iget-object v9, p2, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lorg/jsoup/c/b;->a(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 824
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->d(Lorg/jsoup/nodes/h;)Z

    goto :goto_5

    :cond_9
    if-eq v6, v4, :cond_b

    .line 829
    new-instance v9, Lorg/jsoup/nodes/h;

    invoke-virtual {v6}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/jsoup/c/f;->b:Lorg/jsoup/c/f;

    invoke-static {v11, v12}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v11

    invoke-virtual {p2}, Lorg/jsoup/c/b;->d()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;)V

    .line 50050
    iget-object v11, p2, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-static {v11, v6, v9}, Lorg/jsoup/c/b;->a(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V

    .line 832
    invoke-virtual {p2, v6, v9}, Lorg/jsoup/c/b;->b(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V

    .line 50052
    iget-object v6, v8, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v6, Lorg/jsoup/nodes/h;

    if-eqz v6, :cond_a

    .line 841
    invoke-virtual {v8}, Lorg/jsoup/nodes/h;->y()V

    .line 842
    :cond_a
    invoke-virtual {v9, v8}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    move-object v6, v9

    move-object v8, v6

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 50053
    :cond_b
    iget-object v5, v10, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 50054
    iget-object v5, v5, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 847
    sget-object v6, Lorg/jsoup/c/c$a;->t:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 50055
    iget-object v5, v8, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v5, Lorg/jsoup/nodes/h;

    if-eqz v5, :cond_c

    .line 849
    invoke-virtual {v8}, Lorg/jsoup/nodes/h;->y()V

    .line 850
    :cond_c
    invoke-virtual {p2, v8}, Lorg/jsoup/c/b;->a(Lorg/jsoup/nodes/m;)V

    goto :goto_6

    .line 50056
    :cond_d
    iget-object v5, v8, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v5, Lorg/jsoup/nodes/h;

    if-eqz v5, :cond_e

    .line 853
    invoke-virtual {v8}, Lorg/jsoup/nodes/h;->y()V

    .line 854
    :cond_e
    invoke-virtual {v10, v8}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    .line 857
    :goto_6
    new-instance v5, Lorg/jsoup/nodes/h;

    .line 50057
    iget-object v6, v4, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 857
    invoke-virtual {p2}, Lorg/jsoup/c/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;)V

    .line 858
    invoke-virtual {v5}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;)V

    .line 859
    invoke-virtual {v7}, Lorg/jsoup/nodes/h;->w()Ljava/util/List;

    move-result-object v6

    new-array v8, v2, [Lorg/jsoup/nodes/m;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/jsoup/nodes/m;

    .line 860
    array-length v8, v6

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_f

    aget-object v10, v6, v9

    .line 861
    invoke-virtual {v5, v10}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 863
    :cond_f
    invoke-virtual {v7, v5}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    .line 864
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->h(Lorg/jsoup/nodes/h;)V

    .line 866
    invoke-virtual {p2, v4}, Lorg/jsoup/c/b;->d(Lorg/jsoup/nodes/h;)Z

    .line 867
    invoke-virtual {p2, v7, v5}, Lorg/jsoup/c/b;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    return v5
.end method

.method private inBodyStartTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 5377
    move-object v3, v1

    check-cast v3, Lorg/jsoup/c/i$g;

    .line 295
    invoke-virtual {v3}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "isindex"

    const-string v7, "input"

    const-string v8, "svg"

    const-string v9, "nobr"

    const-string v10, "form"

    const-string v11, "body"

    const-string v12, "li"

    const-string v13, "hr"

    const-string v14, "option"

    const-string v15, "button"

    const/16 v16, -0x1

    const-string v0, "a"

    const/4 v1, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "noembed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x23

    const/16 v16, 0x23

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x22

    const/16 v16, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "plaintext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x21

    const/16 v16, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "listing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x20

    const/16 v16, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x1f

    const/16 v16, 0x1f

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x1e

    const/16 v16, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x1d

    const/16 v16, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "span"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x1c

    const/16 v16, 0x1c

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x1b

    const/16 v16, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "math"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x1a

    const/16 v16, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x19

    const/16 v16, 0x19

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x18

    const/16 v16, 0x18

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x17

    const/16 v16, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "xmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x16

    const/16 v16, 0x16

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x15

    const/16 v16, 0x15

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "pre"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x14

    const/16 v16, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "rt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x13

    const/16 v16, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "rp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x12

    const/16 v16, 0x12

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x11

    const/16 v16, 0x11

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x10

    const/16 v16, 0x10

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "h6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0xf

    const/16 v16, 0xf

    goto/16 :goto_0

    :sswitch_15
    const-string v5, "h5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0xe

    const/16 v16, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "h4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0xd

    const/16 v16, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "h3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0xc

    const/16 v16, 0xc

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "h2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0xb

    const/16 v16, 0xb

    goto/16 :goto_0

    :sswitch_19
    const-string v5, "h1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0xa

    const/16 v16, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "dt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x9

    const/16 v16, 0x9

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "dd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x8

    const/16 v16, 0x8

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v5, 0x7

    const/16 v16, 0x7

    goto :goto_0

    :sswitch_1d
    const-string v5, "optgroup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v5, 0x6

    const/16 v16, 0x6

    goto :goto_0

    :sswitch_1e
    const-string v5, "select"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v5, 0x5

    const/16 v16, 0x5

    goto :goto_0

    :sswitch_1f
    const-string v5, "textarea"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v5, 0x4

    const/16 v16, 0x4

    goto :goto_0

    :sswitch_20
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_0

    :cond_20
    const/4 v5, 0x3

    const/16 v16, 0x3

    goto :goto_0

    :sswitch_21
    const-string v5, "iframe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_0

    :cond_21
    const/16 v16, 0x2

    goto :goto_0

    :sswitch_22
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_0

    :cond_22
    const/16 v16, 0x1

    goto :goto_0

    :sswitch_23
    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_0

    :cond_23
    const/16 v16, 0x0

    :goto_0
    const-string v5, "p"

    packed-switch v16, :pswitch_data_0

    .line 593
    sget-object v0, Lorg/jsoup/c/c$a;->n:[Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 594
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 595
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 35161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    :goto_1
    move-object/from16 v4, p0

    const/4 v0, 0x1

    goto/16 :goto_e

    .line 597
    :cond_24
    sget-object v0, Lorg/jsoup/c/c$a;->h:[Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 598
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 599
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 601
    :cond_25
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_1

    .line 602
    :cond_26
    sget-object v0, Lorg/jsoup/c/c$a;->g:[Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 603
    sget-object v0, Lorg/jsoup/c/c$22;->InHead:Lorg/jsoup/c/c;

    move-object/from16 v1, p1

    invoke-virtual {v2, v1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result v0

    return v0

    :cond_27
    const/4 v0, 0x1

    .line 604
    sget-object v5, Lorg/jsoup/c/c$a;->l:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 605
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 606
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 607
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->g(Lorg/jsoup/nodes/h;)V

    :goto_2
    move-object/from16 v4, p0

    goto/16 :goto_e

    .line 608
    :cond_28
    sget-object v5, Lorg/jsoup/c/c$a;->m:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 609
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 610
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 611
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->o()V

    .line 36161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    goto :goto_2

    .line 613
    :cond_29
    sget-object v5, Lorg/jsoup/c/c$a;->o:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 614
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_2

    .line 615
    :cond_2a
    sget-object v5, Lorg/jsoup/c/c$a;->q:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v4, p0

    .line 616
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    :cond_2b
    move-object/from16 v4, p0

    .line 619
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 620
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_0
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 502
    invoke-static {v3, v2}, Lorg/jsoup/c/c;->access$300(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    goto/16 :goto_e

    :pswitch_1
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 449
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 17555
    iget-object v5, v2, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    if-eqz v5, :cond_2c

    return v1

    .line 453
    :cond_2c
    invoke-virtual {v2, v10}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 454
    iget-object v1, v3, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    const-string v5, "action"

    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 18555
    iget-object v1, v2, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    .line 456
    iget-object v8, v3, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v8, v5}, Lorg/jsoup/nodes/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 458
    :cond_2d
    invoke-virtual {v2, v13}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    const-string v1, "label"

    .line 459
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 461
    iget-object v5, v3, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    const-string v8, "prompt"

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/b;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 462
    iget-object v5, v3, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2e
    const-string v5, "This is a searchable index. Enter search keywords: "

    .line 465
    :goto_3
    new-instance v8, Lorg/jsoup/c/i$b;

    invoke-direct {v8}, Lorg/jsoup/c/i$b;-><init>()V

    .line 19326
    iput-object v5, v8, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 465
    invoke-virtual {v2, v8}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    .line 468
    new-instance v5, Lorg/jsoup/nodes/b;

    invoke-direct {v5}, Lorg/jsoup/nodes/b;-><init>()V

    .line 469
    iget-object v3, v3, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/a;

    .line 20056
    iget-object v9, v8, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 470
    sget-object v11, Lorg/jsoup/c/c$a;->p:[Ljava/lang/String;

    invoke-static {v9, v11}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 471
    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_4

    :cond_30
    const-string v3, "name"

    .line 473
    invoke-virtual {v5, v3, v6}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 474
    invoke-virtual {v2, v7, v5}, Lorg/jsoup/c/b;->a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    .line 475
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 476
    invoke-virtual {v2, v13}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 477
    invoke-virtual {v2, v10}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    goto/16 :goto_e

    :pswitch_2
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 392
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 393
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 395
    :cond_31
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 396
    iget-object v1, v2, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    sget-object v2, Lorg/jsoup/c/l;->PLAINTEXT:Lorg/jsoup/c/l;

    .line 14124
    iput-object v2, v1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    goto/16 :goto_e

    :pswitch_3
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 421
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->c()Lorg/jsoup/nodes/f;

    move-result-object v6

    .line 14587
    iget v6, v6, Lorg/jsoup/nodes/f;->c:I

    .line 421
    sget v7, Lorg/jsoup/nodes/f$b;->b:I

    if-eq v6, v7, :cond_32

    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 422
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 424
    :cond_32
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 15161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 426
    sget-object v1, Lorg/jsoup/c/c$22;->InTable:Lorg/jsoup/c/c;

    .line 16145
    iput-object v1, v2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_e

    :pswitch_4
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 429
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 430
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object v3

    const-string v5, "type"

    .line 431
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "hidden"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 16161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 442
    invoke-virtual {v2, v8}, Lorg/jsoup/c/b;->b(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v1

    if-nez v1, :cond_33

    const-string v0, "img"

    .line 443
    invoke-virtual {v3, v0}, Lorg/jsoup/c/i$g;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result v0

    return v0

    .line 445
    :cond_33
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_6
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 318
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 319
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 411
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 412
    invoke-virtual {v2, v9}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 413
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 414
    invoke-virtual {v2, v9}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 415
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 417
    :cond_34
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 418
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->g(Lorg/jsoup/nodes/h;)V

    goto/16 :goto_e

    :pswitch_8
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 516
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 518
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_9
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 339
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 342
    invoke-virtual {v3}, Lorg/jsoup/c/i$g;->l()Lorg/jsoup/nodes/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/a;

    .line 9056
    iget-object v5, v3, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 343
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 344
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_5

    :pswitch_a
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 13555
    iget-object v6, v2, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    if-eqz v6, :cond_36

    .line 383
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 386
    :cond_36
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 387
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 389
    :cond_37
    invoke-virtual {v2, v3, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;Z)Lorg/jsoup/nodes/k;

    goto/16 :goto_e

    :pswitch_b
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 348
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v5

    .line 350
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v0, :cond_3a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/h;

    .line 9152
    iget-object v6, v6, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 10046
    iget-object v6, v6, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 350
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_7

    .line 10161
    :cond_38
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 355
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 356
    invoke-virtual {v3}, Lorg/jsoup/c/i$g;->l()Lorg/jsoup/nodes/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/a;

    .line 11056
    iget-object v5, v3, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 357
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 358
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_6

    :cond_3a
    :goto_7
    return v1

    :pswitch_c
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 489
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 490
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 492
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 22161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 494
    invoke-static {v3, v2}, Lorg/jsoup/c/c;->access$300(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    goto/16 :goto_e

    :pswitch_d
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 521
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 523
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_e
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 544
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 545
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 547
    :cond_3c
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 548
    iget-object v3, v2, Lorg/jsoup/c/b;->s:Lorg/jsoup/c/a;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    .line 28161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    goto/16 :goto_e

    :pswitch_f
    move-object/from16 v4, p0

    const/4 v0, 0x1

    const-string v1, "ruby"

    .line 581
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 582
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->l()V

    .line 583
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v5

    .line 34152
    iget-object v5, v5, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 35046
    iget-object v5, v5, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 583
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 584
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 585
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->d(Ljava/lang/String;)V

    .line 587
    :cond_3d
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_10
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 6161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 323
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_8
    if-lez v6, :cond_40

    .line 325
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/h;

    .line 7152
    iget-object v8, v7, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 8046
    iget-object v8, v8, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 326
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 327
    invoke-virtual {v2, v12}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    goto :goto_9

    .line 330
    :cond_3e
    invoke-static {v7}, Lorg/jsoup/c/b;->f(Lorg/jsoup/nodes/h;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 8152
    iget-object v7, v7, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 9046
    iget-object v7, v7, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 330
    sget-object v8, Lorg/jsoup/c/c$a;->j:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    :cond_3f
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 333
    :cond_40
    :goto_9
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 334
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 336
    :cond_41
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_11
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 435
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 436
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 438
    :cond_42
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 17161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    goto/16 :goto_e

    :pswitch_12
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 532
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 533
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 535
    :cond_43
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 27152
    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 28046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 535
    sget-object v5, Lorg/jsoup/c/c$a;->i:[Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 536
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 539
    :cond_44
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_13
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 29161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 555
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_a
    if-lez v6, :cond_47

    .line 557
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/h;

    .line 30152
    iget-object v8, v7, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 31046
    iget-object v8, v8, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 558
    sget-object v9, Lorg/jsoup/c/c$a;->k:[Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 31152
    iget-object v1, v7, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 32046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 559
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    goto :goto_b

    .line 562
    :cond_45
    invoke-static {v7}, Lorg/jsoup/c/b;->f(Lorg/jsoup/nodes/h;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 32152
    iget-object v7, v7, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 33046
    iget-object v7, v7, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 562
    sget-object v8, Lorg/jsoup/c/c$a;->j:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    :cond_46
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 565
    :cond_47
    :goto_b
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 566
    invoke-virtual {v2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 568
    :cond_48
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_14
    move-object/from16 v4, p0

    move-object v1, v0

    const/4 v0, 0x1

    .line 301
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->k(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 302
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 303
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 306
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->b(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 308
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->h(Lorg/jsoup/nodes/h;)V

    .line 309
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->d(Lorg/jsoup/nodes/h;)Z

    .line 312
    :cond_49
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 313
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 314
    invoke-virtual {v2, v1}, Lorg/jsoup/c/b;->g(Lorg/jsoup/nodes/h;)V

    goto/16 :goto_e

    :pswitch_15
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 505
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 506
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 24161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 25149
    iget-object v1, v2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 510
    sget-object v3, Lorg/jsoup/c/c$22;->InTable:Lorg/jsoup/c/c;

    invoke-virtual {v1, v3}, Lorg/jsoup/c/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    sget-object v3, Lorg/jsoup/c/c$22;->InCaption:Lorg/jsoup/c/c;

    invoke-virtual {v1, v3}, Lorg/jsoup/c/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    sget-object v3, Lorg/jsoup/c/c$22;->InTableBody:Lorg/jsoup/c/c;

    invoke-virtual {v1, v3}, Lorg/jsoup/c/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    sget-object v3, Lorg/jsoup/c/c$22;->InRow:Lorg/jsoup/c/c;

    invoke-virtual {v1, v3}, Lorg/jsoup/c/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    sget-object v3, Lorg/jsoup/c/c$22;->InCell:Lorg/jsoup/c/c;

    invoke-virtual {v1, v3}, Lorg/jsoup/c/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_c

    .line 513
    :cond_4a
    sget-object v1, Lorg/jsoup/c/c$22;->InSelect:Lorg/jsoup/c/c;

    .line 27145
    iput-object v1, v2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_e

    .line 511
    :cond_4b
    :goto_c
    sget-object v1, Lorg/jsoup/c/c$22;->InSelectInTable:Lorg/jsoup/c/c;

    .line 26145
    iput-object v1, v2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_e

    :pswitch_16
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 480
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 20151
    iget-boolean v3, v3, Lorg/jsoup/c/i$h;->f:Z

    if-nez v3, :cond_52

    .line 482
    iget-object v3, v2, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    sget-object v5, Lorg/jsoup/c/l;->Rcdata:Lorg/jsoup/c/l;

    .line 21124
    iput-object v5, v3, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    .line 483
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->b()V

    .line 21161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 485
    sget-object v1, Lorg/jsoup/c/c$22;->Text:Lorg/jsoup/c/c;

    .line 22145
    iput-object v1, v2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_e

    :pswitch_17
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 573
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 33152
    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 34046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 573
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 574
    invoke-virtual {v2, v14}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 575
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 576
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_e

    :pswitch_18
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 23161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    .line 498
    invoke-static {v3, v2}, Lorg/jsoup/c/c;->access$300(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    goto/16 :goto_e

    :pswitch_19
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 399
    invoke-virtual {v2, v15}, Lorg/jsoup/c/b;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 401
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 402
    invoke-virtual {v2, v15}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 403
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    goto :goto_e

    .line 405
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->m()V

    .line 406
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 14161
    iput-boolean v1, v2, Lorg/jsoup/c/b;->n:Z

    goto :goto_e

    :pswitch_1a
    move-object/from16 v4, p0

    const/4 v0, 0x1

    .line 363
    invoke-virtual {v2, v4}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v5

    .line 365
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v0, :cond_53

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_4e

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/h;

    .line 11152
    iget-object v6, v6, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 12046
    iget-object v6, v6, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 365
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_f

    .line 12165
    :cond_4e
    iget-boolean v6, v2, Lorg/jsoup/c/b;->n:Z

    if-nez v6, :cond_4f

    return v1

    .line 371
    :cond_4f
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 12241
    iget-object v6, v1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v6, Lorg/jsoup/nodes/h;

    if-eqz v6, :cond_50

    .line 373
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->y()V

    .line 375
    :cond_50
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_51

    .line 376
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d

    .line 377
    :cond_51
    invoke-virtual {v2, v3}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 378
    sget-object v1, Lorg/jsoup/c/c$22;->InFrameset:Lorg/jsoup/c/c;

    .line 13145
    iput-object v1, v2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :cond_52
    :goto_e
    return v0

    :cond_53
    :goto_f
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_23
        -0x521dd8ce -> :sswitch_22
        -0x47007d5c -> :sswitch_21
        -0x3c35778b -> :sswitch_20
        -0x3bcc48c6 -> :sswitch_1f
        -0x3600cb04 -> :sswitch_1e
        -0x4d08054 -> :sswitch_1d
        0x61 -> :sswitch_1c
        0xc80 -> :sswitch_1b
        0xc90 -> :sswitch_1a
        0xcc9 -> :sswitch_19
        0xcca -> :sswitch_18
        0xccb -> :sswitch_17
        0xccc -> :sswitch_16
        0xccd -> :sswitch_15
        0xcce -> :sswitch_14
        0xd0a -> :sswitch_13
        0xd7d -> :sswitch_12
        0xe3e -> :sswitch_11
        0xe42 -> :sswitch_10
        0x1b2a3 -> :sswitch_f
        0x1be64 -> :sswitch_e
        0x1d01b -> :sswitch_d
        0x2e39a2 -> :sswitch_c
        0x300cc4 -> :sswitch_b
        0x3107ab -> :sswitch_a
        0x330708 -> :sswitch_9
        0x33add1 -> :sswitch_8
        0x35f74a -> :sswitch_7
        0x5faa95b -> :sswitch_6
        0x5fb57ca -> :sswitch_5
        0x6903bce -> :sswitch_4
        0xad8ba84 -> :sswitch_3
        0x759d29f7 -> :sswitch_2
        0x7ca6c5e8 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
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
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final anyOtherEndTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 5

    .line 45385
    check-cast p1, Lorg/jsoup/c/i$f;

    .line 753
    iget-object p1, p1, Lorg/jsoup/c/i$f;->c:Ljava/lang/String;

    .line 754
    invoke-virtual {p2}, Lorg/jsoup/c/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 756
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    .line 46152
    iget-object v4, v3, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 47046
    iget-object v4, v4, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 757
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 758
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->j(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 47152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 48046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 759
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 761
    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    goto :goto_1

    .line 764
    :cond_1
    invoke-static {v3}, Lorg/jsoup/c/b;->f(Lorg/jsoup/nodes/h;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 765
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 256
    sget-object v0, Lorg/jsoup/c/c$17;->a:[I

    iget-object v1, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v1}, Lorg/jsoup/c/i$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1405
    :cond_0
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 2331
    iget-object v0, p1, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 259
    invoke-static {}, Lorg/jsoup/c/c;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 3165
    :cond_1
    iget-boolean v0, p2, Lorg/jsoup/c/b;->n:Z

    if-eqz v0, :cond_2

    .line 263
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p2}, Lorg/jsoup/c/b;->m()V

    .line 265
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/c/b;->m()V

    .line 268
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    .line 4161
    iput-boolean v3, p2, Lorg/jsoup/c/b;->n:Z

    goto :goto_0

    .line 284
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$22;->inBodyEndTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 282
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$22;->inBodyStartTag(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 278
    :cond_5
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 4393
    :cond_6
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 274
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    :goto_0
    return v1
.end method
