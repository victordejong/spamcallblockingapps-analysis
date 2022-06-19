.class public Le/a/b/b/g/f;
.super Le/a/b/b/g/e;
.source ""

# interfaces
.implements Li/a/a/a/f;


# direct methods
.method constructor <init>(Le/a/b/b/g/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/a/b/b/g/e;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Li/a/a/a/i;
    .locals 7

    invoke-virtual {p0}, Le/a/b/b/e;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    const-string v5, "root-layout"

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Li/a/a/a/i;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Li/a/a/a/i;

    invoke-static {}, Le/a/b/c/a;->a()Le/a/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/c/a;->b()Le/a/b/c/b;

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
