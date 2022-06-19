.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 54

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    .line 18
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    const-string v0, "toArray()[Ljava/lang/Object;"

    const-string v1, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Collection"

    .line 18
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v2, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v0, v2}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->b:Ljava/util/Set;

    .line 200
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    .line 1188
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    .line 1061
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1189
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1190
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    .line 1062
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.wrapperFqName.shortName().asString()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Value()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 1191
    invoke-static {v2, v5}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1193
    :cond_0
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 1188
    check-cast v2, Ljava/util/Set;

    const-string v0, "sort(Ljava/util/Comparator;)V"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "List"

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 25
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v6, "codePointAt(I)I"

    const-string v7, "codePointBefore(I)I"

    const-string v8, "codePointCount(II)I"

    const-string v9, "compareToIgnoreCase(Ljava/lang/String;)I"

    const-string v10, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const-string v11, "contains(Ljava/lang/CharSequence;)Z"

    const-string v12, "contentEquals(Ljava/lang/CharSequence;)Z"

    const-string v13, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const-string v14, "endsWith(Ljava/lang/String;)Z"

    const-string v15, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const-string v16, "getBytes()[B"

    const-string v17, "getBytes(II[BI)V"

    const-string v18, "getBytes(Ljava/lang/String;)[B"

    const-string v19, "getBytes(Ljava/nio/charset/Charset;)[B"

    const-string v20, "getChars(II[CI)V"

    const-string v21, "indexOf(I)I"

    const-string v22, "indexOf(II)I"

    const-string v23, "indexOf(Ljava/lang/String;)I"

    const-string v24, "indexOf(Ljava/lang/String;I)I"

    const-string v25, "intern()Ljava/lang/String;"

    const-string v26, "isEmpty()Z"

    const-string v27, "lastIndexOf(I)I"

    const-string v28, "lastIndexOf(II)I"

    const-string v29, "lastIndexOf(Ljava/lang/String;)I"

    const-string v30, "lastIndexOf(Ljava/lang/String;I)I"

    const-string v31, "matches(Ljava/lang/String;)Z"

    const-string v32, "offsetByCodePoints(II)I"

    const-string v33, "regionMatches(ILjava/lang/String;II)Z"

    const-string v34, "regionMatches(ZILjava/lang/String;II)Z"

    const-string v35, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v36, "replace(CC)Ljava/lang/String;"

    const-string v37, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v38, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const-string v39, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const-string v40, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const-string v41, "startsWith(Ljava/lang/String;I)Z"

    const-string v42, "startsWith(Ljava/lang/String;)Z"

    const-string v43, "substring(II)Ljava/lang/String;"

    const-string v44, "substring(I)Ljava/lang/String;"

    const-string v45, "toCharArray()[C"

    const-string v46, "toLowerCase()Ljava/lang/String;"

    const-string v47, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v48, "toUpperCase()Ljava/lang/String;"

    const-string v49, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v50, "trim()Ljava/lang/String;"

    const-string v51, "isBlank()Z"

    const-string v52, "lines()Ljava/util/stream/Stream;"

    const-string v53, "repeat(I)Ljava/lang/String;"

    .line 48
    filled-new-array/range {v6 .. v53}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "String"

    .line 29
    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 25
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "isInfinite()Z"

    const-string v7, "isNaN()Z"

    .line 51
    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Double"

    invoke-static {v9, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 25
    invoke-static {v2, v8}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 52
    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Float"

    invoke-static {v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 25
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "getDeclaringClass()Ljava/lang/Class;"

    const-string v8, "finalize()V"

    .line 54
    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, "Enum"

    invoke-static {v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 25
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "isEmpty()Z"

    .line 55
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, "CharSequence"

    invoke-static {v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 25
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 24
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->c:Ljava/util/Set;

    .line 201
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    const-string v2, "codePoints()Ljava/util/stream/IntStream;"

    const-string v4, "chars()Ljava/util/stream/IntStream;"

    .line 71
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v8, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "forEachRemaining(Ljava/util/function/Consumer;)V"

    .line 76
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, "Iterator"

    .line 74
    invoke-static {v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 69
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "forEach(Ljava/util/function/Consumer;)V"

    const-string v8, "spliterator()Ljava/util/Spliterator;"

    .line 81
    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "Iterable"

    .line 79
    invoke-static {v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 69
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v9, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    const-string v10, "fillInStackTrace()Ljava/lang/Throwable;"

    const-string v11, "getLocalizedMessage()Ljava/lang/String;"

    const-string v12, "printStackTrace()V"

    const-string v13, "printStackTrace(Ljava/io/PrintStream;)V"

    const-string v14, "printStackTrace(Ljava/io/PrintWriter;)V"

    const-string v15, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const-string v16, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    const-string v17, "getSuppressed()[Ljava/lang/Throwable;"

    const-string v18, "addSuppressed(Ljava/lang/Throwable;)V"

    .line 90
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "Throwable"

    .line 84
    invoke-static {v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 69
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "parallelStream()Ljava/util/stream/Stream;"

    const-string v10, "stream()Ljava/util/stream/Stream;"

    const-string v11, "removeIf(Ljava/util/function/Predicate;)Z"

    .line 96
    filled-new-array {v8, v4, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 69
    invoke-static {v2, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    .line 101
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-static {v5, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 69
    invoke-static {v2, v8}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v12, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v13, "forEach(Ljava/util/function/BiConsumer;)V"

    const-string v14, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v15, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v16, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v17, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v18, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v19, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v20, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v21, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 114
    filled-new-array/range {v12 .. v21}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "Map"

    .line 104
    invoke-static {v10, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 69
    invoke-static {v2, v8}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 68
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->d:Ljava/util/Set;

    .line 202
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    .line 120
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 122
    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 120
    invoke-static {v1, v0}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const-string v11, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v12, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v13, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v14, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v15, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v16, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v17, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v18, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v19, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 133
    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v10, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 120
    invoke-static {v0, v1}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 119
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->e:Ljava/util/Set;

    .line 203
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    .line 139
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->g()Ljava/util/Set;

    move-result-object v0

    const-string v1, "D"

    .line 140
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 139
    invoke-static {v0, v1}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const-string v10, "[C"

    const-string v11, "[CII"

    const-string v12, "[III"

    const-string v13, "[BIILjava/lang/String;"

    const-string v14, "[BIILjava/nio/charset/Charset;"

    const-string v15, "[BLjava/lang/String;"

    const-string v16, "[BLjava/nio/charset/Charset;"

    const-string v17, "[BII"

    const-string v18, "[B"

    const-string v19, "Ljava/lang/StringBuffer;"

    const-string v20, "Ljava/lang/StringBuilder;"

    .line 149
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 139
    invoke-static {v0, v1}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 138
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->f:Ljava/util/Set;

    .line 204
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    const-string v0, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    .line 156
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 155
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->g:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->b:Ljava/util/Set;

    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->b(Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 174
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const-class v0, Ljava/io/Serializable;

    .line 180
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :catch_0
    return v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->i:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/j;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->d:Ljava/util/Set;

    return-object v0
.end method

.method public static d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->e:Ljava/util/Set;

    return-object v0
.end method

.method public static e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->f:Ljava/util/Set;

    return-object v0
.end method

.method public static f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->g:Ljava/util/Set;

    return-object v0
.end method

.method private static g()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    .line 162
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 163
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 161
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 164
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 195
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 196
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    .line 166
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.wrapperFqName.shortName().asString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Ljava/lang/String;"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 197
    invoke-static {v1, v3}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 199
    :cond_0
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 194
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method
