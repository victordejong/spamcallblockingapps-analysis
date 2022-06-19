.class final Lkotlinx/coroutines/android/b$c;
.super Lkotlin/e/b/i;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/b;->a(JLkotlinx/coroutines/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Ljava/lang/Throwable;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/android/b;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/android/b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/b$c;->a:Lkotlinx/coroutines/android/b;

    iput-object p2, p0, Lkotlinx/coroutines/android/b$c;->b:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/android/b$c;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lkotlinx/coroutines/android/b$c;->a:Lkotlinx/coroutines/android/b;

    invoke-static {p1}, Lkotlinx/coroutines/android/b;->a(Lkotlinx/coroutines/android/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/android/b$c;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
