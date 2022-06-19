.class public final Lkotlinx/coroutines/internal/z;
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
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\",\u0010\u0006\u001a \u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\" \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "NO_THREAD_ELEMENTS",
        "Lkotlinx/coroutines/internal/Symbol;",
        "countAll",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "findOne",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "updateState",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "restoreThreadContext",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "oldState",
        "threadContextElements",
        "updateThreadContext",
        "countOrElement",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/v;

.field private static final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Lkotlin/c/f$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/cm<",
            "*>;",
            "Lkotlin/c/f$b;",
            "Lkotlinx/coroutines/cm<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/internal/ac;",
            "Lkotlin/c/f$b;",
            "Lkotlinx/coroutines/internal/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    .line 35
    sget-object v0, Lkotlinx/coroutines/internal/z$a;->a:Lkotlinx/coroutines/internal/z$a;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/z;->b:Lkotlin/jvm/functions/Function2;

    .line 45
    sget-object v0, Lkotlinx/coroutines/internal/z$b;->a:Lkotlinx/coroutines/internal/z$b;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/z;->c:Lkotlin/jvm/functions/Function2;

    .line 52
    sget-object v0, Lkotlinx/coroutines/internal/z$c;->a:Lkotlinx/coroutines/internal/z$c;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/z;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final a(Lkotlin/c/f;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/z;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 65
    invoke-static {p0}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    return-object p0

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lkotlinx/coroutines/internal/ac;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/ac;-><init>(Lkotlin/c/f;I)V

    sget-object p1, Lkotlinx/coroutines/internal/z;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 77
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/cm;

    .line 78
    invoke-interface {p1, p0}, Lkotlinx/coroutines/cm;->a(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/c/f;Ljava/lang/Object;)V
    .locals 2

    .line 85
    sget-object v0, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    if-ne p1, v0, :cond_0

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/ac;

    if-eqz v0, :cond_2

    .line 88
    check-cast p1, Lkotlinx/coroutines/internal/ac;

    .line 1026
    iget-object p0, p1, Lkotlinx/coroutines/internal/ac;->b:[Lkotlinx/coroutines/cm;

    array-length p0, p0

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1

    .line 1027
    iget-object v0, p1, Lkotlinx/coroutines/internal/ac;->b:[Lkotlinx/coroutines/cm;

    aget-object v0, v0, p0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v1, p1, Lkotlinx/coroutines/internal/ac;->a:[Ljava/lang/Object;

    aget-object v1, v1, p0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/cm;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 93
    sget-object v1, Lkotlinx/coroutines/internal/z;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/cm;

    .line 94
    invoke-interface {p0, p1}, Lkotlinx/coroutines/cm;->a(Ljava/lang/Object;)V

    return-void
.end method
