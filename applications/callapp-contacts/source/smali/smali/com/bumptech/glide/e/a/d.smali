.class public abstract Lcom/bumptech/glide/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/a/j<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/e/a/d$a;

.field private d:Landroid/view/View$OnAttachStateChangeListener;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget v0, Lcom/bumptech/glide/i$a;->glide_custom_view_target_tag:I

    sput v0, Lcom/bumptech/glide/e/a/d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/e/a/d;->a:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/bumptech/glide/e/a/d$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/a/d$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/e/a/d;->c:Lcom/bumptech/glide/e/a/d$a;

    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/e/a/d;->a:Landroid/view/View;

    sget v1, Lcom/bumptech/glide/e/a/d;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/bumptech/glide/e/a/d;->a:Landroid/view/View;

    sget v1, Lcom/bumptech/glide/e/a/d;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/bumptech/glide/e/a/i;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/bumptech/glide/e/a/d;->c:Lcom/bumptech/glide/e/a/d$a;

    .line 1348
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a/d$a;->d()I

    move-result v1

    .line 1349
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a/d$a;->c()I

    move-result v2

    .line 1350
    invoke-static {v1, v2}, Lcom/bumptech/glide/e/a/d$a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1351
    invoke-interface {p1, v1, v2}, Lcom/bumptech/glide/e/a/i;->a(II)V

    return-void

    .line 1357
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/e/a/d$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1358
    iget-object v1, v0, Lcom/bumptech/glide/e/a/d$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_1
    iget-object p1, v0, Lcom/bumptech/glide/e/a/d$a;->e:Lcom/bumptech/glide/e/a/d$a$a;

    if-nez p1, :cond_2

    .line 1361
    iget-object p1, v0, Lcom/bumptech/glide/e/a/d$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1362
    new-instance v1, Lcom/bumptech/glide/e/a/d$a$a;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/e/a/d$a$a;-><init>(Lcom/bumptech/glide/e/a/d$a;)V

    iput-object v1, v0, Lcom/bumptech/glide/e/a/d$a;->e:Lcom/bumptech/glide/e/a/d$a$a;

    .line 1363
    iget-object v0, v0, Lcom/bumptech/glide/e/a/d$a;->e:Lcom/bumptech/glide/e/a/d$a$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/bumptech/glide/e/a/d;->c:Lcom/bumptech/glide/e/a/d$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/e/a/d$a;->b()V

    .line 210
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/d;->d()V

    .line 211
    iget-boolean p1, p0, Lcom/bumptech/glide/e/a/d;->e:Z

    if-nez p1, :cond_1

    .line 2285
    iget-object p1, p0, Lcom/bumptech/glide/e/a/d;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/d;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/a/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x0

    .line 2290
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a/d;->f:Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/bumptech/glide/e/a/i;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/e/a/d;->c:Lcom/bumptech/glide/e/a/d$a;

    .line 1374
    iget-object v0, v0, Lcom/bumptech/glide/e/a/d$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2276
    iget-object p1, p0, Lcom/bumptech/glide/e/a/d;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/d;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/a/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x1

    .line 2281
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a/d;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract d()V
.end method

.method public final getRequest()Lcom/bumptech/glide/e/d;
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/bumptech/glide/e/a/d;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    instance-of v1, v0, Lcom/bumptech/glide/e/d;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Lcom/bumptech/glide/e/d;

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setRequest(Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/d;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/e/a/d;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
