.class public final Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$WrappedProcessCanceledException;,
        Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$a;
    }
.end annotation


# static fields
.field public static volatile a:Z

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 61
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(I)V

    :cond_0
    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x2

    .line 62
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(I)V

    :cond_2
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .line 67
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$a;-><init>(Ljava/lang/Throwable;Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;)V

    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/utils/WrappedValues"

    const/4 v6, 0x0

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_3

    if-eq p0, v3, :cond_2

    const-string/jumbo v7, "value"

    aput-object v7, v4, v6

    goto :goto_2

    :cond_2
    const-string v7, "throwable"

    aput-object v7, v4, v6

    goto :goto_2

    :cond_3
    aput-object v5, v4, v6

    :goto_2
    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_4

    aput-object v5, v4, v0

    goto :goto_3

    :cond_4
    const-string v5, "escapeNull"

    aput-object v5, v4, v0

    :goto_3
    if-eq p0, v0, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v3, :cond_6

    const/4 v3, 0x4

    if-eq p0, v3, :cond_5

    const-string v3, "unescapeNull"

    aput-object v3, v4, v1

    goto :goto_4

    :cond_5
    const-string v3, "unescapeExceptionOrNull"

    aput-object v3, v4, v1

    goto :goto_4

    :cond_6
    const-string v3, "escapeThrowable"

    aput-object v3, v4, v1

    :cond_7
    :goto_4
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v0, :cond_8

    if-eq p0, v1, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(I)V

    .line 72
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(I)V

    .line 1055
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 78
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$a;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$a;->a()Ljava/lang/Throwable;

    move-result-object p0

    .line 81
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$WrappedProcessCanceledException;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$WrappedProcessCanceledException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-string v0, "e"

    .line 85
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    throw p0

    :cond_1
    return-object p0
.end method
