.class final enum Lorg/jsoup/c/l$41;
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

    .line 972
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 1

    .line 974
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    if-eqz p2, :cond_3

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    .line 995
    iget-object v0, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {v0, p2}, Lorg/jsoup/c/i$c;->a(C)Lorg/jsoup/c/i$c;

    .line 996
    sget-object p2, Lorg/jsoup/c/l$41;->Comment:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 990
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 991
    invoke-virtual {p1}, Lorg/jsoup/c/k;->b()V

    .line 992
    sget-object p2, Lorg/jsoup/c/l$41;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 985
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 986
    invoke-virtual {p1}, Lorg/jsoup/c/k;->b()V

    .line 987
    sget-object p2, Lorg/jsoup/c/l$41;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 977
    :cond_2
    sget-object p2, Lorg/jsoup/c/l$41;->CommentStartDash:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 980
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 981
    iget-object p2, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$c;->a(C)Lorg/jsoup/c/i$c;

    .line 982
    sget-object p2, Lorg/jsoup/c/l$41;->Comment:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
