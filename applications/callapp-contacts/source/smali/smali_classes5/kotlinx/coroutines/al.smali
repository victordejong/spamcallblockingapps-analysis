.class public final enum Lkotlinx/coroutines/al;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/al;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JC\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n2\u001c\u0010\u000b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\\\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\u0011\"\u0004\u0008\u0001\u0010\n2\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012\u00a2\u0006\u0002\u0008\u00132\u0006\u0010\u0014\u001a\u0002H\u00112\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0007j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineStart;",
        "",
        "(Ljava/lang/String;I)V",
        "isLazy",
        "",
        "isLazy$annotations",
        "()V",
        "()Z",
        "invoke",
        "",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "completion",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V",
        "R",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "receiver",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V",
        "DEFAULT",
        "LAZY",
        "ATOMIC",
        "UNDISPATCHED",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/al;

.field public static final enum ATOMIC:Lkotlinx/coroutines/al;

.field public static final enum DEFAULT:Lkotlinx/coroutines/al;

.field public static final enum LAZY:Lkotlinx/coroutines/al;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/al;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/al;

    new-instance v1, Lkotlinx/coroutines/al;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/al;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/al;->DEFAULT:Lkotlinx/coroutines/al;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/al;

    const-string v2, "LAZY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/al;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/al;->LAZY:Lkotlinx/coroutines/al;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/al;

    const-string v2, "ATOMIC"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/al;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/al;->ATOMIC:Lkotlinx/coroutines/al;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/al;

    const-string v2, "UNDISPATCHED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/al;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/al;->UNDISPATCHED:Lkotlinx/coroutines/al;

    aput-object v1, v0, v3

    sput-object v0, Lkotlinx/coroutines/al;->$VALUES:[Lkotlinx/coroutines/al;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic isLazy$annotations()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/al;
    .locals 1

    const-class v0, Lkotlinx/coroutines/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/al;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/al;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/al;->$VALUES:[Lkotlinx/coroutines/al;

    invoke-virtual {v0}, [Lkotlinx/coroutines/al;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/al;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function1;Lkotlin/c/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 90
    sget-object v0, Lkotlinx/coroutines/am;->a:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    const-string v3, "completion"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 2168
    :cond_1
    invoke-static {p2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    :try_start_0
    invoke-interface {p2}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v0

    const/4 v2, 0x0

    .line 2171
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 2042
    :try_start_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2175
    :try_start_2
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-eq p1, v0, :cond_2

    .line 2182
    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2042
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2175
    :goto_0
    :try_start_4
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 2177
    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v0, "$this$startCoroutine"

    .line 92
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    invoke-static {p1, p2}, Lkotlin/c/a/b;->a(Lkotlin/jvm/functions/Function1;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    invoke-static {p1}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p2}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void

    .line 1018
    :cond_5
    :try_start_5
    invoke-static {p1, p2}, Lkotlin/c/a/b;->a(Lkotlin/jvm/functions/Function1;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    invoke-static {p1}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/f;->a(Lkotlin/c/d;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 1059
    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/c/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 109
    sget-object v0, Lkotlinx/coroutines/am;->b:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const-string v1, "completion"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 5186
    :cond_1
    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5054
    :try_start_0
    invoke-interface {p3}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v0

    .line 5189
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 5055
    :try_start_1
    invoke-static {p1, v3}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5193
    :try_start_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6057
    sget-object p2, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-eq p1, p2, :cond_2

    .line 5200
    sget-object p2, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5055
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5193
    :goto_0
    :try_start_4
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 5195
    sget-object p2, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v0, "$this$startCoroutine"

    .line 111
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4129
    invoke-static {p1, p2, p3}, Lkotlin/c/a/b;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    invoke-static {p1}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    sget-object p3, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p2}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void

    .line 4030
    :cond_5
    :try_start_5
    invoke-static {p1, p2, p3}, Lkotlin/c/a/b;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    invoke-static {p1}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    sget-object p2, Lkotlin/o;->a:Lkotlin/o$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {p2}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lkotlinx/coroutines/internal/f;->a(Lkotlin/c/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 4065
    sget-object p2, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final isLazy()Z
    .locals 2

    .line 122
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/al;

    sget-object v1, Lkotlinx/coroutines/al;->LAZY:Lkotlinx/coroutines/al;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
