.class final enum Lorg/jsoup/c/l$32;
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

    .line 745
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 3

    .line 747
    sget-object v0, Lorg/jsoup/c/l$32;->attributeDoubleValueCharsSorted:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b([C)Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 749
    iget-object v1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {v1, v0}, Lorg/jsoup/c/i$h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    .line 1205
    iput-boolean v2, v0, Lorg/jsoup/c/i$h;->e:Z

    .line 753
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    if-eqz p2, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v1, 0x26

    if-eq p2, v1, :cond_2

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    .line 774
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->c(C)V

    return-void

    .line 770
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 771
    sget-object p2, Lorg/jsoup/c/l$32;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 759
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/jsoup/c/k;->a(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_3

    .line 761
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->a([I)V

    return-void

    .line 763
    :cond_3
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, v1}, Lorg/jsoup/c/i$h;->c(C)V

    return-void

    .line 756
    :cond_4
    sget-object p2, Lorg/jsoup/c/l$32;->AfterAttributeValue_quoted:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 766
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 767
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->c(C)V

    return-void
.end method
