.class final enum Lorg/jsoup/c/c$13;
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

    .line 1482
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 3

    .line 1484
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 1485
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto/16 :goto_0

    .line 1486
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 1487
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto :goto_0

    .line 1488
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1489
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1491
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_3

    .line 4377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1491
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1492
    sget-object v0, Lorg/jsoup/c/c$13;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1493
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1493
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1494
    sget-object p1, Lorg/jsoup/c/c$13;->AfterAfterFrameset:Lorg/jsoup/c/c;

    .line 5145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    .line 1495
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1495
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "noframes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1496
    sget-object v0, Lorg/jsoup/c/c$13;->InHead:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1497
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/c/i;->g()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1500
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
