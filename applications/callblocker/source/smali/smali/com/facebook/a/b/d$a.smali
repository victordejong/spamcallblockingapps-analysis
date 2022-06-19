.class public Lcom/facebook/a/b/d$a;
.super Ljava/lang/Object;
.source "RCTCodelessLoggingEventListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/a/b/a/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View$OnTouchListener;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/a/b/d$a;->e:Z

    .line 52
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {p3}, Lcom/facebook/a/b/a/f;->h(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/b/d$a;->d:Landroid/view/View$OnTouchListener;

    .line 58
    iput-object p1, p0, Lcom/facebook/a/b/d$a;->a:Lcom/facebook/a/b/a/a;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/d$a;->b:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/d$a;->c:Ljava/lang/ref/WeakReference;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/b/d$a;->e:Z

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/a/b/d$a;->a:Lcom/facebook/a/b/a/a;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/b/d$a;->a:Lcom/facebook/a/b/a/a;

    invoke-virtual {v0}, Lcom/facebook/a/b/a/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/facebook/a/b/d$a;->a:Lcom/facebook/a/b/a/a;

    iget-object v0, p0, Lcom/facebook/a/b/d$a;->c:Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/a/b/d$a;->b:Ljava/lang/ref/WeakReference;

    .line 84
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 81
    invoke-static {v3, v0, v1}, Lcom/facebook/a/b/c;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "_valueToSum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string/jumbo v1, "_valueToSum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string/jumbo v3, "_valueToSum"

    .line 91
    invoke-static {v1}, Lcom/facebook/a/d/b;->a(Ljava/lang/String;)D

    move-result-wide v4

    .line 89
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 94
    :cond_1
    const-string/jumbo v1, "_is_fb_codeless"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/facebook/a/b/d$a$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/facebook/a/b/d$a$1;-><init>(Lcom/facebook/a/b/d$a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/facebook/a/b/d$a;->e:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/facebook/a/b/d$a;->b()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/facebook/a/b/d$a;->d:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/a/b/d$a;->d:Landroid/view/View$OnTouchListener;

    .line 72
    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :goto_0
    return v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
