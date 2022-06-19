.class final enum Lorg/jsoup/c/c$14;
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

    .line 1506
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 7

    .line 1508
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 1509
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    goto/16 :goto_2

    .line 1510
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const-string v1, "html"

    if-eqz v0, :cond_1

    .line 3377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1510
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 1512
    :cond_1
    invoke-static {p1}, Lorg/jsoup/c/c;->access$100(Lorg/jsoup/c/i;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1516
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 3405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 1517
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    .line 1518
    iget-object p1, p2, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    iget-object p1, p2, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    const-string p2, "body"

    .line 4159
    invoke-static {p2}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 4160
    invoke-static {p2}, Lorg/jsoup/select/h;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object p2

    .line 5056
    new-instance v1, Lorg/jsoup/select/a$b;

    invoke-direct {v1, v0, p2}, Lorg/jsoup/select/a$b;-><init>(Lorg/jsoup/nodes/h;Lorg/jsoup/select/d;)V

    const/4 p2, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_a

    .line 5066
    invoke-interface {v1, v2}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/m;)I

    move-result v4

    .line 5067
    sget v5, Lorg/jsoup/select/e$a;->e:I

    if-eq v4, v5, :cond_b

    .line 5070
    sget v5, Lorg/jsoup/select/e$a;->a:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->f()I

    move-result v5

    if-lez v5, :cond_2

    .line 5071
    invoke-virtual {v2, p2}, Lorg/jsoup/nodes/m;->a(I)Lorg/jsoup/nodes/m;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5076
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->A()Lorg/jsoup/nodes/m;

    move-result-object v5

    if-nez v5, :cond_6

    if-lez v3, :cond_6

    .line 5078
    sget v5, Lorg/jsoup/select/e$a;->a:I

    if-eq v4, v5, :cond_3

    sget v5, Lorg/jsoup/select/e$a;->b:I

    if-ne v4, v5, :cond_4

    .line 5079
    :cond_3
    invoke-interface {v1}, Lorg/jsoup/select/e;->a()I

    move-result v4

    .line 5080
    sget v5, Lorg/jsoup/select/e$a;->e:I

    if-eq v4, v5, :cond_b

    .line 5253
    :cond_4
    iget-object v5, v2, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    add-int/lit8 v3, v3, -0x1

    .line 5086
    sget v6, Lorg/jsoup/select/e$a;->d:I

    if-ne v4, v6, :cond_5

    .line 5087
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->y()V

    .line 5088
    :cond_5
    sget v4, Lorg/jsoup/select/e$a;->a:I

    move-object v2, v5

    goto :goto_1

    .line 5091
    :cond_6
    sget v5, Lorg/jsoup/select/e$a;->a:I

    if-eq v4, v5, :cond_7

    sget v5, Lorg/jsoup/select/e$a;->b:I

    if-ne v4, v5, :cond_8

    .line 5092
    :cond_7
    invoke-interface {v1}, Lorg/jsoup/select/e;->a()I

    move-result v4

    .line 5093
    sget v5, Lorg/jsoup/select/e$a;->e:I

    if-eq v4, v5, :cond_b

    :cond_8
    if-eq v2, v0, :cond_b

    .line 5099
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->A()Lorg/jsoup/nodes/m;

    move-result-object v5

    .line 5100
    sget v6, Lorg/jsoup/select/e$a;->d:I

    if-ne v4, v6, :cond_9

    .line 5101
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->y()V

    :cond_9
    move-object v2, v5

    goto :goto_0

    .line 5104
    :cond_a
    sget p2, Lorg/jsoup/select/e$a;->a:I

    .line 6061
    :cond_b
    iget-object p2, v1, Lorg/jsoup/select/a$b;->a:Lorg/jsoup/nodes/h;

    .line 1519
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1520
    :cond_c
    invoke-virtual {p1}, Lorg/jsoup/c/i;->g()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1523
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1524
    sget-object v0, Lorg/jsoup/c/c$14;->InBody:Lorg/jsoup/c/c;

    .line 6145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 1525
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_d
    :goto_2
    const/4 p1, 0x1

    return p1

    .line 1511
    :cond_e
    :goto_3
    sget-object v0, Lorg/jsoup/c/c$14;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method
