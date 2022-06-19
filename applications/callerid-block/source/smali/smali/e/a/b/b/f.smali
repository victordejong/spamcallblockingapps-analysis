.class public Le/a/b/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/w3c/dom/Node;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/b/f;->c:Lorg/w3c/dom/Node;

    iput-object p2, p0, Le/a/b/b/f;->d:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/b/b/f;->e:Z

    return-void
.end method

.method private a(Lorg/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Le/a/b/b/f;->c:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/b/b/f;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/b/b/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/b/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Le/a/b/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_6

    iget-boolean v0, p0, Le/a/b/b/f;->e:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Le/a/b/b/f;->a(Lorg/w3c/dom/Node;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Le/a/b/b/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/b/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Le/a/b/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Le/a/b/b/f;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/f;->c:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Le/a/b/b/f;->a(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Le/a/b/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Le/a/b/b/f;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/f;->c:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Le/a/b/b/f;->a(Lorg/w3c/dom/Node;)V

    :try_start_0
    iget-object v0, p0, Le/a/b/b/f;->a:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
