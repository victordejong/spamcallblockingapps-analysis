.class public final Lkotlinx/coroutines/android/b;
.super Lkotlinx/coroutines/android/c;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/am;


# instance fields
.field private volatile _immediate:Lkotlinx/coroutines/android/b;

.field private final b:Lkotlinx/coroutines/android/b;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/android/b;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lkotlinx/coroutines/android/c;-><init>(Lkotlin/e/b/e;)V

    iput-object p1, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    iput-object p2, p0, Lkotlinx/coroutines/android/b;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lkotlinx/coroutines/android/b;->e:Z

    .line 105
    iget-boolean p1, p0, Lkotlinx/coroutines/android/b;->e:Z

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lkotlinx/coroutines/android/b;->_immediate:Lkotlinx/coroutines/android/b;

    .line 107
    iget-object p1, p0, Lkotlinx/coroutines/android/b;->_immediate:Lkotlinx/coroutines/android/b;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lkotlinx/coroutines/android/b;

    iget-object p2, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    iget-object p3, p0, Lkotlinx/coroutines/android/b;->d:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lkotlinx/coroutines/android/b;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/android/b;->_immediate:Lkotlinx/coroutines/android/b;

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/android/b;->b:Lkotlinx/coroutines/android/b;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/android/b;)Landroid/os/Handler;
    .locals 0

    .line 88
    iget-object p0, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;
    .locals 3

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Lkotlin/f/d;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    new-instance p1, Lkotlinx/coroutines/android/b$a;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/android/b$a;-><init>(Lkotlinx/coroutines/android/b;Ljava/lang/Runnable;)V

    check-cast p1, Lkotlinx/coroutines/au;

    return-object p1
.end method

.method public a(JLkotlinx/coroutines/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/k<",
            "-",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lkotlinx/coroutines/android/b$b;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/android/b$b;-><init>(Lkotlinx/coroutines/android/b;Lkotlinx/coroutines/k;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 122
    iget-object v1, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lkotlin/f/d;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    new-instance p1, Lkotlinx/coroutines/android/b$c;

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/android/b$c;-><init>(Lkotlinx/coroutines/android/b;Ljava/lang/Runnable;)V

    check-cast p1, Lkotlin/e/a/b;

    invoke-interface {p3, p1}, Lkotlinx/coroutines/k;->a(Lkotlin/e/a/b;)V

    return-void
.end method

.method public a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lkotlin/c/f;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-boolean p1, p0, Lkotlinx/coroutines/android/b;->e:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 142
    instance-of v0, p1, Lkotlinx/coroutines/android/b;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/android/b;

    iget-object p1, p1, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    iget-object v0, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 143
    iget-object v0, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lkotlinx/coroutines/android/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    iget-boolean v1, p0, Lkotlinx/coroutines/android/b;->e:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/android/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [immediate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/android/b;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler.toString()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method
