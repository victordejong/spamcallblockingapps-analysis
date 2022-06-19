.class public Lkotlin/reflect/jvm/internal/impl/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/f/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/f/f$d;,
        Lkotlin/reflect/jvm/internal/impl/f/f$a;,
        Lkotlin/reflect/jvm/internal/impl/f/f$b;,
        Lkotlin/reflect/jvm/internal/impl/f/f$j;,
        Lkotlin/reflect/jvm/internal/impl/f/f$i;,
        Lkotlin/reflect/jvm/internal/impl/f/f$g;,
        Lkotlin/reflect/jvm/internal/impl/f/f$h;,
        Lkotlin/reflect/jvm/internal/impl/f/f$f;,
        Lkotlin/reflect/jvm/internal/impl/f/f$e;,
        Lkotlin/reflect/jvm/internal/impl/f/f$k;,
        Lkotlin/reflect/jvm/internal/impl/f/f$l;,
        Lkotlin/reflect/jvm/internal/impl/f/f$c;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/f/n;

.field static final synthetic c:Z = true

.field private static final d:Ljava/lang/String;


# instance fields
.field protected final b:Lkotlin/reflect/jvm/internal/impl/f/k;

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/f$c;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    const-class v0, Lkotlin/reflect/jvm/internal/impl/f/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    const-string v3, "$this$substringBeforeLast"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "delimiter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "missingDelimiterValue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1467
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1468
    :cond_0
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :goto_0
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/f/f;->d:Ljava/lang/String;

    .line 57
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$1;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a:Lkotlin/reflect/jvm/internal/impl/f/f$c;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/f/e;->a:Lkotlin/reflect/jvm/internal/impl/f/e;

    const-string v3, "NO_LOCKS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/f$1;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/f/f$c;Lkotlin/reflect/jvm/internal/impl/f/k;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/f/f;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0, v0}, Lkotlin/reflect/jvm/internal/impl/f/f;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/InterruptedException;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a:Lkotlin/reflect/jvm/internal/impl/f/f$c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/k;->b:Lkotlin/reflect/jvm/internal/impl/f/k$a;

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/k$a;->a(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/d;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/f/f;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/f/f$c;Lkotlin/reflect/jvm/internal/impl/f/k;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/f/f$c;Lkotlin/reflect/jvm/internal/impl/f/k;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    .line 92
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    .line 94
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->e:Lkotlin/reflect/jvm/internal/impl/f/f$c;

    .line 95
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/f/f$c;Lkotlin/reflect/jvm/internal/impl/f/k;Lkotlin/reflect/jvm/internal/impl/f/f$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/f;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/f/f$c;Lkotlin/reflect/jvm/internal/impl/f/k;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 34
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/f/f;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/f/f;)Lkotlin/reflect/jvm/internal/impl/f/f$c;
    .locals 0

    .line 34
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->e:Lkotlin/reflect/jvm/internal/impl/f/f$c;

    return-object p0
.end method

.method private static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x14

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager"

    const-string v9, "compute"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq p0, v10, :cond_3

    if-eq p0, v5, :cond_3

    const/4 v5, 0x5

    if-eq p0, v5, :cond_3

    const/4 v5, 0x6

    if-eq p0, v5, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v5, "debugText"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_0
    const-string v5, "throwable"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_1
    const-string v5, "source"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_2
    const-string v5, "postCompute"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_3
    const-string v5, "computable"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_4
    const-string v5, "map"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_5
    const-string v5, "onRecursiveCall"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_6
    aput-object v8, v7, v11

    goto :goto_2

    :pswitch_7
    aput-object v9, v7, v11

    goto :goto_2

    :cond_2
    const-string v5, "lock"

    aput-object v5, v7, v11

    goto :goto_2

    :cond_3
    :pswitch_8
    const-string v5, "exceptionHandlingStrategy"

    aput-object v5, v7, v11

    :goto_2
    const-string v5, "sanitizeStackTrace"

    const-string v11, "createMemoizedFunctionWithNullableValues"

    const-string v12, "createMemoizedFunction"

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    aput-object v8, v7, v10

    goto :goto_3

    :cond_4
    aput-object v5, v7, v10

    goto :goto_3

    :cond_5
    aput-object v11, v7, v10

    goto :goto_3

    :cond_6
    aput-object v12, v7, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "createWithExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_9
    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_a
    const-string v5, "recursionDetectedDefault"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_b
    aput-object v9, v7, v6

    goto :goto_4

    :pswitch_c
    const-string v5, "createNullableLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_d
    const-string v5, "createRecursionTolerantNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_e
    const-string v5, "createNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_f
    const-string v5, "createLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_10
    const-string v5, "createRecursionTolerantLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_11
    const-string v5, "createLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_12
    aput-object v11, v7, v6

    goto :goto_4

    :pswitch_13
    aput-object v12, v7, v6

    goto :goto_4

    :pswitch_14
    const-string v5, "replaceExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_15
    const-string v5, "<init>"

    aput-object v5, v7, v6

    :goto_4
    :pswitch_16
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_16
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 v0, 0x24

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    .line 659
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 660
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 665
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/f/f;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 670
    :cond_2
    :goto_1
    sget-boolean v3, Lkotlin/reflect/jvm/internal/impl/f/f;->c:Z

    if-nez v3, :cond_4

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "This method should only be called on exceptions created in LockBasedStorageManager"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 672
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 673
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    if-nez p0, :cond_5

    const/16 v0, 0x25

    .line 674
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    :cond_5
    return-object p0
.end method

.method private static c()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/f/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/f/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 680
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/f/f;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/f$b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/f/f$1;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lkotlin/reflect/jvm/internal/impl/f/f$l<",
            "TV;>;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion detected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on input: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/AssertionError;

    throw p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)",
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/f/f;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 1142
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/f/f$j;

    invoke-direct {v1, p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$j;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public final a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    .line 179
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$g;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$g;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final a(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;TT;)",
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(I)V

    .line 202
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$2;

    invoke-direct {v0, p0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/f$2;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "TT;>;"
        }
    .end annotation

    .line 223
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/f/f$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/f/f$3;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/f/a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 708
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/f/f;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/f$a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/f/f$1;)V

    return-object v0
.end method

.method public final b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)",
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "TK;TV;>;"
        }
    .end annotation

    .line 164
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/f/f;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 1173
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/f/f$i;

    invoke-direct {v1, p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$i;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public final b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/reflect/jvm/internal/impl/f/j<",
            "TT;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$e;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final c(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->a()V

    .line 290
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 293
    :try_start_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->e:Lkotlin/reflect/jvm/internal/impl/f/f$c;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 296
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
