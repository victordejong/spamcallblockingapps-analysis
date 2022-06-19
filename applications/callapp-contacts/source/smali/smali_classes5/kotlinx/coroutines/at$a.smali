.class final Lkotlinx/coroutines/at$a;
.super Lkotlin/c/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/at;->a(Lkotlin/c/d;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0096@"
    }
    d2 = {
        "await",
        "",
        "T",
        "continuation",
        "Lkotlin/coroutines/Continuation;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/e;
    b = "Builders.common.kt"
    c = {
        0x65
    }
    d = "await$suspendImpl"
    e = "kotlinx.coroutines.DeferredCoroutine"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lkotlinx/coroutines/at;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/at;Lkotlin/c/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/at$a;->c:Lkotlinx/coroutines/at;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/c;-><init>(Lkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/at$a;->a:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/at$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/at$a;->b:I

    iget-object p1, p0, Lkotlinx/coroutines/at$a;->c:Lkotlinx/coroutines/at;

    invoke-static {p1, p0}, Lkotlinx/coroutines/at;->a(Lkotlinx/coroutines/at;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
