.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 804
    move-object/from16 v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v1, "name"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1805
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->c(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1806
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->d(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;

    if-eqz v1, :cond_0

    .line 1808
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2127
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1808
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j$a;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v4}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v4

    .line 1812
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 3127
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4045
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1812
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 4066
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1812
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-object v7, v1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    .line 1813
    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 4112
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5054
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 1813
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v7, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    .line 1811
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;->a(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    move-result-object v2

    .line 1815
    :cond_0
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    return-object v2

    .line 1817
    :cond_1
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 5112
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 6046
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

    .line 1818
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/n$a;

    .line 1819
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 6066
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1819
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    const-string v3, "ownerDescriptor.classId!!.createNestedClassId(name)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1820
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v10

    .line 1818
    invoke-direct/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/n$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;[BLkotlin/reflect/jvm/internal/impl/load/java/d/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1817
    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->a(Lkotlin/reflect/jvm/internal/impl/load/java/n$a;)Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v14

    if-nez v14, :cond_2

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    .line 1823
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 7066
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1823
    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object v11, v3

    move-object v12, v1

    invoke-direct/range {v11 .. v17}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7112
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 8063
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/o;

    .line 1824
    move-object v2, v3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/b/d;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->a(Lkotlin/reflect/jvm/internal/impl/load/java/b/d;)V

    move-object v2, v3

    .line 1822
    :goto_0
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    return-object v2
.end method
