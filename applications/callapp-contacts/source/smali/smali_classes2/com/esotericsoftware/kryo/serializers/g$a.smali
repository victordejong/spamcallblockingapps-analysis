.class public Lcom/esotericsoftware/kryo/serializers/g$a;
.super Lcom/esotericsoftware/kryo/serializers/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/d<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 854
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/d;-><init>()V

    return-void
.end method

.method private static a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 866
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 867
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 868
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 869
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 870
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 860
    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 862
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 0

    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/g$a;->b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0

    .line 1856
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method public final synthetic b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 854
    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/serializers/g$a;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 854
    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/serializers/g$a;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/g$a;->b(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
