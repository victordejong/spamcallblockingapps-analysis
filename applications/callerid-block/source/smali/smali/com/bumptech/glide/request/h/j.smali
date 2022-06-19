.class public abstract Lcom/bumptech/glide/request/h/j;
.super Lcom/bumptech/glide/request/h/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/h/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/h/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static g:I


# instance fields
.field protected final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/request/h/j$a;

.field private d:Landroid/view/View$OnAttachStateChangeListener;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/bumptech/glide/f;->glide_custom_view_target_tag:I

    sput v0, Lcom/bumptech/glide/request/h/j;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/h/a;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/o/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/h/j;->b:Landroid/view/View;

    new-instance v0, Lcom/bumptech/glide/request/h/j$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/h/j$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/h/j;->c:Lcom/bumptech/glide/request/h/j$a;

    return-void
.end method

.method private j()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/h/j;->b:Landroid/view/View;

    sget v1, Lcom/bumptech/glide/request/h/j;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/h/j;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bumptech/glide/request/h/j;->f:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/request/h/j;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/h/j;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/h/j;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bumptech/glide/request/h/j;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/request/h/j;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/h/j;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private m(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/h/j;->b:Landroid/view/View;

    sget v1, Lcom/bumptech/glide/request/h/j;->g:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/h/h;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/h/j;->c:Lcom/bumptech/glide/request/h/j$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/h/j$a;->k(Lcom/bumptech/glide/request/h/h;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/h/a;->e(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/h/j;->k()V

    return-void
.end method

.method public f()Lcom/bumptech/glide/request/c;
    .locals 2

    invoke-direct {p0}, Lcom/bumptech/glide/request/h/j;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bumptech/glide/request/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bumptech/glide/request/c;

    goto :goto_0

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

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/h/a;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/bumptech/glide/request/h/j;->c:Lcom/bumptech/glide/request/h/j$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/h/j$a;->b()V

    iget-boolean p1, p0, Lcom/bumptech/glide/request/h/j;->e:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/request/h/j;->l()V

    :cond_0
    return-void
.end method

.method public h(Lcom/bumptech/glide/request/h/h;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/h/j;->c:Lcom/bumptech/glide/request/h/j$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/h/j$a;->d(Lcom/bumptech/glide/request/h/h;)V

    return-void
.end method

.method public i(Lcom/bumptech/glide/request/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/h/j;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/request/h/j;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
