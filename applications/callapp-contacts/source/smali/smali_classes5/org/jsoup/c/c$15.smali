.class final enum Lorg/jsoup/c/c$15;
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

    .line 1530
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 2

    .line 1532
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 1533
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto :goto_0

    .line 1534
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1534
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1536
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1538
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1538
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1539
    sget-object v0, Lorg/jsoup/c/c$15;->InHead:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1541
    :cond_2
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1535
    :cond_4
    :goto_1
    sget-object v0, Lorg/jsoup/c/c$15;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method
