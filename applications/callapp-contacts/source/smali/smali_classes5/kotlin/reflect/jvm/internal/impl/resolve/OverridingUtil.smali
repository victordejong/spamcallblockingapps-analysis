.class public Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;,
        Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

.field static final synthetic b:Z = true

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# instance fields
.field private final e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

.field private final f:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->c:Ljava/util/List;

    .line 53
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;

    .line 63
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 90
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->f:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;

    .line 92
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    return-void
.end method

.method public static a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TH;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TH;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">;)TH;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x4c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x4d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 651
    :cond_1
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should have at least one overridable descriptor"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 653
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 654
    invoke-static {p0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    const/16 p1, 0x4e

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_4
    return-object p0

    .line 657
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    invoke-static {p0, p1}, Lkotlin/a/n;->b(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    .line 660
    invoke-static {p0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    .line 661
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 663
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 664
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 665
    invoke-static {v6, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 666
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_7
    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object v3, v5

    goto :goto_1

    .line 674
    :cond_8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    if-nez v3, :cond_9

    const/16 p0, 0x4f

    .line 675
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_9
    return-object v3

    .line 677
    :cond_a
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ne p0, v1, :cond_c

    .line 678
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_b

    const/16 p1, 0x50

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_b
    return-object p0

    :cond_c
    const/4 p0, 0x0

    .line 682
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 684
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object p0, v2

    :cond_e
    if-eqz p0, :cond_10

    if-nez p0, :cond_f

    const/16 p1, 0x51

    .line 690
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_f
    return-object p0

    .line 693
    :cond_10
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_11

    const/16 p1, 0x52

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_11
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(TH;",
            "Ljava/util/Collection<",
            "TH;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TH;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "TH;",
            "Lkotlin/v;",
            ">;)",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x61

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x63

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 820
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 823
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 824
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 825
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-ne p0, v2, :cond_3

    .line 827
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 831
    :cond_3
    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v3

    .line 833
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne v3, v4, :cond_4

    .line 834
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 837
    :cond_4
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->CONFLICT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne v3, v4, :cond_2

    .line 838
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/h;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, 0x39

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x3a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v0, 0x3b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_2
    if-nez p4, :cond_3

    const/16 v0, 0x3c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 510
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object v1

    .line 512
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 513
    invoke-direct {p0, v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v3

    if-nez p1, :cond_4

    const/16 v4, 0x37

    .line 515
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_4
    if-nez v2, :cond_5

    const/16 v4, 0x38

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 5500
    :cond_5
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 517
    :goto_1
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$8;->b:[I

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v5, :cond_9

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 526
    invoke-virtual {p4, v2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/h;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V

    .line 528
    :cond_8
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    if-eqz v4, :cond_a

    .line 520
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_a
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_b
    invoke-virtual {p4, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Collection;)V

    return-object v0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x5e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x5f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 799
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$5;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$5;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    invoke-static {p1, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 469
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getValueParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 475
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">(",
            "Ljava/util/Set<",
            "TD;>;)",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$2;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$2;-><init>()V

    .line 2120
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v3, v1, :cond_1

    return-object p0

    .line 2122
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2128
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2129
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2130
    invoke-interface {v2, v4, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/n;

    .line 3000
    iget-object v7, v6, Lkotlin/n;->a:Ljava/lang/Object;

    .line 2131
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 4000
    iget-object v6, v6, Lkotlin/n;->b:Ljava/lang/Object;

    .line 2132
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 2133
    invoke-static {v7, v6, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2134
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2136
    :cond_3
    invoke-static {v6, v7, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 2140
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2143
    :cond_5
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    if-nez v0, :cond_7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "All candidates filtered out from "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_3
    return-object v1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ")",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 196
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Lkotlin/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, 0x28

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x29

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 393
    :cond_1
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should be the same number of type parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 395
    :cond_3
    :goto_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    .line 396
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Ljava/util/List;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;

    move-result-object p1

    .line 398
    new-instance p2, Lkotlin/n;

    invoke-direct {p2, v0, p1}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x56

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x57

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 739
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 740
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$8;->c:[I

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v2, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v5, 0x3

    if-eq v6, v5, :cond_3

    const/4 v5, 0x4

    if-eq v6, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 744
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Member cannot have SEALED modality: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_5
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-nez p0, :cond_6

    const/16 p1, 0x58

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_6
    return-object p0

    .line 758
    :cond_7
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isExpect()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v0, v5, :cond_8

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v0, v5, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 762
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-nez p0, :cond_9

    const/16 p1, 0x59

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_9
    return-object p0

    :cond_a
    if-nez v3, :cond_d

    if-eqz v4, :cond_d

    if-eqz v1, :cond_b

    .line 765
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p0

    goto :goto_1

    :cond_b
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    :goto_1
    if-nez p0, :cond_c

    const/16 p1, 0x5a

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_c
    return-object p0

    .line 768
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 769
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 770
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 772
    :cond_e
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x5b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x5c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 781
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 782
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz p1, :cond_3

    .line 783
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v2, v3, :cond_3

    move-object v1, p2

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    .line 787
    :goto_1
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const/16 p0, 0x5d

    .line 791
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_5
    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x26

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x27

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 365
    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v0, :cond_2

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v1, :cond_3

    :cond_2
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v1, :cond_4

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-nez v2, :cond_4

    :cond_3
    const-string p0, "Member kind mismatch"

    .line 367
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_0

    .line 371
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "This type of CallableDescriptor cannot be checked for overridability: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_6
    :goto_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "Name mismatch"

    .line 376
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p0

    return-object p0

    .line 379
    :cond_7
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p0

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 p2, 0x13

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_2
    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 73
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 81
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
    .locals 0

    .line 43
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->e:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    return-object p0
.end method

.method private static synthetic a(I)V
    .locals 22

    move/from16 v0, p0

    const/16 v1, 0x65

    const/16 v2, 0x60

    const/16 v3, 0x5d

    const/16 v4, 0x13

    const/16 v5, 0xe

    const/16 v6, 0xa

    const/16 v7, 0x9

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v9, 0x2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    const/4 v10, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v10, 0x2

    :goto_1
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil"

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_8

    :pswitch_2
    const-string v13, "equalityAxioms"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_3
    const-string v13, "memberDescriptor"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_4
    const-string v13, "onConflict"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_5
    const-string v13, "extractFrom"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_6
    const-string v13, "overrider"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_7
    const-string v13, "toFilter"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_8
    const-string v13, "classModality"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_9
    const-string v13, "descriptorByHandle"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_a
    const-string v13, "overridables"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_b
    const-string v13, "bReturnType"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_c
    const-string v13, "aReturnType"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_d
    const-string v13, "descriptors"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_e
    const-string v13, "candidate"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_f
    const-string v13, "b"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_10
    const-string v13, "a"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_11
    const-string v13, "notOverridden"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_12
    const-string v13, "descriptorsFromSuper"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_13
    const-string v13, "fromCurrent"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_14
    const-string v13, "fromSuper"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_15
    const-string v13, "overriding"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_16
    const-string v13, "strategy"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_17
    const-string v13, "current"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_18
    const-string v13, "membersFromCurrent"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_19
    const-string v13, "membersFromSupertypes"

    aput-object v13, v10, v12

    goto/16 :goto_2

    :pswitch_1a
    const-string v13, "name"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1b
    const-string v13, "subTypeParameter"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1c
    const-string v13, "superTypeParameter"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1d
    const-string v13, "typeChecker"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1e
    const-string v13, "typeInSub"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_1f
    const-string v13, "typeInSuper"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_20
    const-string v13, "secondParameters"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_21
    const-string v13, "firstParameters"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_22
    const-string v13, "subDescriptor"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_23
    const-string v13, "superDescriptor"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_24
    const-string v13, "result"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_25
    const-string v13, "descriptor"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_26
    const-string v13, "g"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_27
    const-string v13, "f"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_28
    aput-object v11, v10, v12

    goto :goto_2

    :pswitch_29
    const-string v13, "transformFirst"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_2a
    const-string v13, "candidateSet"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_2b
    const-string v13, "axioms"

    aput-object v13, v10, v12

    goto :goto_2

    :pswitch_2c
    const-string v13, "kotlinTypeRefiner"

    aput-object v13, v10, v12

    :goto_2
    const-string v12, "extractMembersOverridableInBothWays"

    const-string v13, "filterVisibleFakeOverrides"

    const-string v14, "getMinimalModality"

    const-string v15, "determineModalityForFakeOverride"

    const-string v16, "selectMostSpecificMember"

    const-string v17, "isOverridableByWithoutExternalConditions"

    const-string v18, "isOverridableBy"

    const-string v19, "getOverriddenDeclarations"

    const-string v20, "filterOverrides"

    const/16 v21, 0x1

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    aput-object v11, v10, v21

    goto :goto_3

    :pswitch_2d
    aput-object v15, v10, v21

    goto :goto_3

    :pswitch_2e
    aput-object v16, v10, v21

    goto :goto_3

    :pswitch_2f
    aput-object v17, v10, v21

    goto :goto_3

    :cond_2
    aput-object v12, v10, v21

    goto :goto_3

    :cond_3
    aput-object v13, v10, v21

    goto :goto_3

    :cond_4
    aput-object v14, v10, v21

    goto :goto_3

    :cond_5
    :pswitch_30
    aput-object v18, v10, v21

    goto :goto_3

    :cond_6
    aput-object v19, v10, v21

    goto :goto_3

    :cond_7
    aput-object v20, v10, v21

    :goto_3
    packed-switch v0, :pswitch_data_d

    const-string v11, "createWithEqualityAxioms"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_31
    const-string v11, "findMaxVisibility"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_32
    const-string v11, "computeVisibilityToInherit"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_33
    const-string v11, "resolveUnknownVisibilityForMember"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_34
    aput-object v12, v10, v9

    goto/16 :goto_4

    :pswitch_35
    aput-object v13, v10, v9

    goto/16 :goto_4

    :pswitch_36
    aput-object v14, v10, v9

    goto/16 :goto_4

    :pswitch_37
    aput-object v15, v10, v9

    goto/16 :goto_4

    :pswitch_38
    const-string v11, "createAndBindFakeOverride"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_39
    aput-object v16, v10, v9

    goto/16 :goto_4

    :pswitch_3a
    const-string v11, "isReturnTypeMoreSpecific"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3b
    const-string v11, "isMoreSpecificThenAllOf"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3c
    const-string v11, "isVisibilityMoreSpecific"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3d
    const-string v11, "isMoreSpecific"

    aput-object v11, v10, v9

    goto/16 :goto_4

    :pswitch_3e
    const-string v11, "createAndBindFakeOverrides"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_3f
    const-string v11, "allHasSameContainingDeclaration"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_40
    const-string v11, "extractAndBindOverridesForMember"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_41
    const-string v11, "isVisibleForOverride"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_42
    const-string v11, "generateOverridesInFunctionGroup"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_43
    const-string v11, "areTypeParametersEquivalent"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_44
    const-string v11, "areTypesEquivalent"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_45
    const-string v11, "createTypeCheckerContext"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_46
    const-string v11, "createTypeChecker"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_47
    const-string v11, "getBasicOverridabilityProblem"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_48
    aput-object v17, v10, v9

    goto :goto_4

    :pswitch_49
    aput-object v18, v10, v9

    goto :goto_4

    :pswitch_4a
    const-string v11, "collectOverriddenDeclarations"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_4b
    aput-object v19, v10, v9

    goto :goto_4

    :pswitch_4c
    const-string v11, "overrides"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_4d
    aput-object v20, v10, v9

    goto :goto_4

    :pswitch_4e
    const-string v11, "filterOutOverridden"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_4f
    const-string v11, "<init>"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_50
    const-string v11, "create"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_51
    const-string v11, "createWithTypeRefiner"

    aput-object v11, v10, v9

    :goto_4
    :pswitch_52
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :pswitch_53
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x58
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x58
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2
        :pswitch_2b
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_17
        :pswitch_11
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_1d
        :pswitch_a
        :pswitch_9
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_a
        :pswitch_17
        :pswitch_16
        :pswitch_d
        :pswitch_17
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_d
        :pswitch_8
        :pswitch_28
        :pswitch_17
        :pswitch_7
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x16
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1e
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x4e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x58
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_52
        :pswitch_52
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_52
        :pswitch_4a
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_52
        :pswitch_49
        :pswitch_49
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_48
        :pswitch_48
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_47
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_36
        :pswitch_36
        :pswitch_52
        :pswitch_35
        :pswitch_35
        :pswitch_52
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_52
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x16
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1e
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x4e
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x58
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method private static a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/h;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x53

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x54

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x55

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 701
    :cond_2
    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 702
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 705
    :goto_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v4

    if-eqz v1, :cond_4

    .line 706
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    goto :goto_1

    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    :goto_1
    move-object v5, v0

    .line 715
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$4;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$4;-><init>()V

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 723
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->copy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p1

    .line 725
    invoke-virtual {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Collection;)V

    .line 727
    sget-boolean p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    if-nez p0, :cond_6

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Overridden descriptors should be set for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 728
    :cond_6
    :goto_2
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 205
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->isReal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 209
    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 213
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    return-void

    .line 210
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "No overridden descriptors found for (fake override) "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x69

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 886
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 887
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-ne v2, v3, :cond_1

    .line 888
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 892
    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    if-nez p0, :cond_4

    const/16 v0, 0x6a

    .line 896
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 8930
    :cond_4
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_5

    const/16 v1, 0x6b

    .line 8931
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 8949
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8950
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    goto/16 :goto_6

    .line 8953
    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    move-object v3, v2

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 8954
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v5

    .line 8955
    sget-boolean v6, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    if-nez v6, :cond_9

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-eq v5, v6, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Visibility should have been computed for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_9
    :goto_3
    if-nez v3, :cond_a

    :goto_4
    move-object v3, v5

    goto :goto_2

    .line 8960
    :cond_a
    invoke-static {v5, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_1

    .line 8964
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_4

    :cond_c
    if-nez v3, :cond_e

    :cond_d
    :goto_5
    move-object v1, v2

    goto :goto_6

    .line 8971
    :cond_e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 8972
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 8973
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_f

    goto :goto_5

    :cond_10
    move-object v1, v3

    :goto_6
    if-nez v1, :cond_11

    :goto_7
    move-object v1, v2

    goto :goto_8

    .line 8935
    :cond_11
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-ne v3, v4, :cond_13

    .line 8936
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 8938
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v4, v5, :cond_12

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_7

    .line 8944
    :cond_13
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v1

    :cond_14
    :goto_8
    if-nez v1, :cond_16

    if-eqz p1, :cond_15

    .line 900
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_15
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    goto :goto_9

    :cond_16
    move-object v0, v1

    .line 908
    :goto_9
    instance-of v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    if-eqz v3, :cond_1a

    .line 909
    move-object v3, p0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    if-nez v0, :cond_17

    const/16 v4, 0x10

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a(I)V

    .line 9149
    :cond_17
    iput-object v0, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 910
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    if-nez v1, :cond_18

    move-object v3, v2

    goto :goto_b

    :cond_18
    move-object v3, p1

    .line 912
    :goto_b
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)V

    goto :goto_a

    :cond_19
    return-void

    .line 915
    :cond_1a
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    if-eqz p1, :cond_1b

    .line 916
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    return-void

    .line 919
    :cond_1b
    sget-boolean p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    if-nez p1, :cond_1d

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;

    if-eqz p1, :cond_1c

    goto :goto_c

    :cond_1c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 920
    :cond_1d
    :goto_c
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;

    .line 9154
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 922
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p1

    if-eq v0, p1, :cond_1e

    const/4 p1, 0x0

    .line 10070
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a:Z

    :cond_1e
    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/h;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x3e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x40

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 5541
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 5543
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    .line 5544
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)V

    const-string v0, "$this$all"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5690
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5691
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    .line 560
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 561
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V

    goto :goto_1

    :cond_4
    return-void

    .line 566
    :cond_5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 567
    :goto_2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 568
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/m;->a(Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p1

    if-nez p1, :cond_6

    const/16 v1, 0x66

    .line 569
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_6
    if-nez p2, :cond_7

    const/16 v1, 0x68

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 5864
    :cond_7
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$6;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$6;-><init>()V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;

    invoke-direct {v2, p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/h;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V

    invoke-static {p1, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/lang/Object;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    .line 571
    invoke-static {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/n;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x2f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x30

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x31

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 448
    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 450
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    return v2

    .line 453
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 454
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 455
    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 456
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 457
    invoke-static {p1, v3, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x45

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x46

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 628
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 629
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 p0, 0x47

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 p0, 0x48

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 p0, 0x49

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_2
    if-nez p3, :cond_3

    const/16 p0, 0x4a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_3
    if-nez p4, :cond_4

    const/16 p0, 0x4b

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 8027
    :cond_4
    iget-object p0, p4, Lkotlin/n;->a:Ljava/lang/Object;

    .line 643
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 8028
    iget-object p2, p4, Lkotlin/n;->b:Ljava/lang/Object;

    .line 643
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p0

    return p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x43

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x44

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 616
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 617
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x2c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x2d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    if-nez p2, :cond_2

    const/16 v0, 0x2e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 437
    :cond_2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    return v1

    .line 5027
    :cond_4
    iget-object v0, p2, Lkotlin/n;->a:Ljava/lang/Object;

    .line 439
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 5028
    iget-object p2, p2, Lkotlin/n;->b:Ljava/lang/Object;

    .line 439
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/util/List;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, 0x2a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x2b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 406
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;Ljava/util/Map;)V

    return-object p1

    .line 408
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 409
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 410
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_3
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;Ljava/util/Map;)V

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;
    .locals 0

    .line 43
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->f:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;

    return-object p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 9

    if-nez p0, :cond_0

    const/16 v0, 0x41

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x42

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 576
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 577
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    .line 579
    sget-boolean v2, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b:Z

    const-string v3, " is null"

    const-string v4, "Return type of "

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 580
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 582
    :cond_5
    :goto_1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    return v4

    .line 584
    :cond_6
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/List;Ljava/util/List;)Lkotlin/n;

    move-result-object v3

    .line 587
    instance-of v5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const-string v6, "b is "

    if-eqz v5, :cond_9

    if-nez v2, :cond_8

    .line 588
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 590
    :cond_8
    :goto_2
    invoke-static {p0, v0, p1, v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Z

    move-result p0

    return p0

    .line 592
    :cond_9
    instance-of v5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v5, :cond_12

    if-nez v2, :cond_b

    .line 593
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 595
    :cond_b
    :goto_3
    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 596
    move-object v5, p1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 598
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object v6

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v6, :cond_d

    if-nez v7, :cond_c

    goto :goto_4

    .line 6622
    :cond_c
    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Z

    move-result v6

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_e

    return v4

    .line 600
    :cond_e
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 7027
    iget-object p0, v3, Lkotlin/n;->a:Ljava/lang/Object;

    .line 602
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 7028
    iget-object p1, v3, Lkotlin/n;->b:Ljava/lang/Object;

    .line 602
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p0

    return p0

    .line 606
    :cond_f
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    invoke-static {p0, v0, p1, v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v8

    :cond_11
    return v4

    .line 609
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected callable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">(TD;TD;Z)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object v2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 176
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p1

    .line 177
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 178
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b;

    invoke-virtual {v2, p1, v0, p2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;
    .locals 3

    .line 850
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v2

    .line 851
    invoke-direct {v0, p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object p0

    .line 853
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne v2, p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne p0, p1, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    return-object p0

    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->CONFLICT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-eq v2, p1, :cond_2

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->CONFLICT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->CONFLICT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    return-object p0
.end method

.method private static d(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;
    .locals 4

    .line 421
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    const-string p0, "Receiver presence mismatch"

    .line 422
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p0

    return-object p0

    .line 425
    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getValueParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getValueParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p0, p1, :cond_3

    const-string p0, "Value parameter number mismatch"

    .line 426
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;
    .locals 10

    if-nez p1, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 234
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p4

    .line 235
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 237
    :goto_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "External condition"

    const-string v5, "External condition failed"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;

    .line 239
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;->getContract()Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;->CONFLICTS_ONLY:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    if-eq v8, v9, :cond_3

    if-eqz v0, :cond_4

    .line 240
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;->getContract()Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;->SUCCESS_ONLY:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    if-eq v8, v9, :cond_3

    .line 242
    :cond_4
    invoke-interface {v3, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;->isOverridable(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    move-result-object v3

    .line 245
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$8;->a:[I

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->ordinal()I

    move-result v3

    aget v3, v8, v3

    if-eq v3, v2, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    goto :goto_1

    .line 252
    :cond_5
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    .line 250
    :cond_6
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    if-nez v0, :cond_a

    if-nez p4, :cond_9

    const/16 p1, 0x18

    .line 260
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_9
    return-object p4

    .line 264
    :cond_a
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_b
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;

    .line 266
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;->getContract()Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;->CONFLICTS_ONLY:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    if-ne v1, v3, :cond_b

    .line 268
    invoke-interface {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;->isOverridable(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    move-result-object v1

    .line 270
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$8;->a:[I

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_e

    if-eq v1, v7, :cond_d

    if-eq v1, v6, :cond_c

    goto :goto_2

    .line 274
    :cond_c
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    .line 272
    :cond_d
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    .line 276
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Contract violation in "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " condition. It\'s not supposed to end with success"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_f
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    if-nez p1, :cond_10

    const/16 p2, 0x1b

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_10
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;
    .locals 9

    if-nez p1, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 293
    :cond_1
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    const/16 p1, 0x1e

    .line 294
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_2
    return-object v0

    .line 296
    :cond_3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;

    move-result-object v0

    .line 297
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;

    move-result-object v1

    .line 299
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    .line 300
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    .line 302
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_6

    .line 303
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "Type parameter number mismatch"

    if-ge v6, p1, :cond_5

    .line 305
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {p1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 306
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 309
    :cond_5
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    .line 312
    :cond_6
    invoke-direct {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/List;Ljava/util/List;)Lkotlin/n;

    move-result-object v4

    const/4 v5, 0x0

    .line 314
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 315
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v7, v8, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/n;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string p1, "Type parameter bounds mismatch"

    .line 320
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 324
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 325
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v3, v5, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string p1, "Value parameter type mismatch"

    .line 330
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 334
    :cond_a
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v0, :cond_b

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isSuspend()Z

    move-result v0

    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isSuspend()Z

    move-result v1

    if-eq v0, v1, :cond_b

    const-string p1, "Incompatible suspendability"

    .line 336
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    :cond_b
    if-eqz p3, :cond_d

    .line 340
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    .line 341
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 344
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p3

    if-eqz p3, :cond_c

    const/4 v6, 0x1

    :cond_c
    if-nez v6, :cond_d

    .line 4027
    iget-object p3, v4, Lkotlin/n;->a:Ljava/lang/Object;

    .line 345
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 4028
    iget-object v0, v4, Lkotlin/n;->b:Ljava/lang/Object;

    .line 345
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    invoke-virtual {p3, v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContext;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "Return type mismatch"

    .line 352
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    return-object p1

    .line 357
    :cond_d
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    if-nez p1, :cond_e

    const/16 p2, 0x25

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_e
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/h;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x32

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 p1, 0x33

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 p1, 0x34

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    :cond_2
    if-nez p4, :cond_3

    const/16 p1, 0x35

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(I)V

    .line 488
    :cond_3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 490
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 491
    invoke-direct {p0, v0, p2, p4, p5}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)Ljava/util/Collection;

    move-result-object v0

    .line 493
    invoke-interface {p1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 496
    :cond_4
    invoke-static {p4, p1, p5}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V

    return-void
.end method
