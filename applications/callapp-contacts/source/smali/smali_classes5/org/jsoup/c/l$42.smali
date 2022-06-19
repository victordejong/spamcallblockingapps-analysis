.class final enum Lorg/jsoup/c/l$42;
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

    .line 1000
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 1002
    invoke-virtual {p2}, Lorg/jsoup/c/a;->d()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 1018
    iget-object p1, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->a([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$c;->a(Ljava/lang/String;)Lorg/jsoup/c/i$c;

    return-void

    .line 1013
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 1014
    invoke-virtual {p1}, Lorg/jsoup/c/k;->b()V

    .line 1015
    sget-object p2, Lorg/jsoup/c/l$42;->Data:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1005
    :cond_1
    sget-object p2, Lorg/jsoup/c/l$42;->CommentEndDash:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 1008
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 1009
    invoke-virtual {p2}, Lorg/jsoup/c/a;->g()V

    .line 1010
    iget-object p1, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$c;->a(C)Lorg/jsoup/c/i$c;

    return-void

    nop

    :array_0
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
