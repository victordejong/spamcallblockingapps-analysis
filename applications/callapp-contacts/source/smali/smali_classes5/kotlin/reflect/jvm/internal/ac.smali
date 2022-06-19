.class public final Lkotlin/reflect/jvm/internal/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u0008H\u0000\" \u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "moduleByClassLoader",
        "Ljava/util/concurrent/ConcurrentMap;",
        "Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;",
        "clearModuleByClassLoaderCache",
        "",
        "getOrCreateModule",
        "Ljava/lang/Class;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lkotlin/reflect/jvm/internal/ak;",
            "Ljava/lang/ref/WeakReference<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lkotlin/reflect/jvm/internal/ac;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;"
        }
    .end annotation

    const-string v0, "$this$getOrCreateModule"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 50
    new-instance v1, Lkotlin/reflect/jvm/internal/ak;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ak;-><init>(Ljava/lang/ClassLoader;)V

    .line 52
    sget-object v2, Lkotlin/reflect/jvm/internal/ac;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;

    if-eqz v4, :cond_0

    const-string v0, "it"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 55
    :cond_0
    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    :cond_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j$a;

    const-string v2, "classLoader"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/f/f;

    const-string v4, "RuntimeModuleData"

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/f/f;-><init>(Ljava/lang/String;)V

    .line 1057
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/f/n;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    invoke-direct {v4, v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;)V

    .line 1058
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<runtime module for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    const-string v5, "special(\"<runtime module for $classLoader>\")"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/builtins/g;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x38

    const/4 v13, 0x0

    move-object v5, v15

    move-object v7, v3

    invoke-direct/range {v5 .. v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1112
    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;

    invoke-direct {v6, v4, v15}, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V

    invoke-interface {v5, v6}, Lkotlin/reflect/jvm/internal/impl/f/n;->c(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 1061
    move-object v6, v15

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    const-string v5, "moduleDescriptor"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2070
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;

    const/4 v14, 0x1

    invoke-direct {v5, v6, v14}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Z)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const-string v7, "computation"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3065
    iget-object v7, v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->f:Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x0

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    sget-boolean v8, Lkotlin/x;->a:Z

    if-eqz v8, :cond_4

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins repeated initialization"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3066
    :cond_4
    :goto_1
    iput-object v5, v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->f:Lkotlin/jvm/functions/Function0;

    .line 1063
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;

    invoke-direct {v13, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;-><init>(Ljava/lang/ClassLoader;)V

    .line 1064
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    move-object v9, v12

    invoke-direct {v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;-><init>()V

    .line 1065
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/j;

    invoke-direct {v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/j;-><init>()V

    .line 1066
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    invoke-direct {v10, v3, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    .line 1071
    move-object v7, v13

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    move-object v8, v7

    move-object v5, v11

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;

    move-object/from16 v16, v5

    .line 4111
    sget-object v17, Lkotlin/reflect/jvm/internal/impl/load/kotlin/u$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/u$a;

    move-object/from16 v14, v17

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;

    move-object/from16 v17, v14

    .line 4103
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "module"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v29, v1

    const-string v1, "storageManager"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v4

    const-string v4, "notFoundClasses"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v4

    const-string v4, "reflectKotlinClassFinder"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v32, v4

    const-string v4, "deserializedDescriptorResolver"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v7

    const-string v7, "singleModuleClassResolver"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "packagePartProvider"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4113
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/load/java/c;

    move-object/from16 v22, v14

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/utils/e;->k:Lkotlin/reflect/jvm/internal/impl/utils/e;

    invoke-direct {v14, v3, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/c;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/utils/e;)V

    .line 4114
    sget-object v27, Lkotlin/reflect/jvm/internal/impl/utils/e;->k:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 4115
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-object v5, v7

    move-object/from16 v19, v7

    .line 4116
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/d;

    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/d;-><init>(Ljava/lang/ClassLoader;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/n;

    move-object/from16 v33, v4

    move-object/from16 v0, v18

    move-object/from16 v4, v19

    move-object/from16 v18, v11

    .line 4117
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/a/j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/j;

    move-object/from16 v34, v0

    move-object v0, v10

    move-object v10, v11

    move-object/from16 v19, v12

    const-string v12, "DO_NOTHING"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/i;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/i;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    move-object/from16 v36, v12

    move-object/from16 v35, v19

    move-object v12, v13

    move-object/from16 v37, v1

    const-string v1, "EMPTY"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4118
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/a/f$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/f$a;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/a/f;

    move-object/from16 v38, v18

    move-object/from16 v18, v14

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;

    .line 5071
    sget-object v19, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v19, Ljava/util/List;

    move-object/from16 v20, v15

    .line 4118
    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/Iterable;

    invoke-direct {v14, v3, v15}, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Ljava/lang/Iterable;)V

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    move-object/from16 v15, v18

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;

    check-cast v18, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    move-object/from16 p0, v1

    move-object v1, v15

    move-object/from16 v39, v20

    move-object/from16 v15, v18

    .line 4119
    sget-object v18, Lkotlin/reflect/jvm/internal/impl/descriptors/aw$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/aw$a;

    check-cast v18, Lkotlin/reflect/jvm/internal/impl/descriptors/aw;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/a/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/a/a/c$a;

    check-cast v19, Lkotlin/reflect/jvm/internal/impl/a/a/c;

    move-object/from16 v40, v2

    .line 4120
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/i;

    move-object/from16 v21, v2

    invoke-direct {v2, v6, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V

    .line 4121
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    move-object/from16 v23, v2

    move-object/from16 v20, v6

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/utils/e;->k:Lkotlin/reflect/jvm/internal/impl/utils/e;

    move-object/from16 v41, v0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    sget-object v24, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c$b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c$b;

    move-object/from16 v42, v4

    move-object/from16 v4, v24

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    invoke-direct {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;)V

    invoke-direct {v2, v1, v6, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/c;Lkotlin/reflect/jvm/internal/impl/utils/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;)V

    .line 4122
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/o$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/o$a;

    move-object/from16 v24, v0

    check-cast v24, Lkotlin/reflect/jvm/internal/impl/load/java/o;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c$b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c$b;

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v0, v20

    move-object v6, v3

    .line 4115
    invoke-direct/range {v5 .. v27}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/java/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;Lkotlin/reflect/jvm/internal/impl/load/java/a/j;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/load/java/a/g;Lkotlin/reflect/jvm/internal/impl/load/java/a/f;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/c/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;Lkotlin/reflect/jvm/internal/impl/descriptors/aw;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/builtins/i;Lkotlin/reflect/jvm/internal/impl/load/java/c;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/load/java/o;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/utils/e;)V

    .line 4125
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    move-object/from16 v2, v42

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;)V

    move-object/from16 v2, v40

    .line 1075
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v37

    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v31

    move-object/from16 v2, v41

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "lazyJavaPackageFragmentProvider"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v32

    move-object/from16 v13, v34

    invoke-static {v13, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5136
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;

    invoke-direct {v9, v13, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;)V

    .line 5137
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    invoke-direct {v10, v0, v2, v3, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;)V

    .line 5140
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;

    .line 5141
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    move-object v8, v5

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 5143
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/i;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/i;

    move-object v13, v5

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/a/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/a/a/c$a;

    move-object v14, v5

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/a/a/c;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    move-result-object v16

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object v5, v15

    move-object v7, v0

    move-object v11, v1

    move-object v12, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 5140
    invoke-direct/range {v5 .. v16}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;)V

    const-string v5, "components"

    .line 1080
    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6047
    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    const-string v6, "<set-?>"

    .line 6039
    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7034
    iput-object v5, v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 1082
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    move-object/from16 v7, p0

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v1, v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/java/a/g;)V

    .line 1083
    invoke-static {v15, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v36

    .line 8033
    iput-object v15, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/j;->a:Lkotlin/reflect/jvm/internal/impl/resolve/c/b;

    .line 1083
    const-class v1, Lkotlin/v;

    .line 1086
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1087
    new-instance v16, Lkotlin/reflect/jvm/internal/impl/builtins/a/h;

    .line 1088
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;

    const-string v6, "stdlibClassLoader"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;-><init>(Ljava/lang/ClassLoader;)V

    move-object v7, v5

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    invoke-virtual/range {v30 .. v30}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    invoke-virtual/range {v30 .. v30}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    .line 1089
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    move-object v12, v1

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;

    .line 8071
    sget-object v5, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v5, Ljava/util/List;

    .line 1089
    check-cast v5, Ljava/lang/Iterable;

    invoke-direct {v1, v3, v5}, Lkotlin/reflect/jvm/internal/impl/resolve/d/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Ljava/lang/Iterable;)V

    move-object v14, v1

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    move-object/from16 v5, v16

    move-object v6, v3

    move-object v8, v0

    move-object/from16 v9, v41

    .line 1087
    invoke-direct/range {v5 .. v14}, Lkotlin/reflect/jvm/internal/impl/builtins/a/h;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    move-object/from16 v3, v39

    aput-object v3, v1, v28

    .line 1092
    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a([Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V

    .line 1093
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;

    const/4 v5, 0x2

    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/descriptors/ai;

    .line 9027
    iget-object v6, v15, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    .line 1093
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ai;

    aput-object v6, v5, v28

    check-cast v16, Lkotlin/reflect/jvm/internal/impl/descriptors/ai;

    aput-object v16, v5, v0

    invoke-static {v5}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/af;)V

    .line 1095
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;

    .line 9047
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 1097
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;

    move-object/from16 v3, v38

    invoke-direct {v2, v4, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;)V

    const/4 v3, 0x0

    .line 1095
    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    :goto_2
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/ac;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v4, v29

    :try_start_1
    invoke-interface {v1, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    .line 10035
    iput-object v3, v4, Lkotlin/reflect/jvm/internal/ak;->a:Ljava/lang/ClassLoader;

    return-object v0

    .line 63
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    .line 11035
    iput-object v3, v4, Lkotlin/reflect/jvm/internal/ak;->a:Ljava/lang/ClassLoader;

    return-object v5

    .line 65
    :cond_6
    :try_start_3
    invoke-interface {v1, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v29, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v4, v29

    .line 12035
    :goto_3
    iput-object v3, v4, Lkotlin/reflect/jvm/internal/ak;->a:Ljava/lang/ClassLoader;

    .line 68
    throw v0
.end method
