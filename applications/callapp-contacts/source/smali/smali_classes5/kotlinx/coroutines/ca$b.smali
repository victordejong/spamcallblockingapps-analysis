.class final Lkotlinx/coroutines/ca$b;
.super Lkotlinx/coroutines/bz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$ChildCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "parent",
        "Lkotlinx/coroutines/JobSupport;",
        "state",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "child",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "proposedUpdate",
        "",
        "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
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
.field private final a:Lkotlinx/coroutines/ca;

.field private final b:Lkotlinx/coroutines/ca$c;

.field private final f:Lkotlinx/coroutines/u;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ca;Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)V
    .locals 0

    .line 1153
    invoke-direct {p0}, Lkotlinx/coroutines/bz;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ca$b;->a:Lkotlinx/coroutines/ca;

    iput-object p2, p0, Lkotlinx/coroutines/ca$b;->b:Lkotlinx/coroutines/ca$c;

    iput-object p3, p0, Lkotlinx/coroutines/ca$b;->f:Lkotlinx/coroutines/u;

    iput-object p4, p0, Lkotlinx/coroutines/ca$b;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1155
    iget-object p1, p0, Lkotlinx/coroutines/ca$b;->a:Lkotlinx/coroutines/ca;

    iget-object v0, p0, Lkotlinx/coroutines/ca$b;->b:Lkotlinx/coroutines/ca$c;

    iget-object v1, p0, Lkotlinx/coroutines/ca$b;->f:Lkotlinx/coroutines/u;

    iget-object v2, p0, Lkotlinx/coroutines/ca$b;->g:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/ca;Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1148
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ca$b;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
