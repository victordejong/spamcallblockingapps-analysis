.class final enum Lorg/jsoup/c/l$46;
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

    .line 1078
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 1080
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    const-string v0, "--!"

    if-eqz p2, :cond_3

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 1101
    iget-object v1, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {v1, v0}, Lorg/jsoup/c/i$c;->a(Ljava/lang/String;)Lorg/jsoup/c/i$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jsoup/c/i$c;->a(C)Lorg/jsoup/c/i$c;

    .line 1102
    sget-object p2, Lorg/jsoup/c/l$46;->Comment:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1096
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 1097
    invoke-virtual {p1}, Lorg/jsoup/c/k;->b()V

    .line 1098
    sget-object p2, Lorg/jsoup/c/l$46;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1087
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/k;->b()V

    .line 1088
    sget-object p2, Lorg/jsoup/c/l$46;->Data:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1083
    :cond_2
    iget-object p2, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$c;->a(Ljava/lang/String;)Lorg/jsoup/c/i$c;

    .line 1084
    sget-object p2, Lorg/jsoup/c/l$46;->CommentEndDash:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1091
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 1092
    iget-object p2, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$c;->a(Ljava/lang/String;)Lorg/jsoup/c/i$c;

    move-result-object p2

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/c/i$c;->a(C)Lorg/jsoup/c/i$c;

    .line 1093
    sget-object p2, Lorg/jsoup/c/l$46;->Comment:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
