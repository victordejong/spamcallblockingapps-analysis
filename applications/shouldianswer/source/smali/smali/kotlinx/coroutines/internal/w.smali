.class public final Lkotlinx/coroutines/internal/w;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;

.field private static final b:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "Ljava/lang/Object;",
            "Lkotlin/c/f$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "Lkotlinx/coroutines/ce<",
            "*>;",
            "Lkotlin/c/f$b;",
            "Lkotlinx/coroutines/ce<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "Lkotlinx/coroutines/internal/z;",
            "Lkotlin/c/f$b;",
            "Lkotlinx/coroutines/internal/z;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "Lkotlinx/coroutines/internal/z;",
            "Lkotlin/c/f$b;",
            "Lkotlinx/coroutines/internal/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    .line 26
    sget-object v0, Lkotlinx/coroutines/internal/w$a;->a:Lkotlinx/coroutines/internal/w$a;

    check-cast v0, Lkotlin/e/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/w;->b:Lkotlin/e/a/m;

    .line 36
    sget-object v0, Lkotlinx/coroutines/internal/w$b;->a:Lkotlinx/coroutines/internal/w$b;

    check-cast v0, Lkotlin/e/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/w;->c:Lkotlin/e/a/m;

    .line 43
    sget-object v0, Lkotlinx/coroutines/internal/w$d;->a:Lkotlinx/coroutines/internal/w$d;

    check-cast v0, Lkotlin/e/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/w;->d:Lkotlin/e/a/m;

    .line 52
    sget-object v0, Lkotlinx/coroutines/internal/w$c;->a:Lkotlinx/coroutines/internal/w$c;

    check-cast v0, Lkotlin/e/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/w;->e:Lkotlin/e/a/m;

    return-void
.end method

.method public static final a(Lkotlin/c/f;)Ljava/lang/Object;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/w;->b:Lkotlin/e/a/m;

    invoke-interface {p0, v0, v1}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object p0
.end method

.method public static final a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    goto :goto_1

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lkotlinx/coroutines/internal/z;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/z;-><init>(Lkotlin/c/f;I)V

    sget-object p1, Lkotlinx/coroutines/internal/w;->d:Lkotlin/e/a/m;

    invoke-interface {p0, v0, p1}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 77
    check-cast p1, Lkotlinx/coroutines/ce;

    .line 78
    invoke-interface {p1, p0}, Lkotlinx/coroutines/ce;->b(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 77
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lkotlin/c/f;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lkotlinx/coroutines/internal/w;->a:Lkotlinx/coroutines/internal/u;

    if-ne p1, v0, :cond_0

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/z;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/z;->b()V

    .line 89
    sget-object v0, Lkotlinx/coroutines/internal/w;->e:Lkotlin/e/a/m;

    invoke-interface {p0, p1, v0}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lkotlinx/coroutines/internal/w;->c:Lkotlin/e/a/m;

    invoke-interface {p0, v0, v1}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/ce;

    .line 95
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/ce;->a(Lkotlin/c/f;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
