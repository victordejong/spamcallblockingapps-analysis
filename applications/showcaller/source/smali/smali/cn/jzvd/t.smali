.class public Lcn/jzvd/t;
.super Ljava/lang/Object;
.source "JZDataSource.java"


# instance fields
.field public a:I

.field public b:Ljava/util/LinkedHashMap;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcn/jzvd/t;->e:Z

    .line 21
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v1, "URL_KEY_DEFAULT"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcn/jzvd/t;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/jzvd/t;->e:Z

    .line 6
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v1, "URL_KEY_DEFAULT"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcn/jzvd/t;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcn/jzvd/t;->e:Z

    .line 13
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v1, "URL_KEY_DEFAULT"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcn/jzvd/t;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jzvd/t;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcn/jzvd/t;->e:Z

    .line 28
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 29
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 30
    iput-object p2, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcn/jzvd/t;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcn/jzvd/t;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 3
    new-instance v1, Lcn/jzvd/t;

    iget-object v2, p0, Lcn/jzvd/t;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcn/jzvd/t;-><init>(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcn/jzvd/t;->a:I

    invoke-virtual {p0, v0}, Lcn/jzvd/t;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcn/jzvd/t;->a:I

    invoke-virtual {p0, v0}, Lcn/jzvd/t;->e(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p1, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/jzvd/t;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
