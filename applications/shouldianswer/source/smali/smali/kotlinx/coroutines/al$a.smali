.class final Lkotlinx/coroutines/al$a;
.super Lkotlin/c/b/a/d;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/al;->a(Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "Builders.common.kt"
    c = {
        0x63
    }
    d = "await$suspendImpl"
    e = "kotlinx.coroutines.DeferredCoroutine"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lkotlinx/coroutines/al;

.field d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/al;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/al$a;->c:Lkotlinx/coroutines/al;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/al$a;->a:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/al$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/al$a;->b:I

    iget-object p1, p0, Lkotlinx/coroutines/al$a;->c:Lkotlinx/coroutines/al;

    invoke-static {p1, p0}, Lkotlinx/coroutines/al;->a(Lkotlinx/coroutines/al;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
