.class public final Lkotlinx/coroutines/android/b$a;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/b;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/android/b;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/android/b;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lkotlinx/coroutines/android/b$a;->a:Lkotlinx/coroutines/android/b;

    iput-object p2, p0, Lkotlinx/coroutines/android/b$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 130
    iget-object v0, p0, Lkotlinx/coroutines/android/b$a;->a:Lkotlinx/coroutines/android/b;

    invoke-static {v0}, Lkotlinx/coroutines/android/b;->a(Lkotlinx/coroutines/android/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/android/b$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
