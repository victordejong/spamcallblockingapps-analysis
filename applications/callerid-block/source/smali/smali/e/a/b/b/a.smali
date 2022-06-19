.class public Le/a/b/b/a;
.super Le/a/b/b/e;
.source ""

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Le/a/b/b/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/e;-><init>(Le/a/b/b/b;)V

    iput-object p2, p0, Le/a/b/b/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    iget-object v0, p0, Le/a/b/b/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/b/a;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/a;->e:Ljava/lang/String;

    return-void
.end method
