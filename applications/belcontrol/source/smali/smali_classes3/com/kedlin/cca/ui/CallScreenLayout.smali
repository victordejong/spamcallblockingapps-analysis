.class public Lcom/kedlin/cca/ui/CallScreenLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Lxb1$c;
.implements Lj71$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/CallScreenLayout$l;,
        Lcom/kedlin/cca/ui/CallScreenLayout$j;,
        Lcom/kedlin/cca/ui/CallScreenLayout$k;,
        Lcom/kedlin/cca/ui/CallScreenLayout$m;,
        Lcom/kedlin/cca/ui/CallScreenLayout$i;
    }
.end annotation


# static fields
.field public static final G0:Ljava/lang/String;


# instance fields
.field public A:Landroid/widget/TextView;

.field public A0:Lxb1;

.field public B:Landroid/widget/TextView;

.field public B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

.field public C:Landroid/widget/TextView;

.field public C0:Lvb1;

.field public D:Landroid/widget/TextView;

.field public D0:Landroid/os/Handler;

.field public E:Landroid/widget/TextView;

.field public E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

.field public F:Landroid/widget/TextView;

.field public F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

.field public G:Landroid/widget/ImageButton;

.field public H:Landroid/widget/ImageButton;

.field public I:Landroid/widget/ImageButton;

.field public J:Landroid/widget/ImageButton;

.field public K:Landroid/widget/ImageButton;

.field public L:Landroid/widget/RelativeLayout;

.field public M:Landroid/widget/RelativeLayout;

.field public N:Landroid/widget/RelativeLayout;

.field public O:Landroid/widget/RelativeLayout;

.field public P:Landroid/widget/RelativeLayout;

.field public Q:Landroid/widget/RelativeLayout;

.field public R:Landroid/widget/RelativeLayout;

.field public S:Landroid/widget/RelativeLayout;

.field public T:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public V:Landroid/widget/LinearLayout;

.field public W:Landroid/widget/LinearLayout;

.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public a0:Landroid/widget/LinearLayout;

.field public b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b0:Landroid/widget/ImageView;

.field public c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public c0:Landroid/widget/ImageView;

.field public d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public d0:Landroid/widget/ImageView;

.field public e0:Landroid/widget/ImageView;

.field public f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public f0:Landroid/widget/ImageView;

.field public g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public g0:Landroid/widget/ImageView;

.field public h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public h0:Landroid/widget/ImageView;

.field public i0:Landroid/widget/ImageView;

.field public j:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j0:Landroid/widget/ImageView;

.field public k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public k0:Landroid/widget/Space;

.field public l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public l0:Landroid/widget/EditText;

.field public m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

.field public m0:Landroid/widget/EditText;

.field public n:Landroid/view/View;

.field public n0:Landroid/widget/EditText;

.field public o:Landroid/widget/TextView;

.field public o0:Landroid/widget/Spinner;

.field public p:Landroid/widget/TextView;

.field public p0:Landroid/content/res/Resources$Theme;

.field public q:Landroid/widget/TextView;

.field public q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

.field public r:Landroid/widget/TextView;

.field public r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

.field public s:Landroid/widget/TextView;

.field public s0:Z

.field public t:Landroid/widget/TextView;

.field public t0:Z

.field public u:Landroid/widget/TextView;

.field public u0:Landroid/animation/Animator;

.field public v:Landroid/widget/TextView;

.field public v0:Landroid/animation/Animator;

.field public w:Landroid/widget/TextView;

.field public w0:Landroid/animation/Animator;

.field public x:Landroid/widget/TextView;

.field public x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public y:Landroid/widget/TextView;

.field public y0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kedlin/cca/ui/CallScreenLayout$k;",
            ">;"
        }
    .end annotation
.end field

.field public z:Landroid/widget/TextView;

.field public z0:Lxb1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/ui/CallScreenLayout;->G0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s0:Z

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->a:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$m;->a:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$l;->a:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->G(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s0:Z

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->a:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$m;->a:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$l;->a:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    invoke-virtual {p0, p2, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->G(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s0:Z

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->a:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$m;->a:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->a:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    invoke-virtual {p0, p2, p3}, Lcom/kedlin/cca/ui/CallScreenLayout;->G(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static A(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lac1;->b(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic H(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic I(Lg61;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d0(Lg61;)V

    return-void
.end method

.method private synthetic K(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->a()V

    :cond_0
    return-void
.end method

.method private synthetic M(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->k()V

    :cond_0
    return-void
.end method

.method public static synthetic O(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->x0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic R(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->v0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic T(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v0, v0, Lg61;->g:Li91;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->n0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m0:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->Z(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic V(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->o0:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method private synthetic X(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->k()V

    :cond_0
    return-void
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->l()V

    :cond_0
    return-void
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne v0, v1, :cond_1

    const v0, 0x7f04038e

    goto :goto_0

    :cond_1
    const v0, 0x7f040390

    :goto_0
    invoke-interface {p1}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_2

    const p1, 0x7f04038f

    const v0, 0x7f04038f

    goto :goto_1

    :cond_2
    const p1, 0x7f040391

    const v0, 0x7f040391

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->H:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f0:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic f0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f0:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s0:Z

    invoke-interface {p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->j(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->n0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic j(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f0:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k0:Landroid/widget/Space;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Space;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/kedlin/cca/ui/CallScreenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    return p1
.end method

.method public static synthetic l(Lcom/kedlin/cca/ui/CallScreenLayout;Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->F(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k0:Landroid/widget/Space;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Space;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->w0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic n(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic o(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic p(Lcom/kedlin/cca/ui/CallScreenLayout;)Lcom/kedlin/cca/ui/CallScreenLayout$i;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    return-object p0
.end method

.method public static synthetic q(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/animation/Animator;
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->v()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private setColors(Lg61;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f040391

    goto :goto_0

    :cond_0
    const v2, 0x7f040390

    :goto_0
    iget-object v3, v1, Lg61;->b:Lg61$c;

    sget-object v4, Lg61$c;->h:Lg61$c;

    if-ne v3, v4, :cond_1

    const v3, 0x7f0403b8

    goto :goto_1

    :cond_1
    const v3, 0x7f0403b7

    :goto_1
    const v7, 0x7f040073

    const v8, 0x7f04007e

    const v9, 0x7f04007d

    const v10, 0x7f040074

    const v11, 0x7f040075

    const v12, 0x7f040076

    iget-object v13, v1, Lg61;->f:Ln91$b;

    const v14, 0x7f0403d3

    const v15, 0x7f0403d4

    const/4 v5, 0x0

    if-eqz v13, :cond_5

    iget-boolean v6, v1, Lg61;->p:Z

    if-nez v6, :cond_5

    iget-boolean v6, v13, Ln91$b;->b:Z

    if-nez v6, :cond_2

    iget-object v6, v13, Ln91$b;->a:Ln91$a;

    sget-object v13, Ln91$a;->z:Ln91$a;

    if-ne v6, v13, :cond_5

    :cond_2
    sget-object v2, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    iput-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    const v6, 0x7f0400aa

    const v7, 0x7f0400ac

    const v8, 0x7f0400ad

    const v9, 0x7f040436

    iget-object v10, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v10}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->E()Z

    move-result v10

    if-eqz v10, :cond_3

    const v10, 0x7f04038f

    goto :goto_2

    :cond_3
    const v10, 0x7f04038e

    :goto_2
    iget-object v1, v1, Lg61;->b:Lg61$c;

    if-ne v1, v4, :cond_4

    const v1, 0x7f0403b6

    goto :goto_3

    :cond_4
    const v1, 0x7f0403b5

    :goto_3
    const v4, 0x7f04020a

    const v11, 0x7f0400a7

    const v12, 0x7f040077

    const v13, 0x7f04007c

    const v15, 0x7f04007b

    const v16, 0x7f040078

    const v17, 0x7f040079

    const v18, 0x7f04007a

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0400ab

    const v3, 0x7f0400ae

    const v14, 0x7f040078

    const v19, 0x7f040079

    const v20, 0x7f04007a

    const v21, 0x7f0403d3

    const v22, 0x7f0403d3

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->b:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    iput-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0400a5

    const v4, 0x7f0400af

    const v6, 0x7f0400a4

    const v13, 0x7f0400a8

    const v14, 0x7f0400a9

    const v18, 0x7f040437

    move v10, v2

    move v1, v3

    const v2, 0x7f0400a5

    const v3, 0x7f0400af

    const v4, 0x7f04020c

    const v7, 0x7f0400a8

    const v8, 0x7f0400a9

    const v9, 0x7f040437

    const v11, 0x7f0400a6

    const v12, 0x7f040073

    const v13, 0x7f04007e

    const v14, 0x7f040074

    const v15, 0x7f04007d

    const v19, 0x7f040075

    const v20, 0x7f040076

    const v21, 0x7f0403d4

    const v22, 0x7f0403d4

    :goto_4
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lf61;->f()Landroid/telecom/CallAudioState;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v5}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAudioState(Landroid/telecom/CallAudioState;)V

    :cond_6
    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    move/from16 v16, v15

    const/4 v15, 0x1

    invoke-static {v5, v2, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    const/4 v15, 0x0

    invoke-static {v5, v3, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v3, v6, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v3, v7, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v3, v8, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->A:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    move/from16 v5, v22

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->H:Landroid/widget/ImageButton;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v3, v10, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->G:Landroid/widget/ImageButton;

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v3, v1, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->I:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v2, v4, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    move/from16 v2, v21

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v1

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v2, v9, v3}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v4, v11, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->n:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v1, v2}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setColor(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v1, v2}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setColor(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->B:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    move/from16 v12, v20

    const/4 v4, 0x1

    invoke-static {v2, v12, v4}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->g0:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v2, v14, v3}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->t:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v2, v13, v4}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->w:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    move/from16 v11, v19

    invoke-static {v2, v11, v4}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    move/from16 v15, v16

    invoke-static {v1, v15, v4}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v1

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->n0:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->n0:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->m0:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->m0:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->z()V

    return-void
.end method

.method public final B()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, La7;

    invoke-direct {v1}, La7;-><init>()V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, La7;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v4, 0x7f0a00f1

    const/4 v5, 0x3

    const v6, 0x7f0a0126

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, La7;->m(IIIII)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, La7;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v1

    iget-object v3, v1, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg61;

    iget-object v5, v4, Lg61;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v6, v6, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v6, v6, Lg61;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lg61;->f:Ln91$b;

    if-eqz v5, :cond_0

    iget-boolean v5, v5, Ln91$b;->b:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lg61;->p:Z

    if-nez v4, :cond_0

    const v3, 0x7f0403d3

    const v4, 0x7f0404aa

    goto :goto_0

    :cond_1
    const v3, 0x7f0403d4

    const v4, 0x7f0404a9

    :goto_0
    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    const/4 v6, 0x1

    invoke-static {v5, v3, v6}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v3

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    const/4 v7, 0x0

    invoke-static {v5, v4, v7}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v4

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->E:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg61;

    new-instance v9, Ljava/util/Locale;

    iget-object v10, v8, Lg61;->g:Li91;

    invoke-virtual {v10}, Li91;->h()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-direct {v9, v11, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lg61;->a:Ljava/lang/String;

    iget-object v11, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v11, v11, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v11, v11, Lg61;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x7f110161

    const v14, 0x7f0a014b

    const v15, 0x7f0a0132

    const v2, 0x7f0a0123

    const v13, 0x7f0a0125

    const v12, 0x7f0d0037

    if-eqz v10, :cond_7

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v10, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v13, 0x7f0a0134

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v15, 0x7f0a0121

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v12, 0x4

    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v14, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v12, 0x3f333333    # 0.7f

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v0, v8}, Lcom/kedlin/cca/ui/CallScreenLayout;->E(Lg61;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v8, Lg61;->g:Li91;

    invoke-virtual {v14}, Li91;->q()Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v8, Lg61;->g:Li91;

    invoke-virtual {v14}, Li91;->s()Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v8, Lg61;->k:Lq81;

    if-eqz v14, :cond_3

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v8, Lg61;->g:Li91;

    invoke-virtual {v10}, Li91;->l()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v12, v8, Lg61;->g:Li91;

    invoke-virtual {v12}, Li91;->l()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_3
    if-eqz v12, :cond_4

    move-object v11, v12

    goto :goto_2

    :cond_4
    iget-object v11, v8, Lg61;->g:Li91;

    invoke-virtual {v11}, Li91;->l()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v8, Lg61;->g:Li91;

    invoke-virtual {v10}, Li91;->l()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v8, Lg61;->g:Li91;

    invoke-virtual {v10}, Li91;->m()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v8, Lg61;->g:Li91;

    invoke-virtual {v12}, Li91;->l()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    aput-object v9, v11, v6

    const v9, 0x7f11015f

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8, v13}, Lcom/kedlin/cca/ui/CallScreenLayout;->B0(Lg61;Landroid/widget/TextView;)V

    const/4 v5, 0x1

    const/16 v14, 0x8

    goto/16 :goto_6

    :cond_7
    iget-object v10, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    const v14, 0x7f0a014d

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v15, 0x7f0a014a

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v12, 0x3f19999a    # 0.6f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setAlpha(F)V

    new-instance v12, Lab1;

    invoke-direct {v12, v0, v8}, Lab1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;Lg61;)V

    invoke-virtual {v13, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8}, Lcom/kedlin/cca/ui/CallScreenLayout;->E(Lg61;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v8, Lg61;->g:Li91;

    invoke-virtual {v13}, Li91;->q()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v8, Lg61;->g:Li91;

    invoke-virtual {v13}, Li91;->s()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v8, Lg61;->k:Lq81;

    if-eqz v13, :cond_9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v8, Lg61;->g:Li91;

    invoke-virtual {v11}, Li91;->l()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v8, Lg61;->g:Li91;

    invoke-virtual {v11}, Li91;->m()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v11, v6, [Ljava/lang/Object;

    iget-object v8, v8, Lg61;->g:Li91;

    invoke-virtual {v8}, Li91;->l()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    const v8, 0x7f110161

    invoke-virtual {v9, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_9
    if-eqz v12, :cond_a

    move-object v13, v12

    goto :goto_4

    :cond_a
    iget-object v13, v8, Lg61;->g:Li91;

    invoke-virtual {v13}, Li91;->l()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v8, Lg61;->g:Li91;

    invoke-virtual {v11}, Li91;->l()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v8, v8, Lg61;->g:Li91;

    invoke-virtual {v8}, Li91;->l()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v7

    aput-object v9, v12, v6

    const v8, 0x7f11015f

    invoke-virtual {v11, v8, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_c
    :goto_5
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_6
    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public final B0(Lg61;Landroid/widget/TextView;)V
    .locals 10

    iget-wide v0, p1, Lg61;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lg61;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    :cond_0
    move-wide v6, v2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/kedlin/cca/ui/CallScreenLayout$e;

    move-object v4, v0

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/kedlin/cca/ui/CallScreenLayout$e;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;JLg61;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final C(Lg61;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->D(Lg61;Z)V

    return-void
.end method

.method public C0()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->g()V

    :cond_0
    return-void
.end method

.method public final D(Lg61;Z)V
    .locals 8

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, La7;

    invoke-direct {v0}, La7;-><init>()V

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, La7;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v2, 0x7f0a00f1

    const/4 v3, 0x3

    const v4, 0x7f0a00f2

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, La7;->m(IIIII)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, La7;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x:Landroid/widget/TextView;

    const v1, 0x7f1100e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lg61;->f:Ln91$b;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Ln91$b;->b:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lg61;->p:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x:Landroid/widget/TextView;

    const v4, 0x7f110189

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p1, Lg61;->f:Ln91$b;

    iget-object v3, v3, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->p:Ln91$a;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    const v5, 0x7f110170

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    const v5, 0x7f11015b

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f11015c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v5, p1, Lg61;->f:Ln91$b;

    iget-object v5, v5, Ln91$b;->a:Ln91$a;

    if-ne v5, v4, :cond_2

    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p1, Lg61;->f:Ln91$b;

    iget-object v5, v5, Ln91$b;->g:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li71;

    const-string v5, ": "

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Li71;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    iget-object v4, v4, Li71;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lg61;->f:Ln91$b;

    iget-object v4, v4, Ln91$b;->a:Ln91$a;

    invoke-virtual {v4}, Ln91$a;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget-object v4, Ln91$a;->b:Ln91$a;

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lg61;->f:Ln91$b;

    iget-object v3, v3, Ln91$b;->a:Ln91$a;

    invoke-virtual {v3}, Ln91$a;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    iget-object v4, p1, Lg61;->f:Ln91$b;

    iget-object v4, v4, Ln91$b;->a:Ln91$a;

    invoke-virtual {v4}, Ln91$a;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    new-instance v0, Ljava/util/Locale;

    iget-object v4, p1, Lg61;->g:Li91;

    invoke-virtual {v4}, Li91;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lg61;->f:Ln91$b;

    if-eqz v1, :cond_6

    iget-boolean v4, p1, Lg61;->p:Z

    if-nez v4, :cond_6

    iget-boolean v4, v1, Ln91$b;->b:Z

    if-nez v4, :cond_6

    iget-object v1, v1, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->n:Ln91$a;

    if-ne v1, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p1, Lg61;->f:Ln91$b;

    iget-object v1, v1, Ln91$b;->a:Ln91$a;

    invoke-virtual {v1}, Ln91$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v1, p1, Lg61;->f:Ln91$b;

    if-eqz v1, :cond_7

    iget-boolean v4, v1, Ln91$b;->b:Z

    if-nez v4, :cond_7

    iget-object v1, v1, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->f:Ln91$a;

    if-ne v1, v4, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p1, Lg61;->f:Ln91$b;

    iget-object v1, v1, Ln91$b;->a:Ln91$a;

    invoke-virtual {v1}, Ln91$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_9

    iget-object v1, p1, Lg61;->k:Lq81;

    if-nez v1, :cond_8

    iget-object v1, p1, Lg61;->j:Lx81;

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p1, Lg61;->f:Ln91$b;

    if-eqz v1, :cond_9

    iget-boolean v1, v1, Ln91$b;->b:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p1, Lg61;->p:Z

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, p1, Lg61;->k:Lq81;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lg61;->f:Ln91$b;

    if-eqz v1, :cond_a

    iget-boolean v1, v1, Ln91$b;->b:Z

    if-nez v1, :cond_b

    :cond_a
    :try_start_0
    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p1, Lg61;->k:Lq81;

    invoke-virtual {v5}, Lq81;->b0()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v5, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v1}, Loe1;->s(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_3

    :catch_0
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    const v6, 0x7f04053a

    invoke-static {v5, v6, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v1, 0x1

    :cond_c
    :goto_5
    const/16 v5, 0x8

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    iget-boolean v1, p1, Lg61;->p:Z

    if-nez v1, :cond_e

    iget-object v1, p1, Lg61;->f:Ln91$b;

    if-eqz v1, :cond_e

    iget-boolean v6, v1, Ln91$b;->b:Z

    if-nez v6, :cond_e

    iget-object v6, p1, Lg61;->k:Lq81;

    if-nez v6, :cond_e

    iget-object v1, v1, Ln91$b;->a:Ln91$a;

    sget-object v6, Ln91$a;->z:Ln91$a;

    if-ne v1, v6, :cond_e

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->E(Lg61;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p1, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->q()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p1, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->s()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p1, Lg61;->k:Lq81;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p1, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110161

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lg61;->g:Li91;

    invoke-virtual {p1}, Li91;->l()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    iget-object v5, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    move-object v6, v1

    goto :goto_6

    :cond_11
    iget-object v6, p1, Lg61;->g:Li91;

    invoke-virtual {v6}, Li91;->l()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p1, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f11015f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object p1, p1, Lg61;->g:Li91;

    invoke-virtual {p1}, Li91;->l()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    aput-object v0, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_7
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz p2, :cond_14

    goto :goto_8

    :cond_14
    move-object v3, v0

    :goto_8
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public D0()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Lg61;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lg61;->k:Lq81;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lq81;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lg61;->j:Lx81;

    if-eqz v0, :cond_1

    iget-object p1, v0, Lx81;->f:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, v0, Lx81;->g:Li91;

    invoke-virtual {p1}, Li91;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lg61;->h:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final E0()V
    .locals 3

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$h;->a:[I

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout;->G0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":updateAnimationState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected animation state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->s()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->A0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->y0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->z0()V

    :goto_0
    return-void
.end method

.method public final F(Ljava/lang/Long;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    const-wide/16 v7, 0xe10

    cmp-long v9, v0, v7

    if-gez v9, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    rem-long/2addr v1, v7

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    rem-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    rem-long/2addr v9, v7

    div-long/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final F0(FI)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    const v4, 0x7f0a013d

    if-ne p2, v4, :cond_0

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    int-to-double v5, p2

    float-to-double v7, p1

    add-double/2addr v7, v2

    mul-double v5, v5, v7

    double-to-int p2, v5

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v4, p2}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setRadius(I)V

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    sub-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    int-to-double v5, p2

    float-to-double v7, p1

    add-double/2addr v7, v2

    mul-double v5, v5, v7

    double-to-int p2, v5

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v4, p2}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setRadius(I)V

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    sub-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    :goto_0
    invoke-static {p2, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->A(Landroid/view/View;F)V

    return-void
.end method

.method public final G(Landroid/util/AttributeSet;I)V
    .locals 0

    return-void
.end method

.method public synthetic J(Lg61;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kedlin/cca/ui/CallScreenLayout;->I(Lg61;Landroid/view/View;)V

    return-void
.end method

.method public synthetic L(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->K(Landroid/view/View;)V

    return-void
.end method

.method public synthetic N(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->M(Landroid/view/View;)V

    return-void
.end method

.method public synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->P(Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->R(Landroid/view/View;)V

    return-void
.end method

.method public synthetic U(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->T(Landroid/view/View;)V

    return-void
.end method

.method public synthetic W(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->V(Landroid/view/View;)V

    return-void
.end method

.method public synthetic Y(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->X(Landroid/view/View;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->d:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    return-void
.end method

.method public synthetic a0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->Z(Landroid/view/View;)V

    return-void
.end method

.method public b(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setReadyForDraw(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setReadyForDraw(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A0:Lxb1;

    invoke-virtual {v0, v1}, Lxb1;->s(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z0:Lxb1;

    invoke-virtual {v0, v1}, Lxb1;->s(Z)V

    if-eqz p1, :cond_0

    const v0, 0x7f0a013c

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->n0()V

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0a013d

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->o0()V

    :cond_1
    return-void
.end method

.method public synthetic c0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->b0(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroid/telecom/CallAudioState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAudioState(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setReadyForDraw(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setReadyForDraw(Z)V

    return-void
.end method

.method public synthetic e0(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->d0(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public f(FI)V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->c:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/kedlin/cca/ui/CallScreenLayout;->F0(FI)V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic g0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->f0(Landroid/view/View;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f0a013c

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {v1, v0}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setReadyForDraw(Z)V

    :cond_0
    const v1, 0x7f0a013d

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->setReadyForDraw(Z)V

    :cond_1
    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->c:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    return-void
.end method

.method public synthetic i0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->h0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic k0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->j0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->l0(Landroid/view/View;)V

    return-void
.end method

.method public final n0()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->m()V

    :cond_0
    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->k()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-static {v0}, Loe1;->k(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->l:Lqc1;

    invoke-static {v0, p0, v1}, Lxb1;->d(Landroid/view/View;Lxb1$c;Lqc1;)Lxb1;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z0:Lxb1;

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->l:Lqc1;

    invoke-static {v0, p0, v1}, Lxb1;->d(Landroid/view/View;Lxb1$c;Lqc1;)Lxb1;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A0:Lxb1;

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    new-instance v1, Lbb1;

    invoke-direct {v1, p0}, Lbb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    new-instance v1, Lib1;

    invoke-direct {v1, p0}, Lib1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->R:Landroid/widget/RelativeLayout;

    new-instance v1, Lfb1;

    invoke-direct {v1, p0}, Lfb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->M:Landroid/widget/RelativeLayout;

    new-instance v1, Lgb1;

    invoke-direct {v1, p0}, Lgb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lmb1;

    invoke-direct {v0, p0}, Lmb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lvb1;

    invoke-direct {v0, p0}, Lvb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->C0:Lvb1;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f0:Landroid/widget/ImageView;

    new-instance v2, Lya1;

    invoke-direct {v2, p0}, Lya1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f0:Landroid/widget/ImageView;

    new-instance v2, Lhb1;

    invoke-direct {v2, p0}, Lhb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ldb1;

    invoke-direct {v0, p0}, Ldb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->S:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->P:Landroid/widget/RelativeLayout;

    new-instance v2, Lza1;

    invoke-direct {v2, p0}, Lza1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->Q:Landroid/widget/RelativeLayout;

    new-instance v2, Llb1;

    invoke-direct {v2, p0}, Llb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v2, Lnb1;->a:Lnb1;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcb1;

    invoke-direct {v2, p0}, Lcb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B:Landroid/widget/TextView;

    new-instance v2, Leb1;

    invoke-direct {v2, p0}, Leb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->g0:Landroid/widget/ImageView;

    new-instance v2, Lkb1;

    invoke-direct {v2, p0}, Lkb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->u()V

    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f11016a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-class v4, Li71;

    invoke-static {v0, v4}, Lka1;->d(Landroid/util/SparseArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li71;

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    add-int/lit8 v6, v3, 0x1

    iget-object v5, v5, Li71;->a:Ljava/lang/String;

    aput-object v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    const v3, 0x1090003

    goto :goto_1

    :cond_1
    const v3, 0x7f0d003a

    :goto_1
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->o0:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->n0:Landroid/widget/EditText;

    new-instance v1, Ljb1;

    invoke-direct {v1, p0}, Ljb1;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->o0:Landroid/widget/Spinner;

    new-instance v1, Lcom/kedlin/cca/ui/CallScreenLayout$a;

    invoke-direct {v1, p0, v2}, Lcom/kedlin/cca/ui/CallScreenLayout$a;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z0:Lxb1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxb1;->g()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z0:Lxb1;

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A0:Lxb1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lxb1;->g()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A0:Lxb1;

    :cond_1
    iput-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->C0:Lvb1;

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    const v0, 0x7f0a00f6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    const v0, 0x7f0a00f2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x:Landroid/widget/TextView;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0147

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->o:Landroid/widget/TextView;

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->g0:Landroid/widget/ImageView;

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B:Landroid/widget/TextView;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->n:Landroid/view/View;

    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E:Landroid/widget/TextView;

    const v0, 0x7f0a012e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F:Landroid/widget/TextView;

    const v0, 0x7f0a013f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A:Landroid/widget/TextView;

    const v0, 0x7f0a010b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->Q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->S:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    const v0, 0x7f0a0139

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->G:Landroid/widget/ImageButton;

    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->M:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0137

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->N:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->P:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a011e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->O:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->H:Landroid/widget/ImageButton;

    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->J:Landroid/widget/ImageButton;

    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->I:Landroid/widget/ImageButton;

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h0:Landroid/widget/ImageView;

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->K:Landroid/widget/ImageButton;

    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->R:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a036c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d0:Landroid/widget/ImageView;

    const v0, 0x7f0a013e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    const v0, 0x7f0a013d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f0:Landroid/widget/ImageView;

    const v0, 0x7f0a0366

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k0:Landroid/widget/Space;

    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->V:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->L:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->W:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->C:Landroid/widget/TextView;

    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t:Landroid/widget/TextView;

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->w:Landroid/widget/TextView;

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->u:Landroid/widget/TextView;

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->n0:Landroid/widget/EditText;

    const v0, 0x7f0a0218

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v:Landroid/widget/TextView;

    const v0, 0x7f0a0216

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m0:Landroid/widget/EditText;

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->o0:Landroid/widget/Spinner;

    const v0, 0x7f0a0368

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    const v0, 0x7f0a036a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    const v0, 0x7f0a0369

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->i0:Landroid/widget/ImageView;

    const v0, 0x7f0a0367

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->j0:Landroid/widget/ImageView;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->i0:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->j0:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q0:Lcom/kedlin/cca/ui/OverlayWithHoleImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    return-void
.end method

.method public p0(C)V
    .locals 1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    invoke-interface {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout$j;->n(C)V

    :cond_0
    return-void
.end method

.method public q0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    return-void
.end method

.method public final r(Landroid/animation/AnimatorSet;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v5, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne v4, v5, :cond_0

    const v4, 0x7f040436

    goto :goto_0

    :cond_0
    const v4, 0x7f040437

    :goto_0
    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v5, v4, v3}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070259

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iget-object v7, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->j0:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v7

    iget-object v8, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->i0:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v8

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v6, v5

    mul-float v6, v6, v10

    float-to-int v6, v6

    invoke-direct {v9, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_1
    const-string v12, "Alpha"

    const-string v13, "ScaleY"

    const-string v14, "ScaleX"

    const/4 v3, 0x3

    const/4 v15, 0x2

    if-ge v11, v15, :cond_1

    new-instance v15, Lcom/kedlin/cca/ui/CallScreenLayout$k;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v15, v10, v2, v5}, Lcom/kedlin/cca/ui/CallScreenLayout$k;-><init>(Landroid/content/Context;Landroid/graphics/Paint;F)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/view/View;->setId(I)V

    new-instance v5, La7;

    invoke-direct {v5}, La7;-><init>()V

    iget-object v4, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, La7;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v5, v10, v3, v7, v3}, La7;->l(IIII)V

    const/4 v3, 0x6

    invoke-virtual {v5, v10, v3, v7, v3}, La7;->l(IIII)V

    const/4 v3, 0x4

    invoke-virtual {v5, v10, v3, v7, v3}, La7;->l(IIII)V

    const/4 v3, 0x7

    invoke-virtual {v5, v10, v3, v7, v3}, La7;->l(IIII)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v3}, La7;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v3, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v15, v14, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    mul-int/lit16 v4, v11, 0x7d0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move/from16 v17, v7

    move/from16 v18, v8

    const/16 v10, 0xfa0

    int-to-long v7, v10

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    new-array v10, v3, [F

    fill-array-data v10, :array_1

    invoke-static {v15, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v13, -0x1

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v10, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v15, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v3, v14}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v17

    move/from16 v8, v18

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_1
    move/from16 v18, v8

    const/4 v4, 0x2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_2

    new-instance v4, Lcom/kedlin/cca/ui/CallScreenLayout$k;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v2, v7}, Lcom/kedlin/cca/ui/CallScreenLayout$k;-><init>(Landroid/content/Context;Landroid/graphics/Paint;F)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    new-instance v8, La7;

    invoke-direct {v8}, La7;-><init>()V

    iget-object v11, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v11, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8, v11}, La7;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    move/from16 v11, v18

    invoke-virtual {v8, v5, v3, v11, v3}, La7;->l(IIII)V

    const/4 v15, 0x6

    invoke-virtual {v8, v5, v15, v11, v15}, La7;->l(IIII)V

    const/4 v3, 0x4

    invoke-virtual {v8, v5, v3, v11, v3}, La7;->l(IIII)V

    const/4 v3, 0x7

    invoke-virtual {v8, v5, v3, v11, v3}, La7;->l(IIII)V

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8, v5}, La7;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v5, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    new-array v8, v5, [F

    fill-array-data v8, :array_3

    invoke-static {v4, v14, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v3, -0x1

    invoke-virtual {v8, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    mul-int/lit16 v15, v10, 0x7d0

    move-object/from16 v16, v4

    int-to-long v3, v15

    invoke-virtual {v8, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/16 v15, 0xfa0

    int-to-long v0, v15

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v5, [F

    fill-array-data v8, :array_4

    move-object/from16 v15, v16

    invoke-static {v15, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v8, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v8, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    new-array v7, v8, [F

    fill-array-data v7, :array_5

    invoke-static {v15, v12, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_2
    move-object v0, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40733333    # 3.8f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        0x40733333    # 3.8f
        0x40c00000    # 6.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x40733333    # 3.8f
        0x40c00000    # 6.0f
    .end array-data

    :array_4
    .array-data 4
        0x40733333    # 3.8f
        0x40c00000    # 6.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method public r0(Lg61;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setColors(Lg61;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->B()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->B0(Lg61;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1, v1}, Lcom/kedlin/cca/ui/CallScreenLayout;->D(Lg61;Z)V

    :goto_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->x0(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean p1, p1, Lg61;->p:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->F(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$m;->d:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    return-void
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->z()V

    return-void
.end method

.method public s0(Lg61;)V
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setColors(Lg61;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    const/4 v2, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->x0(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->C(Lg61;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    iget-object p1, p1, Lg61;->b:Lg61$c;

    sget-object v2, Lg61$c;->a:Lg61$c;

    if-ne p1, v2, :cond_3

    const p1, 0x7f110163

    goto :goto_0

    :cond_3
    const p1, 0x7f110185

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$m;->c:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    return-void
.end method

.method public setActivity(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method public setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->a:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->b:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->d:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->c:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne v0, v1, :cond_2

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->b:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    :cond_2
    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->x0:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->E0()V

    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 14

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const v2, 0x7f110153

    const v3, 0x7f080236

    const v4, 0x7f080254

    const v5, 0x7f040290

    const v6, 0x7f040292

    const v7, 0x7f04033e

    const v8, 0x7f040340

    const/4 v9, 0x0

    const v10, 0x7f110154

    const/4 v11, 0x4

    const/16 v12, 0x8

    if-ne v0, v1, :cond_5

    iput-boolean v9, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s0:Z

    const v0, 0x7f110155

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v13

    and-int/2addr v13, v1

    if-ne v13, v1, :cond_1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_0

    const p1, 0x7f040080

    goto :goto_0

    :cond_0
    const p1, 0x7f040082

    :goto_0
    const v3, 0x7f080196

    const v2, 0x7f110151

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_2

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    and-int/2addr p1, v11

    if-ne p1, v11, :cond_3

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_4

    const p1, 0x7f0403bf

    goto :goto_1

    :cond_4
    const p1, 0x7f0403c1

    :goto_1
    const v3, 0x7f08031f

    const v2, 0x7f110152

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s0:Z

    const v0, 0x7f110192

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_7

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const v7, 0x7f040340

    :goto_2
    move p1, v7

    const v2, 0x7f110154

    const v3, 0x7f080254

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    and-int/2addr p1, v11

    if-ne p1, v11, :cond_9

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    const v5, 0x7f040292

    :goto_3
    move p1, v5

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne p1, v1, :cond_a

    const p1, 0x7f04033d

    goto :goto_4

    :cond_a
    const p1, 0x7f04033f

    :goto_4
    const v3, 0x7f08024c

    const v2, 0x7f110154

    :goto_5
    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p0:Landroid/content/res/Resources$Theme;

    invoke-static {v1, p1, v9}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result p1

    iget-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->J:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->J:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->K:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->K:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setCallScreenLayoutListener(Lcom/kedlin/cca/ui/CallScreenLayout$j;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->m:Lcom/kedlin/cca/ui/CallScreenLayout$j;

    return-void
.end method

.method public t()V
    .locals 2

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CallScreenLayout;->w0(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public t0(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->D0()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->v0(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->v0(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    const v0, 0x7f110160

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    const v0, 0x7f11015e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y:Landroid/widget/TextView;

    const v2, 0x7f110183

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f110184

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1, v1}, Lcom/kedlin/cca/ui/CallScreenLayout;->w0(Landroid/view/View;I)V

    :cond_4
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$m;->g:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    return-void
.end method

.method public final u()V
    .locals 6

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->F0:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lxa1;->a:Lxa1;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/kedlin/cca/ui/CallScreenLayout$b;

    invoke-direct {v5, p0, v2}, Lcom/kedlin/cca/ui/CallScreenLayout$b;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/os/Vibrator;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a00f8
        0x7f0a00f9
        0x7f0a00fa
        0x7f0a00fb
        0x7f0a00fc
        0x7f0a00fd
        0x7f0a00fe
        0x7f0a00ff
        0x7f0a0100
        0x7f0a0101
        0x7f0a0102
        0x7f0a0105
    .end array-data
.end method

.method public u0(Lg61;)V
    .locals 6

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->t()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setColors(Lg61;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->b:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    iget-object v0, p1, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->q()Z

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_2

    iget-object v0, p1, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lg61;->f:Ln91$b;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Ln91$b;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z0:Lxb1;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lxb1;->s(Z)V

    :cond_5
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->A0:Lxb1;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lxb1;->s(Z)V

    :cond_6
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v4, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-eq v0, v4, :cond_7

    iget-object v0, p1, Lg61;->k:Lq81;

    if-nez v0, :cond_7

    iget-object v0, p1, Lg61;->j:Lx81;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v5, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-eq v4, v5, :cond_8

    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->z:Landroid/widget/TextView;

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v4

    iget-object v4, v4, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-le v4, v1, :cond_9

    const v1, 0x7f11018a

    goto :goto_4

    :cond_9
    const v1, 0x7f110165

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->C(Lg61;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->k0:Landroid/widget/Space;

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    iget-object v0, p1, Lg61;->f:Ln91$b;

    if-eqz v0, :cond_c

    iget-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->p:Ln91$a;

    if-ne v1, v3, :cond_a

    iget-boolean v3, v0, Ln91$b;->b:Z

    if-nez v3, :cond_b

    :cond_a
    sget-object v3, Ln91$a;->z:Ln91$a;

    if-ne v1, v3, :cond_c

    iget-boolean v0, v0, Ln91$b;->b:Z

    if-nez v0, :cond_c

    :cond_b
    sget-object v0, Lr71$a;->h:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean p1, p1, Lg61;->o:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    sget-object p1, Lcom/kedlin/cca/ui/CallScreenLayout$m;->b:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    return-void
.end method

.method public final v()Landroid/animation/Animator;
    .locals 1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->r(Landroid/animation/AnimatorSet;)V

    return-object v0
.end method

.method public v0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->w0(Landroid/view/View;I)V

    return-void
.end method

.method public final w()Landroid/animation/Animator;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const-wide/16 v3, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/kedlin/cca/ui/CallScreenLayout;->x(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/kedlin/cca/ui/CallScreenLayout;->x(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public w0(Landroid/view/View;I)V
    .locals 3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/kedlin/cca/ui/CallScreenLayout$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/kedlin/cca/ui/CallScreenLayout$d;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    return-void
.end method

.method public final x(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public x0(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/kedlin/cca/ui/CallScreenLayout$c;

    invoke-direct {v2, p0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout$c;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->t0:Z

    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y0()V
    .locals 3

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->z()V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->v()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    new-instance v1, Lcom/kedlin/cca/ui/CallScreenLayout$g;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/CallScreenLayout$g;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/CallScreenLayout$k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->u0:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->u0:Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->w0:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->w0:Landroid/animation/Animator;

    :cond_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->v0:Landroid/animation/Animator;

    :cond_2
    return-void
.end method

.method public final z0()V
    .locals 2

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->z()V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->w()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->u0:Landroid/animation/Animator;

    new-instance v1, Lcom/kedlin/cca/ui/CallScreenLayout$f;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/CallScreenLayout$f;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout;->u0:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
