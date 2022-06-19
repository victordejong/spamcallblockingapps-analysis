.class final enum Lorg/jsoup/c/l$39;
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

    .line 924
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 1

    const-string v0, "--"

    .line 926
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object p2, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {p2}, Lorg/jsoup/c/i$c;->a()Lorg/jsoup/c/i;

    .line 928
    sget-object p2, Lorg/jsoup/c/l$39;->CommentStart:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_0
    const-string v0, "DOCTYPE"

    .line 929
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    sget-object p2, Lorg/jsoup/c/l$39;->Doctype:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_1
    const-string v0, "[CDATA["

    .line 931
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3245
    iget-object p2, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jsoup/c/i;->a(Ljava/lang/StringBuilder;)V

    .line 936
    sget-object p2, Lorg/jsoup/c/l$39;->CdataSection:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 938
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 939
    invoke-virtual {p1}, Lorg/jsoup/c/k;->c()V

    .line 940
    sget-object p2, Lorg/jsoup/c/l$39;->BogusComment:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void
.end method
