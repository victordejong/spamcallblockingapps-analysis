.class public abstract Lcom/bumptech/glide/e/a/k;
.super Lcom/bumptech/glide/e/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static b:Z

.field private static c:I


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/e/a/k$a;

.field private e:Landroid/view/View$OnAttachStateChangeListener;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lcom/bumptech/glide/i$a;->glide_custom_view_target_tag:I

    sput v0, Lcom/bumptech/glide/e/a/k;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/e/a/a;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/e/a/k;->a:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/bumptech/glide/e/a/k$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/a/k$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/e/a/k;->d:Lcom/bumptech/glide/e/a/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/k;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 1171
    iget-object p1, p0, Lcom/bumptech/glide/e/a/k;->d:Lcom/bumptech/glide/e/a/k$a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bumptech/glide/e/a/k$a;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e/a/i;)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k;->d:Lcom/bumptech/glide/e/a/k$a;

    .line 1373
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a/k$a;->d()I

    move-result v1

    .line 1374
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a/k$a;->c()I

    move-result v2

    .line 1375
    invoke-static {v1, v2}, Lcom/bumptech/glide/e/a/k$a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1376
    invoke-interface {p1, v1, v2}, Lcom/bumptech/glide/e/a/i;->a(II)V

    return-void

    .line 1382
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1383
    iget-object v1, v0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_1
    iget-object p1, v0, Lcom/bumptech/glide/e/a/k$a;->e:Lcom/bumptech/glide/e/a/k$a$a;

    if-nez p1, :cond_2

    .line 1386
    iget-object p1, v0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1387
    new-instance v1, Lcom/bumptech/glide/e/a/k$a$a;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/e/a/k$a$a;-><init>(Lcom/bumptech/glide/e/a/k$a;)V

    iput-object v1, v0, Lcom/bumptech/glide/e/a/k$a;->e:Lcom/bumptech/glide/e/a/k$a$a;

    .line 1388
    iget-object v0, v0, Lcom/bumptech/glide/e/a/k$a;->e:Lcom/bumptech/glide/e/a/k$a$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object p1, p0, Lcom/bumptech/glide/e/a/k;->d:Lcom/bumptech/glide/e/a/k$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/e/a/k$a;->b()V

    .line 233
    iget-boolean p1, p0, Lcom/bumptech/glide/e/a/k;->f:Z

    if-nez p1, :cond_1

    .line 2192
    iget-object p1, p0, Lcom/bumptech/glide/e/a/k;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/k;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x0

    .line 2197
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a/k;->g:Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/bumptech/glide/e/a/i;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k;->d:Lcom/bumptech/glide/e/a/k$a;

    .line 1399
    iget-object v0, v0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    iget-object p1, p0, Lcom/bumptech/glide/e/a/k;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/k;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x1

    .line 1188
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a/k;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getRequest()Lcom/bumptech/glide/e/d;
    .locals 2

    .line 2287
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k;->a:Landroid/view/View;

    sget v1, Lcom/bumptech/glide/e/a/k;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    instance-of v1, v0, Lcom/bumptech/glide/e/d;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Lcom/bumptech/glide/e/d;

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setRequest(Lcom/bumptech/glide/e/d;)V
    .locals 2

    const/4 v0, 0x1

    .line 2281
    sput-boolean v0, Lcom/bumptech/glide/e/a/k;->b:Z

    .line 2282
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k;->a:Landroid/view/View;

    sget v1, Lcom/bumptech/glide/e/a/k;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/e/a/k;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
