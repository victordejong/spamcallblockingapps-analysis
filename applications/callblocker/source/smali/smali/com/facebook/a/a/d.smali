.class final Lcom/facebook/a/a/d;
.super Ljava/lang/Object;
.source "MetadataViewObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/d;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/a/d;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/a/d;->c:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/a/d;->e:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/a/a/d;->d:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/a/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/a/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/facebook/a/a/d;->b()Landroid/view/View;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 63
    sget-object v1, Lcom/facebook/a/a/d;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    new-instance v0, Lcom/facebook/a/a/d;

    invoke-direct {v0, p0}, Lcom/facebook/a/a/d;-><init>(Landroid/app/Activity;)V

    .line 65
    sget-object v1, Lcom/facebook/a/a/d;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    invoke-direct {v0}, Lcom/facebook/a/a/d;->a()V

    .line 70
    return-void

    .line 67
    :cond_0
    sget-object v1, Lcom/facebook/a/a/d;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a/d;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/facebook/a/a/d$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/a/a/d$1;-><init>(Lcom/facebook/a/a/d;Landroid/view/View;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/facebook/a/a/d;->a(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/a/d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/a/a/d;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/a/d;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/facebook/a/a/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 189
    if-nez v0, :cond_0

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 193
    if-nez v0, :cond_1

    move-object v0, v1

    .line 194
    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 135
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/a/a/d;->c:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/a/d;->c:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-static {}, Lcom/facebook/a/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v2

    move-object v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a/c;

    .line 146
    invoke-virtual {v0}, Lcom/facebook/a/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/facebook/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    if-nez v3, :cond_2

    .line 149
    invoke-static {p1}, Lcom/facebook/a/a/b;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 151
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/a/a/c;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/facebook/a/a/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-virtual {v0}, Lcom/facebook/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    :cond_3
    if-nez v1, :cond_7

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-static {p1}, Lcom/facebook/a/b/a/f;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 161
    if-nez v1, :cond_4

    move-object v1, v2

    .line 162
    goto :goto_1

    .line 164
    :cond_4
    invoke-static {v1}, Lcom/facebook/a/b/a/f;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 165
    if-eq p1, v1, :cond_5

    .line 166
    invoke-static {v1}, Lcom/facebook/a/a/b;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 170
    :cond_7
    invoke-virtual {v0}, Lcom/facebook/a/a/c;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/a/a/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    invoke-virtual {v0}, Lcom/facebook/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object v0, v1

    move-object v2, v3

    move-object v1, v0

    move-object v3, v2

    .line 174
    goto :goto_1

    .line 175
    :cond_9
    invoke-static {v5}, Lcom/facebook/a/m;->a(Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/a/a/d;->a(Landroid/view/View;)V

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    .line 116
    invoke-direct {p0, p2}, Lcom/facebook/a/a/d;->a(Landroid/view/View;)V

    .line 118
    :cond_1
    return-void
.end method
