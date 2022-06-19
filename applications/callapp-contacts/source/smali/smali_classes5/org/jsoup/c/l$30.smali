.class final enum Lorg/jsoup/c/l$30;
.super Lorg/jsoup/c/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 653
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 690
    iget-object v0, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {v0}, Lorg/jsoup/c/i$h;->i()V

    .line 691
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 692
    sget-object p2, Lorg/jsoup/c/l$30;->AttributeName:Lorg/jsoup/c/l;

    .line 7124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 669
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 670
    sget-object p2, Lorg/jsoup/c/l$30;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 666
    :pswitch_1
    sget-object p2, Lorg/jsoup/c/l$30;->BeforeAttributeValue:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 678
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 679
    sget-object p2, Lorg/jsoup/c/l$30;->Data:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 663
    :cond_1
    sget-object p2, Lorg/jsoup/c/l$30;->SelfClosingStartTag:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 684
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 685
    iget-object p2, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p2}, Lorg/jsoup/c/i$h;->i()V

    .line 686
    iget-object p2, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$h;->b(C)V

    .line 687
    sget-object p2, Lorg/jsoup/c/l$30;->AttributeName:Lorg/jsoup/c/l;

    .line 6124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    :cond_3
    return-void

    .line 673
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 674
    iget-object p2, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$h;->b(C)V

    .line 675
    sget-object p2, Lorg/jsoup/c/l$30;->AttributeName:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
