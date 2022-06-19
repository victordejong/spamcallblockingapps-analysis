.class public final Lcom/esotericsoftware/kryo/serializers/h$c;
.super Lcom/esotericsoftware/kryo/serializers/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/d<",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/d;-><init>()V

    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/d;->a:Z

    return-void
.end method

.method private a(Lcom/esotericsoftware/kryo/c;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/d;->b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 152
    invoke-static {p1}, L$r8$backportedMethods$utility$Set$1$copyOfSet;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/esotericsoftware/kryo/c;)V
    .locals 5

    .line 156
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/h$c;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/h$c;-><init>()V

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    const/4 v1, 0x1

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, L$r8$backportedMethods$utility$Set$1$of;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    const/4 v2, 0x2

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, L$r8$backportedMethods$utility$Set$4$of;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    return-void
.end method

.method private b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, L$r8$backportedMethods$utility$Set$1$ofArray;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/h$c;->b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0

    .line 2132
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 1137
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method public final synthetic b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 124
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/h$c;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/h$c;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/h$c;->b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
