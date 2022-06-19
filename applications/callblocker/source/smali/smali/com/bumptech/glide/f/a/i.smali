.class public abstract Lcom/bumptech/glide/f/a/i;
.super Lcom/bumptech/glide/f/a/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/f/a/a",
        "<TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static b:Z

.field private static c:Ljava/lang/Integer;


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/f/a/i$a;

.field private e:Landroid/view/View$OnAttachStateChangeListener;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/bumptech/glide/f/a/a;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/bumptech/glide/f/a/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f/a/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/f/a/i;->d:Lcom/bumptech/glide/f/a/i$a;

    .line 67
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/f/a/i;->g:Z

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/f/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f/a/i;->g:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/bumptech/glide/f/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/f/a/i;->b:Z

    .line 286
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/f/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/f/a/i;->g:Z

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/f/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/f/a/i;->g:Z

    goto :goto_0
.end method

.method private g()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/bumptech/glide/f/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/f/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/bumptech/glide/f/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->d:Lcom/bumptech/glide/f/a/i$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/a/i$a;->b()V

    .line 236
    iget-boolean v0, p0, Lcom/bumptech/glide/f/a/i;->f:Z

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/bumptech/glide/f/a/i;->f()V

    .line 239
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/f/a/g;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->d:Lcom/bumptech/glide/f/a/i$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a/i$a;->a(Lcom/bumptech/glide/f/a/g;)V

    .line 222
    return-void
.end method

.method public a(Lcom/bumptech/glide/f/b;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a/i;->a(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public b()Lcom/bumptech/glide/f/b;
    .locals 2

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/bumptech/glide/f/a/i;->g()Ljava/lang/Object;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    instance-of v1, v0, Lcom/bumptech/glide/f/b;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lcom/bumptech/glide/f/b;

    .line 275
    :goto_0
    return-object v0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/bumptech/glide/f/a/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/f/a/i;->a()V

    .line 181
    return-void
.end method

.method public b(Lcom/bumptech/glide/f/a/g;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/f/a/i;->d:Lcom/bumptech/glide/f/a/i$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a/i$a;->b(Lcom/bumptech/glide/f/a/g;)V

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/f/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
