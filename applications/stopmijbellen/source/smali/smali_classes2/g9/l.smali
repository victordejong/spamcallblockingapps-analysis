.class public Lg9/l;
.super Lg9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg9/a<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public m:Lg9/e;


# direct methods
.method public constructor <init>(Lg9/s;Landroid/widget/ImageView;Lg9/v;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lg9/e;Z)V
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p11

    .line 1
    invoke-direct/range {v0 .. v10}, Lg9/a;-><init>(Lg9/s;Ljava/lang/Object;Lg9/v;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    .line 2
    iput-object v1, v0, Lg9/l;->m:Lg9/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lg9/a;->l:Z

    .line 2
    iget-object v0, p0, Lg9/l;->m:Lg9/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg9/l;->m:Lg9/e;

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lg9/s$d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg9/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg9/a;->a:Lg9/s;

    iget-object v2, v0, Lg9/s;->d:Landroid/content/Context;

    .line 3
    iget-boolean v6, v0, Lg9/s;->l:Z

    .line 4
    iget-boolean v5, p0, Lg9/a;->d:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lg9/t;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lg9/s$d;ZZ)V

    .line 5
    iget-object p1, p0, Lg9/l;->m:Lg9/e;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lg9/e;->b()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg9/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 5
    :cond_1
    iget v1, p0, Lg9/a;->g:I

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lg9/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lg9/l;->m:Lg9/e;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0, p1}, Lg9/e;->a(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method
