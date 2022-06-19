.class public Landroidx/j/o;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/o$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroidx/j/m;

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/b/a",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/m;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroidx/j/b;

    invoke-direct {v0}, Landroidx/j/b;-><init>()V

    sput-object v0, Landroidx/j/o;->b:Landroidx/j/m;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/j/o;->c:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/j/o;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static a()Landroidx/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/a",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/m;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Landroidx/j/o;->c:Ljava/lang/ThreadLocal;

    .line 201
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/a;

    .line 204
    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 209
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 210
    sget-object v2, Landroidx/j/o;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 408
    sget-object v0, Landroidx/j/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Landroidx/j/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    if-nez p1, :cond_0

    .line 415
    sget-object p1, Landroidx/j/o;->b:Landroidx/j/m;

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroidx/j/m;->p()Landroidx/j/m;

    move-result-object v0

    .line 418
    invoke-static {p0, v0}, Landroidx/j/o;->c(Landroid/view/ViewGroup;Landroidx/j/m;)V

    .line 419
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroidx/j/l;->a(Landroid/view/ViewGroup;Landroidx/j/l;)V

    .line 420
    invoke-static {p0, v0}, Landroidx/j/o;->b(Landroid/view/ViewGroup;Landroidx/j/m;)V

    .line 422
    :cond_1
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 216
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 217
    new-instance v0, Landroidx/j/o$a;

    invoke-direct {v0, p1, p0}, Landroidx/j/o$a;-><init>(Landroidx/j/m;Landroid/view/ViewGroup;)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 221
    :cond_0
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Landroidx/j/o;->a()Landroidx/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 311
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 313
    invoke-virtual {v0, p0}, Landroidx/j/m;->d(Landroid/view/View;)V

    goto :goto_0

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/j/m;->a(Landroid/view/ViewGroup;Z)V

    .line 322
    :cond_1
    invoke-static {p0}, Landroidx/j/l;->a(Landroid/view/ViewGroup;)Landroidx/j/l;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Landroidx/j/l;->a()V

    .line 326
    :cond_2
    return-void
.end method
