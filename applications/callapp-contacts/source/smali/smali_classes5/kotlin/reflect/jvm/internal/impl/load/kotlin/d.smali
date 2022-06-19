.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;)V
    .locals 28

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const-string v4, "storageManager"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "moduleDescriptor"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "configuration"

    move-object/from16 v6, p3

    invoke-static {v6, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "classDataFinder"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "annotationAndConstantLoader"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "packageFragmentProvider"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notFoundClasses"

    move-object/from16 v12, p7

    invoke-static {v12, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "errorReporter"

    move-object/from16 v8, p8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "lookupTracker"

    move-object/from16 v9, p9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contractDeserializer"

    move-object/from16 v13, p10

    invoke-static {v13, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "kotlinTypeChecker"

    move-object/from16 v15, p11

    invoke-static {v15, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v4

    instance-of v7, v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    goto :goto_0

    :cond_0
    move-object v4, v10

    .line 52
    :goto_0
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 53
    move-object v7, v0

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-object v11, v2

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    move-object/from16 v17, v3

    check-cast v17, Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    .line 54
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s$a;

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 55
    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Iterable;

    if-nez v4, :cond_1

    move-object v0, v10

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;

    :cond_2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    move-object/from16 v25, v0

    if-nez v4, :cond_3

    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    move-result-object v10

    :goto_2
    if-nez v10, :cond_4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$b;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    move-object/from16 v26, v0

    goto :goto_3

    :cond_4
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    move-object/from16 v26, v10

    .line 58
    :goto_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-result-object v16

    .line 59
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;

    .line 2071
    sget-object v2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v2, Ljava/util/List;

    .line 59
    check-cast v2, Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Ljava/lang/Iterable;)V

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    const/16 v19, 0x0

    const/high16 v20, 0x40000

    const/16 v21, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    move-object v5, v11

    move-object/from16 v6, v17

    move-object/from16 v7, v22

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v27, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v17, p11

    .line 52
    invoke-direct/range {v0 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    return-void
.end method
