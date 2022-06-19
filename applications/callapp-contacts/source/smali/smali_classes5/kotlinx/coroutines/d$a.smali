.class final Lkotlinx/coroutines/d$a;
.super Lkotlin/c/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/d;->a(Ljava/util/Collection;Lkotlin/c/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00070\u0006H\u0086@"
    }
    d2 = {
        "awaitAll",
        "",
        "T",
        "",
        "Lkotlinx/coroutines/Deferred;",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/e;
    b = "Await.kt"
    c = {
        0x2a
    }
    d = "awaitAll"
    e = "kotlinx.coroutines.AwaitKt"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>(Lkotlin/c/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/c/b/a/c;-><init>(Lkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/d$a;->a:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/d$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/d$a;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lkotlinx/coroutines/d;->a(Ljava/util/Collection;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
