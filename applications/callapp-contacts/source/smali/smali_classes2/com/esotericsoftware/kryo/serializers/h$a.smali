.class public final Lcom/esotericsoftware/kryo/serializers/h$a;
.super Lcom/esotericsoftware/kryo/serializers/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/d<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/d;-><init>()V

    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/d;->a:Z

    return-void
.end method

.method private a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/d;->b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 72
    invoke-static {p1}, L$r8$backportedMethods$utility$List$1$copyOfList;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/esotericsoftware/kryo/c;)V
    .locals 7

    .line 76
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/h$a;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/h$a;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    const/4 v1, 0x1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, L$r8$backportedMethods$utility$List$1$of;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    const/4 v2, 0x2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, L$r8$backportedMethods$utility$List$4$of;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    .line 80
    invoke-static {v1, v3, v4, v5}, L$r8$backportedMethods$utility$List$4$of;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    return-void
.end method

.method private b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, L$r8$backportedMethods$utility$List$1$ofArray;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/h$a;->b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0

    .line 3052
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 44
    check-cast p2, Ljava/util/List;

    .line 2057
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method public final synthetic b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 44
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/h$a;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/h$a;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/h$a;->b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
