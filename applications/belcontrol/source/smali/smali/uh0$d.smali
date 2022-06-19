.class public Luh0$d;
.super Ldi0$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ldi0$d;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Ldi0$d;->b:I

    iget-object v2, p0, Ldi0$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v0

    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x21

    if-eq v2, v4, :cond_2

    invoke-virtual {p0, v2}, Ldi0$d;->i(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Ldi0$d;->j(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Ldi0$d;->b:I

    add-int/lit8 v3, v2, 0x1

    :cond_1
    invoke-virtual {p0}, Ldi0$d;->a()I

    move-result v2

    goto :goto_0

    :cond_2
    iget v2, p0, Ldi0$d;->b:I

    if-le v2, v0, :cond_3

    iget-object v1, p0, Ldi0$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iput v0, p0, Ldi0$d;->b:I

    return-object v1
.end method

.method public B(Luh0$i;)Z
    .locals 10

    invoke-virtual {p0}, Ldi0$d;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Ldi0$d;->b:I

    invoke-virtual {p1}, Luh0$i;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Ldi0$d;->e(C)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Luh0$e;->b:Luh0$e;

    :goto_0
    invoke-virtual {p0}, Ldi0$d;->x()V

    goto :goto_1

    :cond_1
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Ldi0$d;->e(C)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Luh0$e;->c:Luh0$e;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_1
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Ldi0$d;->e(C)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Luh0$j;

    invoke-direct {v4, v2, v3}, Luh0$j;-><init>(Luh0$e;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Luh0$j;

    invoke-direct {v5, v2, v4}, Luh0$j;-><init>(Luh0$e;Ljava/lang/String;)V

    invoke-virtual {p1}, Luh0$i;->c()V

    move-object v4, v5

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-virtual {p0}, Ldi0$d;->g()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_16

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ldi0$d;->e(C)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v4, :cond_5

    new-instance v4, Luh0$j;

    invoke-direct {v4, v2, v3}, Luh0$j;-><init>(Luh0$e;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Luh0$c;->b:Luh0$c;

    const-string v7, "class"

    invoke-virtual {v4, v7, v6, v5}, Luh0$j;->a(Ljava/lang/String;Luh0$c;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Luh0$i;->b()V

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid \".class\" selector in <style> element"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Ldi0$d;->e(C)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v4, :cond_8

    new-instance v4, Luh0$j;

    invoke-direct {v4, v2, v3}, Luh0$j;-><init>(Luh0$e;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    sget-object v7, Luh0$c;->b:Luh0$c;

    const-string v8, "id"

    invoke-virtual {v4, v8, v7, v5}, Luh0$j;->a(Ljava/lang/String;Luh0$c;Ljava/lang/String;)V

    invoke-virtual {p1}, Luh0$i;->d()V

    goto :goto_4

    :cond_9
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid \"#id\" selector in <style> element"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    if-nez v4, :cond_b

    goto/16 :goto_7

    :cond_b
    const/16 v5, 0x5b

    invoke-virtual {p0, v5}, Ldi0$d;->e(C)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Ldi0$d;->x()V

    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid attribute selector in <style> element"

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Ldi0$d;->x()V

    const/16 v7, 0x3d

    invoke-virtual {p0, v7}, Ldi0$d;->e(C)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Luh0$c;->b:Luh0$c;

    goto :goto_5

    :cond_c
    const-string v7, "~="

    invoke-virtual {p0, v7}, Ldi0$d;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Luh0$c;->c:Luh0$c;

    goto :goto_5

    :cond_d
    const-string v7, "|="

    invoke-virtual {p0, v7}, Ldi0$d;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v7, Luh0$c;->d:Luh0$c;

    goto :goto_5

    :cond_e
    move-object v7, v3

    :goto_5
    if-eqz v7, :cond_10

    invoke-virtual {p0}, Ldi0$d;->x()V

    invoke-virtual {p0}, Luh0$d;->y()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {p0}, Ldi0$d;->x()V

    goto :goto_6

    :cond_f
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    move-object v8, v3

    :goto_6
    const/16 v9, 0x5d

    invoke-virtual {p0, v9}, Ldi0$d;->e(C)Z

    move-result v9

    if-eqz v9, :cond_12

    if-nez v7, :cond_11

    sget-object v7, Luh0$c;->a:Luh0$c;

    :cond_11
    invoke-virtual {v4, v5, v7, v8}, Luh0$j;->a(Ljava/lang/String;Luh0$c;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ldi0$d;->e(C)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, p0, Ldi0$d;->b:I

    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Ldi0$d;->e(C)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Ldi0$d;->x()V

    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Ldi0$d;->x()V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ldi0$d;->e(C)Z

    move-result v3

    if-nez v3, :cond_15

    sub-int/2addr v2, v6

    iput v2, p0, Ldi0$d;->b:I

    goto :goto_7

    :cond_15
    iget-object v3, p0, Ldi0$d;->a:Ljava/lang/String;

    iget v5, p0, Ldi0$d;->b:I

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Luh0$j;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Luh0$i;->b()V

    :cond_16
    :goto_7
    if-eqz v4, :cond_17

    invoke-virtual {p1, v4}, Luh0$i;->a(Luh0$j;)V

    return v6

    :cond_17
    iput v0, p0, Ldi0$d;->b:I

    return v1
.end method

.method public final C()I
    .locals 9

    invoke-virtual {p0}, Ldi0$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ldi0$d;->b:I

    return v0

    :cond_0
    iget v0, p0, Ldi0$d;->b:I

    iget-object v1, p0, Ldi0$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ldi0$d;->a()I

    move-result v1

    :cond_1
    const/16 v3, 0x7a

    const/16 v4, 0x5f

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v7, 0x41

    if-lt v1, v7, :cond_2

    if-le v1, v5, :cond_4

    :cond_2
    if-lt v1, v6, :cond_3

    if-le v1, v3, :cond_4

    :cond_3
    if-ne v1, v4, :cond_9

    :cond_4
    :goto_0
    invoke-virtual {p0}, Ldi0$d;->a()I

    move-result v1

    if-lt v1, v7, :cond_5

    if-le v1, v5, :cond_4

    :cond_5
    if-lt v1, v6, :cond_6

    if-le v1, v3, :cond_4

    :cond_6
    const/16 v8, 0x30

    if-lt v1, v8, :cond_7

    const/16 v8, 0x39

    if-le v1, v8, :cond_4

    :cond_7
    if-eq v1, v2, :cond_4

    if-ne v1, v4, :cond_8

    goto :goto_0

    :cond_8
    iget v1, p0, Ldi0$d;->b:I

    goto :goto_1

    :cond_9
    move v1, v0

    :goto_1
    iput v0, p0, Ldi0$d;->b:I

    return v1
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldi0$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ldi0$d;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Luh0$d;->C()I

    move-result v0

    iget v1, p0, Ldi0$d;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Ldi0$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Ldi0$d;->b:I

    return-object v1
.end method
