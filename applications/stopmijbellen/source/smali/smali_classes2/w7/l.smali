.class public Lw7/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm7/d<",
        "Ln7/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw7/p$a;

.field public final synthetic b:Lw7/p;


# direct methods
.method public constructor <init>(Lw7/p;Lw7/p$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/l;->b:Lw7/p;

    iput-object p2, p0, Lw7/l;->a:Lw7/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ln7/h;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lw7/l;->a:Lw7/p$a;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lw7/l;->a:Lw7/p$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 6
    sget-object p1, Lw7/e;->i:Landroid/os/Handler;

    new-instance v0, Lw7/k;

    invoke-direct {v0, p0, p2}, Lw7/k;-><init>(Lw7/l;Ln7/h;)V

    invoke-static {p1, v0}, Lk7/h;->h(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lw7/l;->b:Lw7/p;

    iget-object v0, p0, Lw7/l;->a:Lw7/p$a;

    invoke-virtual {p1, p2, v0}, Lw7/p;->i(Ln7/h;Lw7/p$a;)V

    :goto_0
    return-void
.end method
