.class public Lcom/esotericsoftware/kryo/serializers/g$ai;
.super Lcom/esotericsoftware/kryo/serializers/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ai"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/d<",
        "Ljava/util/TreeSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/d;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/util/Comparator;",
            ")",
            "Ljava/util/TreeSet;"
        }
    .end annotation

    .line 713
    const-class v0, Ljava/util/TreeSet;

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 716
    const-class v2, Ljava/util/Comparator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 717
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 719
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 723
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeSet;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 725
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, p0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 713
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object p0
.end method


# virtual methods
.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0

    .line 2705
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p3, p1}, Lcom/esotericsoftware/kryo/serializers/g$ai;->a(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 699
    check-cast p2, Ljava/util/TreeSet;

    .line 1709
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/serializers/g$ai;->a(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V
    .locals 0

    .line 699
    check-cast p3, Ljava/util/TreeSet;

    .line 3701
    invoke-virtual {p3}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    return-void
.end method
