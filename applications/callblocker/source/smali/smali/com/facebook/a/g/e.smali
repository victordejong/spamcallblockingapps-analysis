.class final Lcom/facebook/a/g/e;
.super Ljava/lang/Object;
.source "ViewObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/a/g/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/a/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g/e;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/g/e;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/g/e;->b:Ljava/lang/ref/WeakReference;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/a/g/e;->c:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/a/g/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/g/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/a/g/e;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/a/g/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/facebook/a/g/e;->d()Landroid/view/View;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    invoke-direct {p0}, Lcom/facebook/a/g/e;->c()V

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 49
    sget-object v1, Lcom/facebook/a/g/e;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/facebook/a/g/e;

    invoke-direct {v1, p0}, Lcom/facebook/a/g/e;-><init>(Landroid/app/Activity;)V

    .line 51
    sget-object v2, Lcom/facebook/a/g/e;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-direct {v1}, Lcom/facebook/a/g/e;->a()V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/a/g/e;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/a/g/e;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/a/g/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/facebook/a/g/e;->d()Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 99
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 58
    sget-object v0, Lcom/facebook/a/g/e;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/facebook/a/g/e;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/g/e;

    .line 60
    sget-object v2, Lcom/facebook/a/g/e;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-direct {v0}, Lcom/facebook/a/g/e;->b()V

    .line 63
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/a/g/e$1;

    invoke-direct {v0, p0}, Lcom/facebook/a/g/e$1;-><init>(Lcom/facebook/a/g/e;)V

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/facebook/a/g/e;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/facebook/a/g/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 149
    if-nez v0, :cond_0

    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 153
    if-nez v0, :cond_1

    move-object v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/facebook/a/g/e;->c()V

    .line 108
    return-void
.end method
