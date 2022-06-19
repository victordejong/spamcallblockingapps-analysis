.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

.field private final c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final g:Lkotlin/reflect/jvm/internal/impl/load/java/a;

.field private final h:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
            "Z)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromOverride"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromOverridden"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerApplicabilityType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    .line 275
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 276
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->d:Ljava/util/Collection;

    .line 277
    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->e:Z

    .line 278
    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->f:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 279
    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    .line 280
    iput-boolean p8, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move-object v9, p0

    move-object v1, p1

    .line 273
    iput-object v1, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p8

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;Z)V

    return-void
.end method

.method private static final a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            "TT;)TT;"
        }
    .end annotation

    .line 358
    check-cast p0, Ljava/lang/Iterable;

    .line 732
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 733
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 358
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    return-object p2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a()Lkotlin/jvm/functions/Function1;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 473
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->d:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    .line 666
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 667
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 668
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 473
    invoke-direct {v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_0
    move-object v8, v1

    check-cast v8, Ljava/util/List;

    .line 474
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v9

    .line 481
    iget-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->e:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->d:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    .line 670
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 671
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 481
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;

    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    xor-int/2addr v1, v11

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    .line 483
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move v13, v0

    .line 484
    :goto_3
    new-array v14, v13, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v13, :cond_e

    if-nez v15, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_8

    if-nez v12, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    .line 486
    :goto_7
    sget-boolean v1, Lkotlin/x;->a:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Only head type constructors should be computed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 488
    :cond_a
    :goto_8
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;

    .line 18000
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 19000
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;->b:Lkotlin/reflect/jvm/internal/impl/load/java/p;

    .line 20000
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 21000
    iget-boolean v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;->d:Z

    .line 489
    move-object v0, v8

    check-cast v0, Ljava/lang/Iterable;

    .line 673
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 682
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 681
    move-object/from16 v10, v16

    check-cast v10, Ljava/util/List;

    .line 489
    invoke-static {v10, v15}, Lkotlin/a/n;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;

    if-nez v10, :cond_c

    const/4 v10, 0x0

    goto :goto_a

    .line 21636
    :cond_c
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    :goto_a
    if-eqz v10, :cond_b

    .line 681
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 685
    :cond_d
    check-cast v2, Ljava/util/List;

    .line 493
    check-cast v2, Ljava/util/Collection;

    move-object/from16 v0, p0

    .line 492
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/load/java/p;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 497
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a;

    invoke-direct {v0, v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a;-><init>([Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;
    .locals 10

    .line 310
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v0

    new-instance v1, Lkotlin/n;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_0
    new-instance v1, Lkotlin/n;

    invoke-direct {v1, p0, p0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2000
    :goto_0
    iget-object v0, v1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 309
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 3000
    iget-object v1, v1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 309
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 314
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

    .line 315
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 317
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    :goto_1
    move-object v5, v3

    goto :goto_2

    .line 318
    :cond_1
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_2
    const-string v3, "type"

    .line 322
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3054
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getClassDescriptor(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 3055
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 322
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    goto :goto_5

    .line 323
    :cond_4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4047
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getClassDescriptor(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4048
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    .line 323
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    goto :goto_5

    :cond_6
    move-object v0, v4

    .line 326
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    instance-of v6, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameter;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v5

    move-object v5, v0

    .line 315
    invoke-direct/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/load/java/p;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            "Z",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "Z)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;"
        }
    .end annotation

    .line 544
    check-cast p2, Ljava/lang/Iterable;

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 687
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 688
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 544
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 545
    check-cast v0, Ljava/lang/Iterable;

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 699
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 698
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 22021
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    if-eqz v3, :cond_1

    .line 698
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 702
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 690
    check-cast v1, Ljava/lang/Iterable;

    .line 545
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 712
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 711
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 23020
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-eqz v4, :cond_3

    .line 711
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 715
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 703
    check-cast v2, Ljava/lang/Iterable;

    .line 546
    invoke-static {v2}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 716
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 725
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 724
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 548
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->unwrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object v4

    .line 24020
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-eqz v4, :cond_5

    .line 724
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 728
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 716
    check-cast v3, Ljava/lang/Iterable;

    .line 549
    invoke-static {v3}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    move-object v3, p0

    move-object v4, p1

    move v5, p4

    move-object v6, p3

    move-object v7, p5

    move v8, p6

    .line 552
    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZLkotlin/reflect/jvm/internal/impl/load/java/p;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object p1

    .line 24023
    iget-boolean p3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->e:Z

    const/4 p5, 0x1

    xor-int/2addr p3, p5

    const/4 p6, 0x0

    if-eqz p3, :cond_7

    move-object p3, p1

    goto :goto_4

    :cond_7
    move-object p3, p6

    :goto_4
    if-nez p3, :cond_8

    move-object p3, p6

    goto :goto_5

    .line 25020
    :cond_8
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 26020
    :goto_5
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 558
    iget-boolean v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    if-eqz p4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 560
    :goto_6
    invoke-static {v2, p3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 26283
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    .line 26647
    instance-of v8, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    if-nez v8, :cond_a

    move-object v7, p6

    :cond_a
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    if-nez v7, :cond_b

    move-object v7, p6

    goto :goto_7

    .line 26283
    :cond_b
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->d()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    :goto_7
    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_d

    if-eqz p4, :cond_d

    .line 563
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne v6, p4, :cond_d

    const/4 p4, 0x1

    goto :goto_9

    :cond_d
    const/4 p4, 0x0

    :goto_9
    if-nez p4, :cond_e

    move-object p6, v6

    .line 567
    :cond_e
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    .line 27021
    iget-object v7, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    .line 567
    invoke-static {v1, p4, v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    if-ne v3, p3, :cond_10

    .line 569
    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    goto :goto_a

    :cond_f
    const/4 p3, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 p3, 0x1

    .line 27022
    :goto_b
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->d:Z

    if-nez p1, :cond_14

    .line 729
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    .line 730
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 28022
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->d:Z

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    goto :goto_c

    :cond_12
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_13

    goto :goto_d

    :cond_13
    const/4 p1, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    const/4 p1, 0x1

    :goto_e
    if-nez p6, :cond_15

    if-eqz p3, :cond_15

    .line 573
    invoke-static {p2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object p2

    .line 575
    invoke-static {p2, p4, p5, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object p1

    return-object p1

    :cond_15
    if-nez p6, :cond_16

    goto :goto_f

    :cond_16
    const/4 p5, 0x0

    .line 581
    :goto_f
    invoke-static {p6, p4, p5, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZLkotlin/reflect/jvm/internal/impl/load/java/p;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;
    .locals 10

    if-eqz p2, :cond_0

    .line 353
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/i;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 364
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->f:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a()Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p3, v1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->a(Lkotlin/reflect/jvm/internal/impl/load/java/a;)Lkotlin/reflect/jvm/internal/impl/load/java/p;

    move-result-object p3

    :cond_2
    :goto_1
    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    .line 6015
    iget-boolean v3, p3, Lkotlin/reflect/jvm/internal/impl/load/java/p;->c:Z

    if-nez v3, :cond_4

    .line 367
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object p3, v1

    .line 6441
    :goto_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v4, :cond_6

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    if-nez v3, :cond_7

    move-object v3, v1

    goto :goto_6

    :cond_7
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object v3

    :goto_6
    const/4 v4, 0x2

    if-nez v3, :cond_8

    new-instance v3, Lkotlin/n;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v1, v5}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 6448
    :cond_8
    new-instance v5, Lkotlin/n;

    .line 6449
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {v6, v7, v2, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6450
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne v3, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 6448
    invoke-direct {v5, v6, v3}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    .line 7000
    :goto_8
    iget-object v5, v3, Lkotlin/n;->a:Ljava/lang/Object;

    .line 370
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 8000
    iget-object v3, v3, Lkotlin/n;->b:Ljava/lang/Object;

    .line 370
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 373
    iget-boolean v6, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->h:Z

    .line 8469
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    .line 8661
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 8662
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 8469
    invoke-virtual {v8, v9, v2, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object v9

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_b
    move-object v9, v1

    :goto_9
    if-eqz v9, :cond_c

    if-nez p5, :cond_c

    goto :goto_a

    :cond_c
    move-object v9, v1

    :goto_a
    if-nez v9, :cond_19

    if-nez v5, :cond_f

    if-nez p3, :cond_d

    :goto_b
    move-object v5, v1

    goto :goto_c

    .line 10013
    :cond_d
    iget-object p5, p3, Lkotlin/reflect/jvm/internal/impl/load/java/p;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    if-nez p5, :cond_e

    goto :goto_b

    .line 9413
    :cond_e
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 11009
    iget-object v6, p5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 11010
    iget-boolean p5, p5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->b:Z

    .line 9413
    invoke-direct {v5, v6, p5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    :cond_f
    :goto_c
    if-nez p4, :cond_10

    move-object p4, v1

    goto :goto_d

    .line 9419
    :cond_10
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object p4

    :goto_d
    if-eqz p4, :cond_1a

    if-nez v5, :cond_11

    .line 9420
    new-instance p5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    invoke-direct {p5, p4, v2, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_12

    .line 9422
    :cond_11
    new-instance p5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 12009
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 12428
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne p4, v6, :cond_12

    goto :goto_e

    .line 12429
    :cond_12
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne v5, v6, :cond_13

    goto :goto_11

    .line 12430
    :cond_13
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne p4, v6, :cond_14

    :goto_e
    move-object p4, v5

    goto :goto_11

    .line 12431
    :cond_14
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne v5, v6, :cond_15

    goto :goto_11

    :cond_15
    if-ne p4, v5, :cond_16

    .line 12432
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne p4, v6, :cond_16

    const/4 v6, 0x1

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    :goto_f
    sget-boolean v7, Lkotlin/x;->a:Z

    if-eqz v7, :cond_18

    if-eqz v6, :cond_17

    goto :goto_10

    .line 12433
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected everything is NOT_NULL, but "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " are found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12432
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 12436
    :cond_18
    :goto_10
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 9422
    :goto_11
    invoke-direct {p5, p4, v2, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_12

    :cond_19
    move-object v5, v9

    :cond_1a
    move-object p5, v5

    :goto_12
    if-eqz v9, :cond_1c

    .line 13009
    iget-object p3, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 385
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne p3, p4, :cond_1b

    goto :goto_15

    :cond_1b
    const/4 p3, 0x0

    goto :goto_16

    :cond_1c
    if-nez v3, :cond_1f

    if-nez p3, :cond_1d

    move-object p3, v1

    goto :goto_14

    .line 13017
    :cond_1d
    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/load/java/p;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 14009
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 13017
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne p4, v3, :cond_1e

    iget-boolean p3, p3, Lkotlin/reflect/jvm/internal/impl/load/java/p;->c:Z

    if-eqz p3, :cond_1e

    const/4 p3, 0x1

    goto :goto_13

    :cond_1e
    const/4 p3, 0x0

    .line 387
    :goto_13
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :goto_14
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    :cond_1f
    :goto_15
    const/4 p3, 0x1

    .line 389
    :goto_16
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    if-nez p5, :cond_20

    move-object v3, v1

    goto :goto_17

    .line 15009
    :cond_20
    iget-object v3, p5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 392
    :goto_17
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->l()Ljava/util/List;

    move-result-object v4

    .line 393
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    .line 392
    invoke-static {v4, v0, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 395
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->m()Ljava/util/List;

    move-result-object v5

    .line 396
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    .line 395
    invoke-static {v5, v0, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_22

    if-eqz v0, :cond_22

    .line 15360
    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_18

    :cond_21
    move-object v4, v1

    goto :goto_19

    :cond_22
    :goto_18
    if-nez v4, :cond_23

    move-object v4, v0

    .line 391
    :cond_23
    :goto_19
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    if-eqz p3, :cond_24

    .line 399
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_1a

    :cond_24
    const/4 p2, 0x0

    :goto_1a
    if-nez p5, :cond_25

    goto :goto_1b

    .line 16010
    :cond_25
    iget-boolean p1, p5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->b:Z

    .line 400
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 389
    invoke-direct {p4, v3, v4, p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZ)V

    return-object p4
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
    .locals 6

    .line 456
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 458
    :cond_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v2, "upperBounds"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 652
    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 653
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 458
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    return-object v1

    .line 459
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 655
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 656
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 17001
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/m;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    return-object v1

    .line 460
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 658
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 659
    :cond_9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v1, "it"

    .line 460
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    :cond_b
    if-eqz v4, :cond_c

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    return-object p0

    .line 461
    :cond_c
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    return-object p0
.end method

.method private static final a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;",
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ")V"
        }
    .end annotation

    .line 505
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p3

    .line 507
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a()Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 509
    :cond_0
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->h:Z

    if-eqz v1, :cond_1

    .line 510
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    goto :goto_0

    .line 512
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    .line 508
    :goto_0
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->a(Lkotlin/reflect/jvm/internal/impl/load/java/a;)Lkotlin/reflect/jvm/internal/impl/load/java/p;

    move-result-object v0

    .line 515
    :goto_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, p4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/p;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)V

    .line 514
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object p2

    const-string v1, "type.constructor.parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p4, p2}, Lkotlin/a/n;->d(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/n;

    .line 29000
    iget-object v1, p4, Lkotlin/n;->a:Ljava/lang/Object;

    .line 523
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 30000
    iget-object p4, p4, Lkotlin/n;->b:Ljava/lang/Object;

    .line 523
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 524
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v2

    const-string v3, "arg.type"

    if-eqz v2, :cond_2

    .line 526
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, p4, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/p;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 528
    :cond_2
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->f:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 534
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;
    .locals 5

    .line 286
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 289
    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$c;

    invoke-direct {v2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 294
    :goto_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$b;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    .line 301
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    .line 1050
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    .line 302
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v3, v4, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 303
    :cond_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZ)V

    :goto_2
    if-nez v1, :cond_3

    .line 304
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZ)V

    return-object v0

    :cond_3
    return-object v1
.end method
