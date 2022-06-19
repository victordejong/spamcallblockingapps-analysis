.class final enum Lorg/jsoup/c/c$9;
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

    .line 1388
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 1390
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const-string v1, "select"

    if-eqz v0, :cond_0

    .line 2377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1390
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/c/c$a;->I:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1392
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1393
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 1394
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1394
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jsoup/c/c$a;->I:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1395
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1396
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1397
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1398
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1402
    :cond_2
    sget-object v0, Lorg/jsoup/c/c$9;->InSelect:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method
