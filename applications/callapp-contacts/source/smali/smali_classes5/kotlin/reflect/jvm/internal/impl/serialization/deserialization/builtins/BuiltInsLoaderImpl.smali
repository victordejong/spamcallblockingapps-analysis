.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    return-void
.end method

.method public static synthetic createBuiltInPackageFragmentProvider$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/util/Set;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/af;
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 47
    invoke-virtual/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->createBuiltInPackageFragmentProvider(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/util/Set;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final createBuiltInPackageFragmentProvider(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/util/Set;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/af;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/af;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v3, p8

    const-string v4, "storageManager"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "module"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "packageFqNames"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "classDescriptorFactories"

    move-object/from16 v11, p4

    invoke-static {v11, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "platformDependentDeclarationFilter"

    move-object/from16 v15, p5

    invoke-static {v15, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "additionalClassPartsProvider"

    move-object/from16 v14, p6

    invoke-static {v14, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadResource"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    check-cast v0, Ljava/lang/Iterable;

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 96
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 58
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/InputStream;

    if-eqz v7, :cond_0

    .line 60
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;

    move/from16 v8, p7

    invoke-static {v5, v1, v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource not found in classpath: "

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    move-object/from16 v22, v4

    check-cast v22, Ljava/util/List;

    .line 62
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ag;

    move-object/from16 v0, v22

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ag;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    move-object v12, v5

    invoke-direct {v5, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    .line 66
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-object v0, v13

    .line 69
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 70
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

    move-object v10, v4

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-object v6, v10

    invoke-direct {v7, v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/af;)V

    move-object v4, v7

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    .line 71
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/serialization/a;

    invoke-direct {v7, v2, v5, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/a;)V

    move-object v5, v7

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    .line 73
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;

    .line 74
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    move-object v8, v9

    const-string v2, "DO_NOTHING"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/a/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/a/a/c$a;

    move-object v9, v2

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/a/a/c;

    .line 76
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;

    move-object/from16 v23, v10

    move-object v10, v2

    .line 79
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v2

    move-object/from16 v24, v13

    move-object v13, v2

    .line 82
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 1024
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-object/from16 v16, v2

    const/16 v17, 0x0

    .line 83
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;

    .line 1071
    sget-object v18, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v18, Ljava/util/List;

    .line 83
    move-object/from16 v11, v18

    check-cast v11, Ljava/lang/Iterable;

    invoke-direct {v2, v1, v11}, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Ljava/lang/Iterable;)V

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    const/16 v19, 0x0

    const/high16 v20, 0x50000

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v14, p6

    move-object/from16 v15, p5

    .line 66
    invoke-direct/range {v0 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;

    move-object/from16 v2, v24

    .line 87
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V

    goto :goto_1

    :cond_2
    return-object v23
.end method

.method public final createPackageFragmentProvider(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/af;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;",
            "Z)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/af;"
        }
    .end annotation

    const-string v0, "storageManager"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInsModule"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDescriptorFactories"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j;->r:Ljava/util/Set;

    .line 43
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a;

    move-object v10, p0

    iget-object v1, v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v1, p0

    move/from16 v8, p6

    .line 35
    invoke-virtual/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->createBuiltInPackageFragmentProvider(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/util/Set;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-result-object v0

    return-object v0
.end method
