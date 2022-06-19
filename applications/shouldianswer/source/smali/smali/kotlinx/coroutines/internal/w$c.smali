.class final Lkotlinx/coroutines/internal/w$c;
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
        "Lkotlinx/coroutines/internal/z;",
        "Lkotlin/c/f$b;",
        "Lkotlinx/coroutines/internal/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/w$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/w$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/w$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/w$c;->a:Lkotlinx/coroutines/internal/w$c;

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

    check-cast p1, Lkotlinx/coroutines/internal/z;

    check-cast p2, Lkotlin/c/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/w$c;->a(Lkotlinx/coroutines/internal/z;Lkotlin/c/f$b;)Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlinx/coroutines/internal/z;Lkotlin/c/f$b;)Lkotlinx/coroutines/internal/z;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    instance-of v0, p2, Lkotlinx/coroutines/ce;

    if-eqz v0, :cond_0

    .line 55
    check-cast p2, Lkotlinx/coroutines/ce;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/z;->c()Lkotlin/c/f;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/z;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/ce;->a(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
