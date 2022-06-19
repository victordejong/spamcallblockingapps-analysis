.class public final Lcom/esotericsoftware/kryo/serializers/g$ab;
.super Lcom/esotericsoftware/kryo/serializers/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/d<",
        "Ljava/util/PriorityQueue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/d;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;ILjava/util/Comparator;)Ljava/util/PriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;I",
            "Ljava/util/Comparator;",
            ")",
            "Ljava/util/PriorityQueue;"
        }
    .end annotation

    .line 746
    const-class v0, Ljava/util/PriorityQueue;

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    .line 749
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-class v0, Ljava/util/Comparator;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 750
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    .line 752
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 756
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/PriorityQueue;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 758
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, p0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 746
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/PriorityQueue;

    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-object p0
.end method


# virtual methods
.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0

    .line 2738
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p3, p4, p1}, Lcom/esotericsoftware/kryo/serializers/g$ab;->a(Ljava/lang/Class;ILjava/util/Comparator;)Ljava/util/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .line 732
    check-cast p2, Ljava/util/PriorityQueue;

    .line 1742
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/esotericsoftware/kryo/serializers/g$ab;->a(Ljava/lang/Class;ILjava/util/Comparator;)Ljava/util/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V
    .locals 0

    .line 732
    check-cast p3, Ljava/util/PriorityQueue;

    .line 3734
    invoke-virtual {p3}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    return-void
.end method
