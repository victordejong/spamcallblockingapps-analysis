.class public Le/a/b/b/c;
.super Le/a/b/b/e;
.source ""

# interfaces
.implements Lorg/w3c/dom/Element;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lorg/w3c/dom/NamedNodeMap;


# direct methods
.method protected constructor <init>(Le/a/b/b/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/e;-><init>(Le/a/b/b/b;)V

    new-instance p1, Le/a/b/b/d;

    invoke-direct {p1}, Le/a/b/b/d;-><init>()V

    iput-object p1, p0, Le/a/b/b/c;->e:Lorg/w3c/dom/NamedNodeMap;

    iput-object p2, p0, Le/a/b/b/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/b/c;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c;->e:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    return-object p1
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c;->e:Lorg/w3c/dom/NamedNodeMap;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    new-instance v0, Le/a/b/b/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Le/a/b/b/f;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/b/c;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasAttributes()Z
    .locals 1

    iget-object v0, p0, Le/a/b/b/c;->e:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Le/a/b/b/c;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/e;->c:Le/a/b/b/b;

    invoke-virtual {v0, p1}, Le/a/b/b/b;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    iget-object p1, p0, Le/a/b/b/c;->e:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 1

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 1

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method
