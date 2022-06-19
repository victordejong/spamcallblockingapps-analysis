.class public final Lkotlinx/coroutines/bq$d;
.super Lkotlinx/coroutines/internal/i$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/bq;->a(Ljava/lang/Object;Lkotlinx/coroutines/bv;Lkotlinx/coroutines/bp;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/internal/i;

.field final synthetic b:Lkotlinx/coroutines/bq;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/bq;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/bq$d;->a:Lkotlinx/coroutines/internal/i;

    iput-object p3, p0, Lkotlinx/coroutines/bq$d;->b:Lkotlinx/coroutines/bq;

    iput-object p4, p0, Lkotlinx/coroutines/bq$d;->c:Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/i$a;-><init>(Lkotlinx/coroutines/internal/i;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Lkotlinx/coroutines/internal/i;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bq$d;->a(Lkotlinx/coroutines/internal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lkotlinx/coroutines/internal/i;)Ljava/lang/Object;
    .locals 1

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object p1, p0, Lkotlinx/coroutines/bq$d;->b:Lkotlinx/coroutines/bq;

    invoke-virtual {p1}, Lkotlinx/coroutines/bq;->p()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/bq$d;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/h;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method
