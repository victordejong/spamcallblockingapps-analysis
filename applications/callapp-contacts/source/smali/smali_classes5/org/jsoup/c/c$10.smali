.class final enum Lorg/jsoup/c/c$10;
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

    .line 1406
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 3

    .line 1408
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 1409
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 1411
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto :goto_0

    .line 1412
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1413
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1415
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_3

    .line 4377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1415
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1416
    sget-object v0, Lorg/jsoup/c/c$10;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1417
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1417
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5189
    iget-boolean p1, p2, Lorg/jsoup/c/b;->p:Z

    if-eqz p1, :cond_4

    .line 1419
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1422
    :cond_4
    sget-object p1, Lorg/jsoup/c/c$10;->AfterAfterBody:Lorg/jsoup/c/c;

    .line 6145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    .line 1424
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/c/i;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1427
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1428
    sget-object v0, Lorg/jsoup/c/c$10;->InBody:Lorg/jsoup/c/c;

    .line 7145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 1429
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
