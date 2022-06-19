.class Landroidx/j/o$a;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/j/m;

.field b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/j/m;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Landroidx/j/o$a;->a:Landroidx/j/m;

    .line 240
    iput-object p2, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    .line 241
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    iget-object v0, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 246
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 268
    invoke-direct {p0}, Landroidx/j/o$a;->a()V

    .line 271
    sget-object v0, Landroidx/j/o;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return v4

    .line 277
    :cond_0
    invoke-static {}, Landroidx/j/o;->a()Landroidx/b/a;

    move-result-object v2

    .line 278
    iget-object v0, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    const/4 v1, 0x0

    .line 280
    if-nez v0, :cond_2

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v3, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    :goto_1
    iget-object v3, p0, Landroidx/j/o$a;->a:Landroidx/j/m;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Landroidx/j/o$a;->a:Landroidx/j/m;

    new-instance v3, Landroidx/j/o$a$1;

    invoke-direct {v3, p0, v2}, Landroidx/j/o$a$1;-><init>(Landroidx/j/o$a;Landroidx/b/a;)V

    invoke-virtual {v0, v3}, Landroidx/j/m;->a(Landroidx/j/m$c;)Landroidx/j/m;

    .line 295
    iget-object v0, p0, Landroidx/j/o$a;->a:Landroidx/j/m;

    iget-object v2, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/j/m;->a(Landroid/view/ViewGroup;Z)V

    .line 296
    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 298
    iget-object v2, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroidx/j/m;->e(Landroid/view/View;)V

    goto :goto_2

    .line 283
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 301
    :cond_3
    iget-object v0, p0, Landroidx/j/o$a;->a:Landroidx/j/m;

    iget-object v1, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/j/m;->a(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Landroidx/j/o$a;->a()V

    .line 256
    sget-object v0, Landroidx/j/o;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-static {}, Landroidx/j/o;->a()Landroidx/b/a;

    move-result-object v0

    iget-object v1, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 258
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 260
    iget-object v2, p0, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroidx/j/m;->e(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Landroidx/j/o$a;->a:Landroidx/j/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/j/m;->a(Z)V

    .line 264
    return-void
.end method
