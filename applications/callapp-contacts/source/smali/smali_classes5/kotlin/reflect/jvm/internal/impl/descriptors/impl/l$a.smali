.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

.field private final c:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    const/4 v0, 0x1

    sput-boolean v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a:Z

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;Lkotlin/reflect/jvm/internal/impl/f/n;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 200
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;-><init>()V

    .line 201
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$1;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)V

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->c:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 208
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$2;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)V

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->d:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 214
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$3;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)V

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "+TD;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 256
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 258
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$4;

    invoke-direct {v6, p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a$4;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Ljava/util/Set;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/h;)V

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;)Ljava/util/Collection;
    .locals 4

    .line 2289
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2290
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 2291
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2292
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x8

    .line 195
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 1241
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 3

    .line 246
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    .line 247
    sget-boolean v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enum entry and its companion object both should have exactly one supertype: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 248
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_2
    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 13

    const/16 v0, 0xc

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v6, 0x2

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v9, "storageManager"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_2
    const-string v9, "p"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "nameFilter"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "kindFilter"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "fromSupertypes"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    aput-object v7, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "location"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "name"

    aput-object v9, v6, v8

    :goto_2
    const-string v8, "getContributedDescriptors"

    const-string v9, "resolveFakeOverrides"

    const-string v10, "getContributedFunctions"

    const-string v11, "getContributedVariables"

    const/4 v12, 0x1

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_9
    const-string v7, "getVariableNames"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_a
    const-string v7, "getClassifierNames"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_b
    const-string v7, "getFunctionNames"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_c
    const-string v7, "computeAllDeclarations"

    aput-object v7, v6, v12

    goto :goto_3

    :pswitch_d
    aput-object v8, v6, v12

    goto :goto_3

    :cond_2
    aput-object v9, v6, v12

    goto :goto_3

    :cond_3
    const-string v7, "getSupertypeScope"

    aput-object v7, v6, v12

    goto :goto_3

    :cond_4
    aput-object v10, v6, v12

    goto :goto_3

    :cond_5
    aput-object v11, v6, v12

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v7, "<init>"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_e
    const-string v7, "printScopeStructure"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_f
    aput-object v8, v6, v5

    goto :goto_4

    :pswitch_10
    aput-object v9, v6, v5

    goto :goto_4

    :pswitch_11
    const-string v7, "computeFunctions"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_12
    aput-object v10, v6, v5

    goto :goto_4

    :pswitch_13
    const-string v7, "computeProperties"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_14
    aput-object v11, v6, v5

    :goto_4
    :pswitch_15
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :pswitch_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_15
        :pswitch_11
        :pswitch_15
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_f
        :pswitch_f
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x4

    .line 195
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 2230
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClassifierNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x12

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    return-object v0
.end method

.method public final getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0xd

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 p1, 0xe

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 284
    :cond_1
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_2

    const/16 p2, 0xf

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_2
    return-object p1
.end method

.method public final getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x6

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 236
    :cond_1
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->c:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_2

    const/4 p2, 0x7

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_2
    return-object p1
.end method

.method public final getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    .line 225
    :cond_1
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->d:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_2

    const/4 p2, 0x3

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_2
    return-object p1
.end method

.method public final getFunctionNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    const/16 v1, 0x11

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    return-object v0
.end method

.method public final getVariableNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    const/16 v1, 0x13

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l$a;->a(I)V

    :cond_0
    return-object v0
.end method
