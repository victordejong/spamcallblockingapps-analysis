.class public Le/a/b/b/g/d;
.super Le/a/b/b/b;
.source ""

# interfaces
.implements Li/a/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Li/a/a/a/f;
    .locals 3

    invoke-virtual {p0}, Le/a/b/b/g/d;->h()Li/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Li/a/a/a/f;

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Le/a/b/b/g/f;

    const-string v2, "layout"

    invoke-direct {v1, p0, v2}, Le/a/b/b/g/f;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v1, Li/a/a/a/f;

    return-object v1
.end method

.method public c()Li/a/a/a/e;
    .locals 3

    invoke-virtual {p0}, Le/a/b/b/g/d;->g()Li/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0}, Le/a/b/b/g/d;->h()Li/a/a/a/e;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Li/a/a/a/e;

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "body"

    invoke-virtual {p0, v1}, Le/a/b/b/g/d;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v1, Li/a/a/a/e;

    return-object v1
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/b/b/g/g;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/g;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Le/a/b/b/g/f;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/f;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "root-layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Le/a/b/b/g/l;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/l;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v0, "region"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/b/b/g/j;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/j;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v0, "ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Le/a/b/b/g/i;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/i;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "par"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Le/a/b/b/g/h;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/h;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string v0, "vcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Le/a/b/b/g/k;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/k;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance v0, Le/a/b/b/g/e;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/e;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0

    :cond_8
    :goto_0
    new-instance v0, Le/a/b/b/g/k;

    invoke-direct {v0, p0, p1}, Le/a/b/b/g/k;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()Li/a/a/a/e;
    .locals 2

    invoke-virtual {p0}, Le/a/b/b/e;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Li/a/a/a/e;

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "smil"

    invoke-virtual {p0, v0}, Le/a/b/b/g/d;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/b/b/e;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v0, Li/a/a/a/e;

    return-object v0
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Le/a/b/b/g/d;->g()Li/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Li/a/a/a/e;
    .locals 3

    invoke-virtual {p0}, Le/a/b/b/g/d;->g()Li/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Li/a/a/a/e;

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "head"

    invoke-virtual {p0, v1}, Le/a/b/b/g/d;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    check-cast v1, Li/a/a/a/e;

    return-object v1
.end method
