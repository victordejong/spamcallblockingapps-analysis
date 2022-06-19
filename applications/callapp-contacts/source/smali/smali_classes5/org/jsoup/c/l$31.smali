.class final enum Lorg/jsoup/c/l$31;
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

    .line 696
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 698
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x60

    if-eq v0, v1, :cond_3

    const v1, 0xffff

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 740
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 741
    sget-object p2, Lorg/jsoup/c/l$31;->AttributeValue_unquoted:Lorg/jsoup/c/l;

    .line 8124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 728
    :pswitch_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 729
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 730
    sget-object p2, Lorg/jsoup/c/l$31;->Data:Lorg/jsoup/c/l;

    .line 6124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 715
    :cond_0
    sget-object p2, Lorg/jsoup/c/l$31;->AttributeValue_singleQuoted:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 711
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 712
    sget-object p2, Lorg/jsoup/c/l$31;->AttributeValue_unquoted:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 723
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 724
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 725
    sget-object p2, Lorg/jsoup/c/l$31;->Data:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 735
    :cond_3
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 736
    iget-object p2, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$h;->c(C)V

    .line 737
    sget-object p2, Lorg/jsoup/c/l$31;->AttributeValue_unquoted:Lorg/jsoup/c/l;

    .line 7124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 708
    :cond_4
    sget-object p2, Lorg/jsoup/c/l$31;->AttributeValue_doubleQuoted:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    :cond_5
    return-void

    .line 718
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 719
    iget-object p2, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$h;->c(C)V

    .line 720
    sget-object p2, Lorg/jsoup/c/l$31;->AttributeValue_unquoted:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
