.class public Lzx;
.super Lp;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzx$n;,
        Lzx$r;,
        Lzx$q;,
        Lzx$m;,
        Lzx$o;,
        Lzx$p;
    }
.end annotation


# static fields
.field public static final p0:Z

.field public static final q0:I


# instance fields
.field public A:Landroid/widget/RelativeLayout;

.field public B:Landroid/widget/LinearLayout;

.field public C:Landroid/view/View;

.field public D:Landroidx/mediarouter/app/OverlayListView;

.field public E:Lzx$r;

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public J:Landroid/widget/SeekBar;

.field public K:Lzx$q;

.field public L:Ldz$i;

.field public M:I

.field public N:I

.field public O:I

.field public final P:I

.field public Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldz$i;",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field

.field public R:Landroid/support/v4/media/session/MediaControllerCompat;

.field public S:Lzx$o;

.field public T:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public U:Landroid/support/v4/media/MediaDescriptionCompat;

.field public V:Lzx$n;

.field public W:Landroid/graphics/Bitmap;

.field public X:Landroid/net/Uri;

.field public Y:Z

.field public Z:Landroid/graphics/Bitmap;

.field public a0:I

.field public final b:Ldz;

.field public b0:Z

.field public final c:Lzx$p;

.field public c0:Z

.field public final d:Ldz$i;

.field public d0:Z

.field public e0:Z

.field public f:Landroid/content/Context;

.field public f0:Z

.field public g:Z

.field public g0:I

.field public h:Z

.field public h0:I

.field public i0:I

.field public j:I

.field public j0:Landroid/view/animation/Interpolator;

.field public k:Landroid/view/View;

.field public k0:Landroid/view/animation/Interpolator;

.field public l:Landroid/widget/Button;

.field public l0:Landroid/view/animation/Interpolator;

.field public m:Landroid/widget/Button;

.field public m0:Landroid/view/animation/Interpolator;

.field public n:Landroid/widget/ImageButton;

.field public final n0:Landroid/view/accessibility/AccessibilityManager;

.field public o:Landroid/widget/ImageButton;

.field public o0:Ljava/lang/Runnable;

.field public p:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

.field public q:Landroid/widget/FrameLayout;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/FrameLayout;

.field public t:Landroid/widget/FrameLayout;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Z

.field public z:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lzx;->p0:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lzx;->q0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzx;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lfy;->b(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lfy;->c(Landroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lp;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lzx;->y:Z

    new-instance p2, Lzx$d;

    invoke-direct {p2, p0}, Lzx$d;-><init>(Lzx;)V

    iput-object p2, p0, Lzx;->o0:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzx;->f:Landroid/content/Context;

    new-instance p2, Lzx$o;

    invoke-direct {p2, p0}, Lzx$o;-><init>(Lzx;)V

    iput-object p2, p0, Lzx;->S:Lzx$o;

    iget-object p2, p0, Lzx;->f:Landroid/content/Context;

    invoke-static {p2}, Ldz;->g(Landroid/content/Context;)Ldz;

    move-result-object p2

    iput-object p2, p0, Lzx;->b:Ldz;

    new-instance v0, Lzx$p;

    invoke-direct {v0, p0}, Lzx$p;-><init>(Lzx;)V

    iput-object v0, p0, Lzx;->c:Lzx$p;

    invoke-virtual {p2}, Ldz;->k()Ldz$i;

    move-result-object v0

    iput-object v0, p0, Lzx;->d:Ldz$i;

    invoke-virtual {p2}, Ldz;->h()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzx;->x(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object p2, p0, Lzx;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lox;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lzx;->P:I

    iget-object p2, p0, Lzx;->f:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lzx;->n0:Landroid/view/accessibility/AccessibilityManager;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    sget p2, Lsx;->mr_linear_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lzx;->k0:Landroid/view/animation/Interpolator;

    sget p2, Lsx;->mr_fast_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lzx;->l0:Landroid/view/animation/Interpolator;

    :cond_0
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lzx;->m0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static J(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method

.method public static n(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 3

    iget-object v0, p0, Lzx;->L:Ldz$i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzx;->b0:Z

    iget-boolean v0, p0, Lzx;->c0:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lzx;->c0:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzx;->b0:Z

    iput-boolean v0, p0, Lzx;->c0:Z

    iget-object v1, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->B()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lzx;->g:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lzx;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzx;->l:Landroid/widget/Button;

    iget-object v2, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lzx;->k:Landroid/view/View;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lzx;->Y:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzx;->Z:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lzx;->n(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzx;->Z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteCtrlDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lzx;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lzx;->Z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lzx;->u:Landroid/widget/ImageView;

    iget v1, p0, Lzx;->a0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_1
    invoke-virtual {p0}, Lzx;->h()V

    :cond_5
    invoke-virtual {p0}, Lzx;->H()V

    invoke-virtual {p0}, Lzx;->G()V

    invoke-virtual {p0, p1}, Lzx;->D(Z)V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lt;->dismiss()V

    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lzx;->k:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lzx;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzx;->V:Lzx$n;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    new-instance v0, Lzx$n;

    invoke-direct {v0, p0}, Lzx$n;-><init>(Lzx;)V

    iput-object v0, p0, Lzx;->V:Lzx$n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public C()V
    .locals 3

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcy;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lzx;->j:I

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lox;->mr_controller_volume_group_list_item_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lzx;->M:I

    sget v1, Lox;->mr_controller_volume_group_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lzx;->N:I

    sget v1, Lox;->mr_controller_volume_group_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzx;->O:I

    const/4 v0, 0x0

    iput-object v0, p0, Lzx;->W:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lzx;->X:Landroid/net/Uri;

    invoke-virtual {p0}, Lzx;->B()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzx;->A(Z)V

    return-void
.end method

.method public D(Z)V
    .locals 2

    iget-object v0, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzx$i;

    invoke-direct {v1, p0, p1}, Lzx$i;-><init>(Lzx;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public E(Z)V
    .locals 9

    iget-object v0, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lzx;->l(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lzx;->z:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lzx;->w(Landroid/view/View;I)V

    invoke-virtual {p0}, Lzx;->f()Z

    move-result v1

    invoke-virtual {p0, v1}, Lzx;->F(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lzx;->w(Landroid/view/View;I)V

    iget-object v0, p0, Lzx;->k:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lzx;->k(II)I

    move-result v2

    iget-object v4, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v5, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lzx;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lzx;->m(Z)I

    move-result v0

    iget-object v4, p0, Lzx;->F:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v5}, Ldz$i;->x()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lzx;->N:I

    iget-object v6, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v6}, Ldz$i;->k()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int v5, v5, v6

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-lez v4, :cond_3

    iget v4, p0, Lzx;->P:I

    add-int/2addr v5, v4

    :cond_3
    iget v4, p0, Lzx;->O:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-boolean v5, p0, Lzx;->d0:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lzx;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v7, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v1

    iget-object v1, p0, Lzx;->k:Landroid/view/View;

    const/16 v8, 0x8

    if-nez v1, :cond_5

    if-lez v2, :cond_5

    if-gt v5, v7, :cond_5

    iget-object v0, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lzx;->w(Landroid/view/View;I)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-static {v1}, Lzx;->l(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    add-int v5, v4, v0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lzx;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    if-gt v5, v7, :cond_7

    iget-object v0, p0, Lzx;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lzx;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lzx;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Lzx;->F(Z)V

    iget-object v0, p0, Lzx;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-virtual {p0, v3}, Lzx;->m(Z)I

    move-result v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, v7, :cond_a

    sub-int/2addr v1, v7

    sub-int/2addr v4, v1

    goto :goto_7

    :cond_a
    move v7, v1

    :goto_7
    iget-object v1, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v1, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearAnimation()V

    iget-object v1, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v1, p0, Lzx;->z:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_b

    invoke-virtual {p0, v1, v0}, Lzx;->e(Landroid/view/View;I)V

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {p0, v0, v4}, Lzx;->e(Landroid/view/View;I)V

    iget-object v0, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v7}, Lzx;->e(Landroid/view/View;I)V

    goto :goto_8

    :cond_b
    invoke-static {v1, v0}, Lzx;->w(Landroid/view/View;I)V

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-static {v0, v4}, Lzx;->w(Landroid/view/View;I)V

    iget-object v0, p0, Lzx;->s:Landroid/widget/FrameLayout;

    invoke-static {v0, v7}, Lzx;->w(Landroid/view/View;I)V

    :goto_8
    iget-object v0, p0, Lzx;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lzx;->w(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Lzx;->v(Z)V

    return-void
.end method

.method public final F(Z)V
    .locals 4

    iget-object v0, p0, Lzx;->C:Landroid/view/View;

    iget-object v1, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzx;->z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final G()V
    .locals 8

    invoke-virtual {p0}, Lzx;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-object v4, p0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    iget-object v5, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v5}, Ldz$i;->o()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    iget-object v0, p0, Lzx;->v:Landroid/widget/TextView;

    sget v1, Lux;->mr_controller_casting_screen:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    :cond_3
    iget-object v5, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    iget-object v0, p0, Lzx;->v:Landroid/widget/TextView;

    sget v1, Lux;->mr_controller_no_info_available:I

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object v2, p0, Lzx;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v4, :cond_2

    iget-object v2, p0, Lzx;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v0, p0, Lzx;->v:Landroid/widget/TextView;

    sget v1, Lux;->mr_controller_no_media_selected:I

    goto :goto_2

    :goto_5
    iget-object v2, p0, Lzx;->v:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lzx;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    const/16 v1, 0x8

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v0, 0x1

    :goto_9
    iget-object v1, p0, Lzx;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lzx;->p()Z

    move-result v2

    if-eqz v2, :cond_c

    sget v0, Llx;->mediaRoutePauseDrawable:I

    sget v2, Lux;->mr_controller_pause:I

    goto :goto_a

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lzx;->r()Z

    move-result v2

    if-eqz v2, :cond_d

    sget v0, Llx;->mediaRouteStopDrawable:I

    sget v2, Lux;->mr_controller_stop:I

    goto :goto_a

    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {p0}, Lzx;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Llx;->mediaRoutePlayDrawable:I

    sget v2, Lux;->mr_controller_play:I

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    iget-object v5, p0, Lzx;->n:Landroid/widget/ImageButton;

    if-eqz v3, :cond_f

    goto :goto_b

    :cond_f
    const/16 v7, 0x8

    :goto_b
    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v3, :cond_10

    iget-object v3, p0, Lzx;->n:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lfy;->p(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lzx;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public final H()V
    .locals 4

    iget-object v0, p0, Lzx;->d:Ldz$i;

    invoke-virtual {p0, v0}, Lzx;->s(Ldz$i;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lzx;->B:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lzx;->J:Landroid/widget/SeekBar;

    iget-object v3, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v3}, Ldz$i;->t()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lzx;->J:Landroid/widget/SeekBar;

    iget-object v3, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v3}, Ldz$i;->r()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lzx;->p:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    iget-object v3, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v3}, Ldz$i;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public I(Landroid/view/View;)V
    .locals 2

    sget v0, Lqx;->volume_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v1, p0, Lzx;->N:I

    invoke-static {v0, v1}, Lzx;->w(Landroid/view/View;I)V

    sget v0, Lqx;->mr_volume_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lzx;->M:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ldz$i;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Ldz$i;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzx;->e0:Z

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzx$k;

    invoke-direct {v1, p0, p1, p2}, Lzx$k;-><init>(Lzx;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public d(Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ldz$i;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Ldz$i;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lzx;->G:Ljava/util/Set;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lzx;->H:Ljava/util/Set;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, v0, Lzx;->H:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Lzx$l;

    invoke-direct {v3, v0}, Lzx$l;-><init>(Lzx;)V

    iget-object v4, v0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    if-ge v5, v7, :cond_4

    iget-object v7, v0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v9, v4, v5

    iget-object v10, v0, Lzx;->E:Lzx$r;

    invoke-virtual {v10, v9}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldz$i;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    if-eqz v10, :cond_1

    iget v10, v10, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v10, v0, Lzx;->N:I

    mul-int v10, v10, v2

    add-int/2addr v10, v11

    :goto_1
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v14, v0, Lzx;->G:Ljava/util/Set;

    if-eqz v14, :cond_2

    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v14, v0, Lzx;->h0:I

    int-to-long v14, v14

    invoke-virtual {v10, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move v10, v11

    :cond_2
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v14, v8, v8, v10, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget v8, v0, Lzx;->g0:I

    int-to-long v10, v8

    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v8, v0, Lzx;->j0:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez v6, :cond_3

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v7, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p2

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v7, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldz$i;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget-object v7, v0, Lzx;->H:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v5, Landroidx/mediarouter/app/OverlayListView$a;

    invoke-direct {v5, v4, v6}, Landroidx/mediarouter/app/OverlayListView$a;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v8}, Landroidx/mediarouter/app/OverlayListView$a;->c(FF)Landroidx/mediarouter/app/OverlayListView$a;

    iget v4, v0, Lzx;->i0:I

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroidx/mediarouter/app/OverlayListView$a;->e(J)Landroidx/mediarouter/app/OverlayListView$a;

    iget-object v4, v0, Lzx;->j0:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroidx/mediarouter/app/OverlayListView$a;->f(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/OverlayListView$a;

    goto :goto_3

    :cond_5
    iget v7, v0, Lzx;->N:I

    mul-int v7, v7, v2

    new-instance v9, Landroidx/mediarouter/app/OverlayListView$a;

    invoke-direct {v9, v4, v6}, Landroidx/mediarouter/app/OverlayListView$a;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v7}, Landroidx/mediarouter/app/OverlayListView$a;->g(I)Landroidx/mediarouter/app/OverlayListView$a;

    iget v4, v0, Lzx;->g0:I

    int-to-long v6, v4

    invoke-virtual {v9, v6, v7}, Landroidx/mediarouter/app/OverlayListView$a;->e(J)Landroidx/mediarouter/app/OverlayListView$a;

    iget-object v4, v0, Lzx;->j0:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v4}, Landroidx/mediarouter/app/OverlayListView$a;->f(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/OverlayListView$a;

    new-instance v4, Lzx$a;

    invoke-direct {v4, v0, v5}, Lzx$a;-><init>(Lzx;Ldz$i;)V

    invoke-virtual {v9, v4}, Landroidx/mediarouter/app/OverlayListView$a;->d(Landroidx/mediarouter/app/OverlayListView$a$a;)Landroidx/mediarouter/app/OverlayListView$a;

    iget-object v4, v0, Lzx;->I:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    :goto_3
    iget-object v4, v0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4, v5}, Landroidx/mediarouter/app/OverlayListView;->a(Landroidx/mediarouter/app/OverlayListView$a;)V

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public final e(Landroid/view/View;I)V
    .locals 4

    invoke-static {p1}, Lzx;->l(Landroid/view/View;)I

    move-result v0

    new-instance v1, Lzx$j;

    invoke-direct {v1, p0, v0, p2, p1}, Lzx$j;-><init>(Lzx;IILandroid/view/View;)V

    iget p2, p0, Lzx;->g0:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lzx;->j0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lzx;->k:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Z)V
    .locals 10

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    iget-object v5, p0, Lzx;->E:Lzx$r;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldz$i;

    if-eqz p1, :cond_0

    iget-object v5, p0, Lzx;->G:Ljava/util/Set;

    if-eqz v5, :cond_0

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    sget v4, Lqx;->volume_item_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroidx/mediarouter/app/OverlayListView;->c()V

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lzx;->j(Z)V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzx;->Y:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lzx;->Z:Landroid/graphics/Bitmap;

    iput v0, p0, Lzx;->a0:I

    return-void
.end method

.method public final i()V
    .locals 8

    new-instance v0, Lzx$c;

    invoke-direct {v0, p0}, Lzx$c;-><init>(Lzx;)V

    iget-object v1, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v2

    iget-object v6, p0, Lzx;->E:Lzx$r;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldz$i;

    iget-object v6, p0, Lzx;->G:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v6, p0, Lzx;->h0:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v3, :cond_0

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lzx;->G:Ljava/util/Set;

    iput-object v0, p0, Lzx;->H:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzx;->e0:Z

    iget-boolean v1, p0, Lzx;->f0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lzx;->f0:Z

    invoke-virtual {p0, p1}, Lzx;->D(Z)V

    :cond_0
    iget-object p1, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public k(II)I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    if-lt p1, p2, :cond_0

    iget v1, p0, Lzx;->j:I

    int-to-float v1, v1

    int-to-float p2, p2

    mul-float v1, v1, p2

    int-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    return p1

    :cond_0
    iget p1, p0, Lzx;->j:I

    int-to-float p1, p1

    const/high16 p2, 0x41100000    # 9.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x41800000    # 16.0f

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final m(Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lzx;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lzx;->C:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method public final o()Z
    .locals 5

    iget-object v0, p0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lzx;->V:Lzx$n;

    if-nez v2, :cond_2

    iget-object v2, p0, Lzx;->W:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lzx$n;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lzx;->V:Lzx$n;

    if-nez v3, :cond_3

    iget-object v3, p0, Lzx;->X:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lzx$n;->c()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    const/4 v4, 0x1

    if-eq v2, v0, :cond_4

    return v4

    :cond_4
    if-nez v2, :cond_5

    invoke-static {v3, v1}, Lzx;->J(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzx;->h:Z

    iget-object v0, p0, Lzx;->b:Ldz;

    sget-object v1, Lcz;->c:Lcz;

    iget-object v2, p0, Lzx;->c:Lzx$p;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ldz;->b(Lcz;Ldz$b;I)V

    iget-object v0, p0, Lzx;->b:Ldz;

    invoke-virtual {v0}, Ldz;->h()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzx;->x(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lp;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget v0, Ltx;->mr_controller_material_dialog_b:I

    invoke-virtual {p0, v0}, Lt;->setContentView(I)V

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lzx$m;

    invoke-direct {v0, p0}, Lzx$m;-><init>(Lzx;)V

    sget v2, Lqx;->mr_expandable_area:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lzx;->q:Landroid/widget/FrameLayout;

    new-instance v3, Lzx$e;

    invoke-direct {v3, p0}, Lzx$e;-><init>(Lzx;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lqx;->mr_dialog_area:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lzx;->r:Landroid/widget/LinearLayout;

    new-instance v3, Lzx$f;

    invoke-direct {v3, p0}, Lzx$f;-><init>(Lzx;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lzx;->f:Landroid/content/Context;

    invoke-static {v2}, Lfy;->d(Landroid/content/Context;)I

    move-result v2

    const v3, 0x102001a

    invoke-virtual {p0, v3}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lzx;->l:Landroid/widget/Button;

    sget v4, Lux;->mr_controller_disconnect:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lzx;->l:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lzx;->l:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020019

    invoke-virtual {p0, v3}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lzx;->m:Landroid/widget/Button;

    sget v4, Lux;->mr_controller_stop_casting:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lzx;->m:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lzx;->m:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lqx;->mr_name:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lzx;->x:Landroid/widget/TextView;

    sget v2, Lqx;->mr_close:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzx;->o:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lqx;->mr_custom_control:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lzx;->t:Landroid/widget/FrameLayout;

    sget v2, Lqx;->mr_default_control:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lzx;->s:Landroid/widget/FrameLayout;

    new-instance v2, Lzx$g;

    invoke-direct {v2, p0}, Lzx$g;-><init>(Lzx;)V

    sget v3, Lqx;->mr_art:I

    invoke-virtual {p0, v3}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lzx;->u:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lqx;->mr_control_title_container:I

    invoke-virtual {p0, v3}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lqx;->mr_media_main_control:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lzx;->z:Landroid/widget/LinearLayout;

    sget v2, Lqx;->mr_control_divider:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lzx;->C:Landroid/view/View;

    sget v2, Lqx;->mr_playback_control:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lzx;->A:Landroid/widget/RelativeLayout;

    sget v2, Lqx;->mr_control_title:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lzx;->v:Landroid/widget/TextView;

    sget v2, Lqx;->mr_control_subtitle:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lzx;->w:Landroid/widget/TextView;

    sget v2, Lqx;->mr_control_playback_ctrl:I

    invoke-virtual {p0, v2}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lzx;->n:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lqx;->mr_volume_control:I

    invoke-virtual {p0, v0}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzx;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Lqx;->mr_volume_slider:I

    invoke-virtual {p0, v0}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lzx;->J:Landroid/widget/SeekBar;

    iget-object v1, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lzx$q;

    invoke-direct {v0, p0}, Lzx$q;-><init>(Lzx;)V

    iput-object v0, p0, Lzx;->K:Lzx$q;

    iget-object v1, p0, Lzx;->J:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v0, Lqx;->mr_volume_group_list:I

    invoke-virtual {p0, v0}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/OverlayListView;

    iput-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzx;->F:Ljava/util/List;

    new-instance v0, Lzx$r;

    iget-object v1, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzx;->F:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lzx$r;-><init>(Lzx;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lzx;->E:Lzx$r;

    iget-object v1, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzx;->I:Ljava/util/Set;

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    iget-object v1, p0, Lzx;->z:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    iget-object v3, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v3}, Ldz$i;->x()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lfy;->u(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    iget-object v1, p0, Lzx;->J:Landroid/widget/SeekBar;

    check-cast v1, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v2, p0, Lzx;->z:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lfy;->w(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzx;->Q:Ljava/util/Map;

    iget-object v1, p0, Lzx;->d:Ldz$i;

    iget-object v2, p0, Lzx;->J:Landroid/widget/SeekBar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lqx;->mr_group_expand_collapse:I

    invoke-virtual {p0, v0}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    iput-object v0, p0, Lzx;->p:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    new-instance v1, Lzx$h;

    invoke-direct {v1, p0}, Lzx$h;-><init>(Lzx;)V

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lzx;->t()V

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lrx;->mr_controller_volume_group_list_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzx;->g0:I

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lrx;->mr_controller_volume_group_list_fade_in_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzx;->h0:I

    iget-object v0, p0, Lzx;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lrx;->mr_controller_volume_group_list_fade_out_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzx;->i0:I

    invoke-virtual {p0, p1}, Lzx;->u(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzx;->k:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzx;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lzx;->t:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lzx;->g:Z

    invoke-virtual {p0}, Lzx;->C()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lzx;->b:Ldz;

    iget-object v1, p0, Lzx;->c:Lzx$p;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzx;->x(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzx;->h:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lzx;->d:Ldz$i;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2, p1}, Ldz$i;->G(I)V

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public p()Z
    .locals 5

    iget-object v0, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x202

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 5

    iget-object v0, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x204

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 5

    iget-object v0, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Ldz$i;)Z
    .locals 2

    iget-boolean v0, p0, Lzx;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldz$i;->s()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lzx;->d0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzx;->k0:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzx;->l0:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzx;->m0:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p0, Lzx;->j0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public u(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final v(Z)V
    .locals 6

    iget-object v0, p0, Lzx;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lzx;->F:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    iget-object p1, p0, Lzx;->E:Lzx$r;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lzx;->F:Ljava/util/List;

    invoke-static {v1, v0}, Lcy;->i(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    iget-object v3, p0, Lzx;->E:Lzx$r;

    invoke-static {v2, v3}, Lcy;->e(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object v3, p0, Lzx;->f:Landroid/content/Context;

    iget-object v4, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    iget-object v5, p0, Lzx;->E:Lzx$r;

    invoke-static {v3, v4, v5}, Lcy;->d(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    iget-object v4, p0, Lzx;->F:Ljava/util/List;

    invoke-static {v4, v0}, Lcy;->f(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lzx;->G:Ljava/util/Set;

    iget-object v4, p0, Lzx;->F:Ljava/util/List;

    invoke-static {v4, v0}, Lcy;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lzx;->H:Ljava/util/Set;

    iget-object v0, p0, Lzx;->F:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Lzx;->G:Ljava/util/Set;

    invoke-interface {v0, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lzx;->F:Ljava/util/List;

    iget-object v4, p0, Lzx;->H:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lzx;->E:Lzx$r;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lzx;->d0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lzx;->G:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lzx;->H:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-lez p1, :cond_4

    invoke-virtual {p0, v2, v3}, Lzx;->c(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    iput-object v1, p0, Lzx;->G:Ljava/util/Set;

    iput-object v1, p0, Lzx;->H:Ljava/util/Set;

    :goto_3
    return-void
.end method

.method public final x(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    iget-object v0, p0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lzx;->S:Lzx$o;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v1, p0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lzx;->h:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lzx;->f:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object p1, p0, Lzx;->S:Lzx$o;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object p1, p0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object p1, p0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Lzx;->B()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lzx;->A(Z)V

    return-void
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzx;->g(Z)V

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    iget-object v0, p0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzx$b;

    invoke-direct {v1, p0}, Lzx$b;-><init>(Lzx;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lzx;->G:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzx;->i()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzx;->j(Z)V

    :goto_0
    return-void
.end method
