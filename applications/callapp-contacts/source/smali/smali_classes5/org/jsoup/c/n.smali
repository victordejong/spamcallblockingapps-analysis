.class public final Lorg/jsoup/c/n;
.super Lorg/jsoup/c/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/jsoup/c/m;-><init>()V

    return-void
.end method

.method private a(Lorg/jsoup/nodes/m;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/jsoup/c/n;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    return-void
.end method


# virtual methods
.method final a()Lorg/jsoup/c/f;
    .locals 1

    .line 26
    sget-object v0, Lorg/jsoup/c/f;->b:Lorg/jsoup/c/f;

    return-object v0
.end method

.method protected final a(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/c/m;->a(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)V

    .line 32
    iget-object p1, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/jsoup/c/n;->u:Lorg/jsoup/nodes/f;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lorg/jsoup/c/n;->u:Lorg/jsoup/nodes/f;

    .line 1568
    iget-object p1, p1, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 33
    sget p2, Lorg/jsoup/nodes/f$a$a;->b:I

    .line 2487
    iput p2, p1, Lorg/jsoup/nodes/f$a;->h:I

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lorg/jsoup/c/m;->a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    move-result p1

    return p1
.end method

.method protected final a(Lorg/jsoup/c/i;)Z
    .locals 6

    .line 47
    sget-object v0, Lorg/jsoup/c/n$1;->a:[I

    iget-object v1, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v1}, Lorg/jsoup/c/i$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/a/c;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8369
    :pswitch_0
    check-cast p1, Lorg/jsoup/c/i$d;

    .line 9111
    new-instance v0, Lorg/jsoup/nodes/g;

    iget-object v1, p0, Lorg/jsoup/c/n;->y:Lorg/jsoup/c/f;

    .line 10055
    iget-object v3, p1, Lorg/jsoup/c/i$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9111
    invoke-virtual {v1, v3}, Lorg/jsoup/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10063
    iget-object v3, p1, Lorg/jsoup/c/i$d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10067
    iget-object v4, p1, Lorg/jsoup/c/i$d;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9111
    invoke-direct {v0, v1, v3, v4}, Lorg/jsoup/nodes/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11059
    iget-object p1, p1, Lorg/jsoup/c/i$d;->c:Ljava/lang/String;

    .line 9112
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->b_(Ljava/lang/String;)V

    .line 9113
    invoke-direct {p0, v0}, Lorg/jsoup/c/n;->a(Lorg/jsoup/nodes/m;)V

    goto/16 :goto_4

    .line 6405
    :pswitch_1
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 7331
    iget-object v0, p1, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 7401
    instance-of p1, p1, Lorg/jsoup/c/i$a;

    if-eqz p1, :cond_0

    .line 7107
    new-instance p1, Lorg/jsoup/nodes/c;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jsoup/nodes/p;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/p;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lorg/jsoup/c/n;->a(Lorg/jsoup/nodes/m;)V

    goto/16 :goto_4

    .line 5393
    :pswitch_2
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 6093
    new-instance v0, Lorg/jsoup/nodes/d;

    invoke-virtual {p1}, Lorg/jsoup/c/i$c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    .line 6095
    iget-boolean p1, p1, Lorg/jsoup/c/i$c;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6098
    invoke-virtual {v0}, Lorg/jsoup/nodes/d;->d()Lorg/jsoup/nodes/q;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    .line 6102
    :cond_1
    invoke-direct {p0, v0}, Lorg/jsoup/c/n;->a(Lorg/jsoup/nodes/m;)V

    goto/16 :goto_4

    .line 4385
    :pswitch_3
    check-cast p1, Lorg/jsoup/c/i$f;

    .line 5123
    iget-object v0, p0, Lorg/jsoup/c/n;->y:Lorg/jsoup/c/f;

    iget-object p1, p1, Lorg/jsoup/c/i$f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jsoup/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5126
    iget-object v0, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_3

    .line 5127
    iget-object v3, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    .line 5128
    invoke-virtual {v3}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    .line 5136
    iget-object p1, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_6

    .line 5137
    iget-object v0, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 5138
    iget-object v3, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eq v0, v1, :cond_6

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 3377
    :pswitch_4
    check-cast p1, Lorg/jsoup/c/i$g;

    .line 4076
    invoke-virtual {p1}, Lorg/jsoup/c/i$g;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/jsoup/c/n;->y:Lorg/jsoup/c/f;

    invoke-static {v0, v3}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v0

    .line 4078
    iget-object v3, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    if-eqz v3, :cond_4

    .line 4079
    iget-object v3, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    iget-object v4, p0, Lorg/jsoup/c/n;->y:Lorg/jsoup/c/f;

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/c/f;)I

    .line 4081
    :cond_4
    new-instance v3, Lorg/jsoup/nodes/h;

    iget-object v4, p0, Lorg/jsoup/c/n;->y:Lorg/jsoup/c/f;

    iget-object v5, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v4, v5}, Lorg/jsoup/c/f;->a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 4082
    invoke-direct {p0, v3}, Lorg/jsoup/c/n;->a(Lorg/jsoup/nodes/m;)V

    .line 4151
    iget-boolean p1, p1, Lorg/jsoup/c/i$h;->f:Z

    if-eqz p1, :cond_5

    .line 4084
    invoke-virtual {v0}, Lorg/jsoup/c/h;->b()Z

    move-result p1

    if-nez p1, :cond_6

    .line 4184
    iput-boolean v2, v0, Lorg/jsoup/c/h;->f:Z

    goto :goto_4

    .line 4087
    :cond_5
    iget-object p1, p0, Lorg/jsoup/c/n;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    :pswitch_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
