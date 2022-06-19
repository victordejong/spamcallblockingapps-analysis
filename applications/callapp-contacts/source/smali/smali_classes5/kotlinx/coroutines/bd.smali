.class public final Lkotlinx/coroutines/bd;
.super Lkotlinx/coroutines/bz;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/DisposeOnCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "handle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
        "invoke",
        "",
        "cause",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/bb;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bb;)V
    .locals 0

    .line 1417
    invoke-direct {p0}, Lkotlinx/coroutines/bz;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1418
    iget-object p1, p0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bb;

    invoke-interface {p1}, Lkotlinx/coroutines/bb;->a()V

    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1415
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bd;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
