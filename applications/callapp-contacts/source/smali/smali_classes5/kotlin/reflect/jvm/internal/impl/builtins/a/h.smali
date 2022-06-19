.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/h;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    move-object/from16 v14, p3

    move-object/from16 v6, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v4, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    const-string v5, "storageManager"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "finder"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "moduleDescriptor"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "notFoundClasses"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "additionalClassPartsProvider"

    move-object/from16 v7, p5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "platformDependentDeclarationFilter"

    move-object/from16 v7, p6

    invoke-static {v7, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "deserializationConfiguration"

    move-object/from16 v7, p7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "kotlinTypeChecker"

    move-object/from16 v7, p8

    invoke-static {v7, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "samConversionResolver"

    move-object/from16 v7, p9

    invoke-static {v7, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;

    invoke-direct {v0, v12, v1, v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    .line 35
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-object v1, v11

    .line 39
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-object v7, v8

    invoke-direct {v5, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/af;)V

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    .line 40
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/serialization/a;

    invoke-direct {v8, v14, v6, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/a;)V

    move-object v6, v8

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    .line 42
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;

    .line 43
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    move-object v9, v10

    move-object/from16 p2, v11

    const-string v11, "DO_NOTHING"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/a/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/a/a/c$a;

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/a/a/c;

    .line 45
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;

    move-object/from16 v0, p2

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;

    move-object/from16 v23, v1

    .line 47
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;

    invoke-direct {v1, v12, v14}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;

    const/16 v17, 0x0

    aput-object v1, v0, v17

    .line 48
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    const/16 v17, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 p4, v1

    move-object/from16 p5, p1

    move-object/from16 p6, p3

    move-object/from16 p7, v17

    move/from16 p8, v20

    move-object/from16 p9, v21

    invoke-direct/range {p4 .. p9}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;

    const/4 v12, 0x1

    aput-object v1, v0, v12

    .line 46
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Iterable;

    .line 51
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v14

    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 1024
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const/high16 v21, 0x40000

    const/16 v22, 0x0

    move-object/from16 v1, v23

    .line 35
    invoke-direct/range {v1 .. v22}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/h;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;
    .locals 4

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/h;->b()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/h;->a()Lkotlin/reflect/jvm/internal/impl/f/n;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/h;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;

    move-result-object p1

    .line 60
    :goto_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;

    return-object p1
.end method
