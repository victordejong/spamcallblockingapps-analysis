.class public Landroidx/mediarouter/app/MediaRouteButton;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteButton$a;,
        Landroidx/mediarouter/app/MediaRouteButton$c;,
        Landroidx/mediarouter/app/MediaRouteButton$b;
    }
.end annotation


# static fields
.field public static r:Landroidx/mediarouter/app/MediaRouteButton$a;

.field public static final s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:[I

.field public static final u:[I


# instance fields
.field public final a:Ldz;

.field public final b:Landroidx/mediarouter/app/MediaRouteButton$b;

.field public c:Lcz;

.field public d:Lby;

.field public f:Z

.field public g:I

.field public h:Landroidx/mediarouter/app/MediaRouteButton$c;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:I

.field public m:Landroid/content/res/ColorStateList;

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroid/util/SparseArray;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroidx/mediarouter/app/MediaRouteButton;->t:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->u:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Llx;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-static {p1}, Lfy;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcz;->c:Lcz;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-static {}, Lby;->a()Lby;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->d:Lby;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v2, Lwx;->MediaRouteButton:[I

    invoke-virtual {v7, p2, v2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p2

    move-object v4, v8

    move v5, p3

    invoke-static/range {v0 .. v6}, Ljb;->l0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->b:Landroidx/mediarouter/app/MediaRouteButton$b;

    sget p2, Lwx;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    invoke-virtual {v8, p2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    invoke-static {v7}, Ldz;->g(Landroid/content/Context;)Ldz;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteButton$b;-><init>(Landroidx/mediarouter/app/MediaRouteButton;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->b:Landroidx/mediarouter/app/MediaRouteButton$b;

    sget-object p2, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/app/MediaRouteButton$a;

    if-nez p2, :cond_1

    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$a;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/mediarouter/app/MediaRouteButton$a;-><init>(Landroid/content/Context;)V

    sput-object p2, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/app/MediaRouteButton$a;

    :cond_1
    sget p2, Lwx;->MediaRouteButton_mediaRouteButtonTint:I

    invoke-virtual {v8, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:Landroid/content/res/ColorStateList;

    sget p2, Lwx;->MediaRouteButton_android_minWidth:I

    invoke-virtual {v8, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->n:I

    sget p2, Lwx;->MediaRouteButton_android_minHeight:I

    invoke-virtual {v8, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    sget p2, Lwx;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    invoke-virtual {v8, p2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget p3, Lwx;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v8, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    iget p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:I

    if-eqz p3, :cond_2

    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_5

    if-eqz p2, :cond_4

    sget-object p3, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    new-instance p3, Landroidx/mediarouter/app/MediaRouteButton$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, p0, p2, v0}, Landroidx/mediarouter/app/MediaRouteButton$c;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteButton$c;

    sget-object p2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p3, p2, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->f()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFragmentManager()Lnd;
    .locals 2

    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteButton$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton$c;

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteButton$c;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteButton$c;

    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:I

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    invoke-virtual {v0}, Ldz;->k()Ldz$i;

    move-result-object v0

    invoke-virtual {v0}, Ldz$i;->v()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v0, v1}, Ldz$i;->D(Lcz;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ldz$i;->c()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:I

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->f()V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_3
    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    :cond_4
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->p:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v4, v5, v3}, Ldz;->m(Lcz;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    if-eqz v4, :cond_9

    if-nez v1, :cond_8

    if-ne v0, v3, :cond_b

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_a
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_b
    :goto_3
    return-void
.end method

.method public c()V
    .locals 3

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->p:Z

    if-nez v0, :cond_0

    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/app/MediaRouteButton$a;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:I

    :goto_0
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    invoke-virtual {v0}, Ldz;->i()Ljz;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteButton;->e(I)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Ljz;->b()Z

    const/4 v0, 0x0

    throw v0
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final e(I)Z
    .locals 7

    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getFragmentManager()Lnd;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    invoke-virtual {v1}, Ldz;->k()Ldz$i;

    move-result-object v1

    invoke-virtual {v1}, Ldz$i;->v()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MediaRouteButton"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v1, v2}, Ldz$i;->D(Lcz;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v1}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string p1, "showDialog(): Route controller dialog already showing!"

    :goto_0
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->d:Lby;

    invoke-virtual {v2}, Lby;->c()Lay;

    move-result-object v2

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v2, v3}, Lay;->m(Lcz;)V

    if-ne p1, v5, :cond_4

    invoke-virtual {v2, v6}, Lay;->n(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v1}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string p1, "showDialog(): Route chooser dialog already showing!"

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->d:Lby;

    invoke-virtual {v2}, Lby;->b()Lyx;

    move-result-object v2

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v2, v3}, Lyx;->n(Lcz;)V

    if-ne p1, v5, :cond_4

    invoke-virtual {v2, v6}, Lyx;->o(Z)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lnd;->j()Ltd;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ltd;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ltd;

    invoke-virtual {p1}, Ltd;->i()I

    return v6

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The activity must be a subclass of FragmentActivity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lux;->mr_cast_button_disconnected:I

    goto :goto_0

    :cond_0
    sget v0, Lux;->mr_cast_button_connected:I

    goto :goto_0

    :cond_1
    sget v0, Lux;->mr_cast_button_connecting:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->q:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, Lp2;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDialogFactory()Lby;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->d:Lby;

    return-object v0
.end method

.method public getRouteSelector()Lcz;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v0}, Lcz;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->b:Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-virtual {v0, v1, v2}, Ldz;->a(Lcz;Ldz$b;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/app/MediaRouteButton$a;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/app/MediaRouteButton$a;->b(Landroidx/mediarouter/app/MediaRouteButton;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v1}, Ldz;->i()Ljz;

    move-result-object v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->t:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->u:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :goto_0
    return-object p1

    :cond_3
    invoke-virtual {v1}, Ljz;->a()Landroid/os/Bundle;

    const/4 p1, 0x0

    throw p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v0}, Lcz;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->b:Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    :cond_0
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/app/MediaRouteButton$a;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/app/MediaRouteButton$a;->c(Landroidx/mediarouter/app/MediaRouteButton;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v0

    add-int/2addr v5, v2

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->n:I

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->o:I

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_5

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 3

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->d()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setAlwaysVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->p:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->p:Z

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->c()V

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    :cond_0
    return-void
.end method

.method public setCheatSheetEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->q:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->q:Z

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->f()V

    :cond_0
    return-void
.end method

.method public setDialogFactory(Lby;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->d:Lby;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->k:I

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->h:Landroidx/mediarouter/app/MediaRouteButton$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Ld9;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->m:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2}, Ld9;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->l:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public setRouteSelector(Lcz;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v0, p1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {v0}, Lcz;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->b:Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    :cond_0
    invoke-virtual {p1}, Lcz;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->a:Ldz;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->b:Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-virtual {v0, p1, v1}, Ldz;->a(Lcz;Ldz$b;)V

    :cond_1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->c:Lcz;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(I)V
    .locals 0

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->g:I

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->c()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->j:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
