.class final Lkotlinx/coroutines/internal/w$b;
.super Lkotlin/e/b/i;
.source "ThreadContext.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ce<",
        "*>;",
        "Lkotlin/c/f$b;",
        "Lkotlinx/coroutines/ce<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/w$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/w$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/w$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/w$b;->a:Lkotlinx/coroutines/internal/w$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/ce;

    check-cast p2, Lkotlin/c/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/w$b;->a(Lkotlinx/coroutines/ce;Lkotlin/c/f$b;)Lkotlinx/coroutines/ce;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlinx/coroutines/ce;Lkotlin/c/f$b;)Lkotlinx/coroutines/ce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ce<",
            "*>;",
            "Lkotlin/c/f$b;",
            ")",
            "Lkotlinx/coroutines/ce<",
            "*>;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    .line 38
    :cond_0
    instance-of p1, p2, Lkotlinx/coroutines/ce;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lkotlinx/coroutines/ce;

    return-object p2
.end method
