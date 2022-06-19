.class final enum Lorg/jsoup/c/l$35;
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

    .line 811
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 813
    sget-object v0, Lorg/jsoup/c/l$35;->attributeValueUnquoted:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b([C)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 815
    iget-object v1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {v1, v0}, Lorg/jsoup/c/i$h;->d(Ljava/lang/String;)V

    .line 817
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    if-eqz p2, :cond_6

    const/16 v0, 0x20

    if-eq p2, v0, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v0, 0x60

    if-eq p2, v0, :cond_4

    const v0, 0xffff

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9

    if-eq p2, v0, :cond_5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc

    if-eq p2, v0, :cond_5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_5

    const/16 v0, 0x26

    if-eq p2, v0, :cond_1

    const/16 v0, 0x27

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 834
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 835
    sget-object p2, Lorg/jsoup/c/l$35;->Data:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_1
    const/16 p2, 0x3e

    .line 827
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/jsoup/c/k;->a(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_2

    .line 829
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->a([I)V

    return-void

    .line 831
    :cond_2
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, v0}, Lorg/jsoup/c/i$h;->c(C)V

    return-void

    .line 842
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 843
    sget-object p2, Lorg/jsoup/c/l$35;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 850
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 854
    :goto_0
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->c(C)V

    return-void

    .line 824
    :cond_5
    sget-object p2, Lorg/jsoup/c/l$35;->BeforeAttributeName:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 838
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 839
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->c(C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
