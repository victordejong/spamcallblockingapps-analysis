.class public Luh0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luh0$d;,
        Luh0$i;,
        Luh0$g;,
        Luh0$h;,
        Luh0$j;,
        Luh0$b;,
        Luh0$c;,
        Luh0$e;,
        Luh0$f;
    }
.end annotation


# instance fields
.field public a:Luh0$f;

.field public b:Z


# direct methods
.method public constructor <init>(Luh0$f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Luh0;->a:Luh0$f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Luh0;->b:Z

    iput-object p1, p0, Luh0;->a:Luh0$f;

    return-void
.end method

.method public static a(Ljava/util/List;ILzh0$l0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzh0$j0;",
            ">;I",
            "Lzh0$l0;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lzh0$n0;->b:Lzh0$j0;

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1}, Lzh0$j0;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0$n0;

    if-ne v1, p2, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static b(Ljava/lang/String;Luh0$f;)Z
    .locals 1

    new-instance v0, Luh0$d;

    invoke-direct {v0, p0}, Luh0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-static {v0}, Luh0;->h(Luh0$d;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Luh0;->c(Ljava/util/List;Luh0$f;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid @media type list"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/List;Luh0$f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luh0$f;",
            ">;",
            "Luh0$f;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luh0$f;

    sget-object v1, Luh0$f;->a:Luh0$f;

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Luh0$d;

    invoke-direct {v0, p0}, Luh0$d;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ldi0$d;->x()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for \"class\" attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method public static h(Luh0$d;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luh0$d;",
            ")",
            "Ljava/util/List<",
            "Luh0$f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ldi0$d;->s(C)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Luh0$f;->valueOf(Ljava/lang/String;)Luh0$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ldi0$d;->w()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid @media type list"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static l(Luh0$i;ILjava/util/List;ILzh0$l0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luh0$i;",
            "I",
            "Ljava/util/List<",
            "Lzh0$j0;",
            ">;I",
            "Lzh0$l0;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Luh0$i;->e(I)Luh0$j;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Luh0;->o(Luh0$j;Ljava/util/List;ILzh0$l0;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Luh0$j;->a:Luh0$e;

    sget-object v1, Luh0$e;->a:Luh0$e;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_1

    return v3

    :cond_1
    :goto_0
    if-ltz p3, :cond_3

    add-int/lit8 p4, p1, -0x1

    invoke-static {p0, p4, p2, p3}, Luh0;->n(Luh0$i;ILjava/util/List;I)Z

    move-result p4

    if-eqz p4, :cond_2

    return v3

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    sget-object v1, Luh0$e;->b:Luh0$e;

    if-ne v0, v1, :cond_5

    sub-int/2addr p1, v3

    invoke-static {p0, p1, p2, p3}, Luh0;->n(Luh0$i;ILjava/util/List;I)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p2, p3, p4}, Luh0;->a(Ljava/util/List;ILzh0$l0;)I

    move-result v0

    if-gtz v0, :cond_6

    return v2

    :cond_6
    iget-object p4, p4, Lzh0$n0;->b:Lzh0$j0;

    invoke-interface {p4}, Lzh0$j0;->getChildren()Ljava/util/List;

    move-result-object p4

    sub-int/2addr v0, v3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lzh0$l0;

    sub-int/2addr p1, v3

    invoke-static {p0, p1, p2, p3, p4}, Luh0;->l(Luh0$i;ILjava/util/List;ILzh0$l0;)Z

    move-result p0

    return p0
.end method

.method public static m(Luh0$i;Lzh0$l0;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lzh0$n0;->b:Lzh0$j0;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v1, Lzh0$n0;

    iget-object v1, v1, Lzh0$n0;->b:Lzh0$j0;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Luh0$i;->g()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-virtual {p0, v2}, Luh0$i;->e(I)Luh0$j;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Luh0;->o(Luh0$j;Ljava/util/List;ILzh0$l0;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Luh0$i;->g()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {p0, v2, v0, v1, p1}, Luh0;->l(Luh0$i;ILjava/util/List;ILzh0$l0;)Z

    move-result p0

    return p0
.end method

.method public static n(Luh0$i;ILjava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luh0$i;",
            "I",
            "Ljava/util/List<",
            "Lzh0$j0;",
            ">;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Luh0$i;->e(I)Luh0$j;

    move-result-object v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0$l0;

    invoke-static {v0, p2, p3, v1}, Luh0;->o(Luh0$j;Ljava/util/List;ILzh0$l0;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v0, v0, Luh0$j;->a:Luh0$e;

    sget-object v2, Luh0$e;->a:Luh0$e;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_1

    return v4

    :cond_1
    if-lez p3, :cond_2

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, v0, p2, p3}, Luh0;->n(Luh0$i;ILjava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_2
    return v3

    :cond_3
    sget-object v2, Luh0$e;->b:Luh0$e;

    if-ne v0, v2, :cond_4

    sub-int/2addr p1, v4

    sub-int/2addr p3, v4

    invoke-static {p0, p1, p2, p3}, Luh0;->n(Luh0$i;ILjava/util/List;I)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p2, p3, v1}, Luh0;->a(Ljava/util/List;ILzh0$l0;)I

    move-result v0

    if-gtz v0, :cond_5

    return v3

    :cond_5
    iget-object v1, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-interface {v1}, Lzh0$j0;->getChildren()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$l0;

    sub-int/2addr p1, v4

    invoke-static {p0, p1, p2, p3, v0}, Luh0;->l(Luh0$i;ILjava/util/List;ILzh0$l0;)Z

    move-result p0

    return p0
.end method

.method public static o(Luh0$j;Ljava/util/List;ILzh0$l0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luh0$j;",
            "Ljava/util/List<",
            "Lzh0$j0;",
            ">;I",
            "Lzh0$l0;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Luh0$j;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lzh0$m;

    if-nez v0, :cond_1

    return v1

    :cond_0
    iget-object v0, p0, Luh0$j;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Luh0$j;->c:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luh0$b;

    iget-object v3, v2, Luh0$b;->a:Ljava/lang/String;

    const-string v4, "id"

    if-ne v3, v4, :cond_3

    iget-object v2, v2, Luh0$b;->c:Ljava/lang/String;

    iget-object v3, p3, Lzh0$l0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const-string v4, "class"

    if-ne v3, v4, :cond_5

    iget-object v3, p3, Lzh0$l0;->g:Ljava/util/List;

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v2, v2, Luh0$b;->c:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_5
    return v1

    :cond_6
    iget-object p0, p0, Luh0$j;->d:Ljava/util/List;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "first-child"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3}, Luh0;->a(Ljava/util/List;ILzh0$l0;)I

    move-result v0

    if-eqz v0, :cond_7

    :cond_8
    return v1

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AndroidSVG CSSParser"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Luh0$h;
    .locals 1

    new-instance v0, Luh0$d;

    invoke-direct {v0, p1}, Luh0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {p0, v0}, Luh0;->j(Luh0$d;)Luh0$h;

    move-result-object p1

    return-object p1
.end method

.method public final e(Luh0$h;Luh0$d;)V
    .locals 4

    invoke-virtual {p2}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ldi0$d;->x()V

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Luh0;->b:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Luh0;->h(Luh0$d;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Ldi0$d;->e(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ldi0$d;->x()V

    iget-object v1, p0, Luh0;->a:Luh0$f;

    invoke-static {v0, v1}, Luh0;->c(Ljava/util/List;Luh0$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Luh0;->b:Z

    invoke-virtual {p0, p2}, Luh0;->j(Luh0$d;)Luh0$h;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh0$h;->b(Luh0$h;)V

    iput-boolean v2, p0, Luh0;->b:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Luh0;->j(Luh0$d;)Luh0$h;

    :goto_0
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Ldi0$d;->e(C)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid @media rule: missing rule set"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string v0, "Ignoring @%s rule"

    invoke-static {v0, p1}, Luh0;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Luh0;->p(Luh0$d;)V

    :goto_1
    invoke-virtual {p2}, Ldi0$d;->x()V

    return-void

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid \'@\' rule in <style> element"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Luh0$d;)Lzh0$e0;
    .locals 4

    new-instance v0, Lzh0$e0;

    invoke-direct {v0}, Lzh0$e0;-><init>()V

    :goto_0
    invoke-virtual {p1}, Luh0$d;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ldi0$d;->x()V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ldi0$d;->e(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ldi0$d;->x()V

    invoke-virtual {p1}, Luh0$d;->A()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ldi0$d;->x()V

    const/16 v3, 0x21

    invoke-virtual {p1, v3}, Ldi0$d;->e(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ldi0$d;->x()V

    const-string v3, "important"

    invoke-virtual {p1, v3}, Ldi0$d;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ldi0$d;->x()V

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ldi0$d;->e(C)Z

    invoke-static {v0, v1, v2}, Ldi0;->F0(Lzh0$e0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ldi0$d;->x()V

    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ldi0$d;->e(C)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Malformed rule set in <style> element"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Luh0$h;Luh0$d;)Z
    .locals 3

    invoke-virtual {p0, p2}, Luh0;->k(Luh0$d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Ldi0$d;->e(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ldi0$d;->x()V

    invoke-virtual {p0, p2}, Luh0;->g(Luh0$d;)Lzh0$e0;

    move-result-object v1

    invoke-virtual {p2}, Ldi0$d;->x()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luh0$i;

    new-instance v2, Luh0$g;

    invoke-direct {v2, v0, v1}, Luh0$g;-><init>(Luh0$i;Lzh0$e0;)V

    invoke-virtual {p1, v2}, Luh0$h;->a(Luh0$g;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Luh0$d;)Luh0$h;
    .locals 2

    new-instance v0, Luh0$h;

    invoke-direct {v0}, Luh0$h;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Ldi0$d;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Ldi0$d;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ldi0$d;->e(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Luh0;->e(Luh0$h;Luh0$d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Luh0;->i(Luh0$h;Luh0$d;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final k(Luh0$d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luh0$d;",
            ")",
            "Ljava/util/List<",
            "Luh0$i;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ldi0$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Luh0$i;

    invoke-direct {v1}, Luh0$i;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ldi0$d;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Luh0$d;->B(Luh0$i;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ldi0$d;->w()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Luh0$i;

    invoke-direct {v1}, Luh0$i;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Luh0$i;->f()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final p(Luh0$d;)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ldi0$d;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method
