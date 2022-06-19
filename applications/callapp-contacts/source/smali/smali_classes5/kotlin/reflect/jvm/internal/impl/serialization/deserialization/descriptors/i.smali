.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

.field private final d:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/jvm/functions/Function0;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/a;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;>;)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    const-string v1, "packageDescriptor"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "components"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classNames"

    move-object/from16 v5, p7

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 12824
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    const-string v7, "proto.typeTable"

    .line 45
    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/g;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$s;)V

    .line 46
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/i;->a:Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

    .line 12839
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    const-string v7, "proto.versionRequirementTable"

    .line 46
    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/b/b/i$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-result-object v11

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 44
    invoke-virtual/range {v7 .. v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v1

    .line 13713
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    const-string v3, "proto.functionList"

    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13748
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    const-string v4, "proto.propertyList"

    .line 48
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13783
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    const-string v0, "proto.typeAliasList"

    .line 48
    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 43
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 36
    iput-object v14, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 50
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 18036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-object v0
.end method

.method protected final a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 19036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method protected final b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 14042
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 14078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 15048
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->k:Ljava/lang/Iterable;

    .line 85
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;

    .line 57
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {v2, v4, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method protected final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 20036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 63
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20053
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a/a/d;->WHEN_GET_ALL_DESCRIPTORS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    .line 21042
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 21078
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 22048
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->k:Ljava/lang/Iterable;

    .line 20079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 20080
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20081
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;

    .line 20054
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 20082
    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 20084
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 20079
    check-cast v0, Ljava/lang/Iterable;

    .line 20053
    invoke-static {p1, v0}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16042
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 16078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 17046
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->i:Lkotlin/reflect/jvm/internal/impl/a/a/c;

    .line 67
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-static {v0, p2, v1, p1}, Lkotlin/reflect/jvm/internal/impl/a/a;->a(Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/a/a/b;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-void
.end method
