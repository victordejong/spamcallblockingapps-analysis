.class public final Lkotlinx/coroutines/d;
.super Lkotlinx/coroutines/az;
.source "EventLoop.kt"


# instance fields
.field private final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lkotlinx/coroutines/az;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/d;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Thread;
    .locals 1

    .line 313
    iget-object v0, p0, Lkotlinx/coroutines/d;->b:Ljava/lang/Thread;

    return-object v0
.end method
