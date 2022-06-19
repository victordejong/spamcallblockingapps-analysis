.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$c;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$d;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Landroid/graphics/drawable/Drawable;

.field private final E:Landroid/graphics/drawable/Drawable;

.field private final F:F

.field private final G:F

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private J:Lcom/google/android/exoplayer2/o0;

.field private K:Lcom/google/android/exoplayer2/w;

.field private L:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

.field private M:Lcom/google/android/exoplayer2/m0;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private a0:J

.field private b0:[J

.field private c0:[Z

.field private final d:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

.field private d0:[J

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerControlView$d;",
            ">;"
        }
    .end annotation
.end field

.field private e0:[Z

.field private final f:Landroid/view/View;

.field private f0:J

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/View;

.field private final k:Landroid/view/View;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/ImageView;

.field private final n:Landroid/view/View;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/TextView;

.field private final q:Lcom/google/android/exoplayer2/ui/m;

.field private final r:Ljava/lang/StringBuilder;

.field private final s:Ljava/util/Formatter;

.field private final t:Lcom/google/android/exoplayer2/y0$b;

.field private final u:Lcom/google/android/exoplayer2/y0$c;

.field private final v:Ljava/lang/Runnable;

.field private final w:Ljava/lang/Runnable;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private final y:Landroid/graphics/drawable/Drawable;

.field private final z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/e0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget p2, Lcom/google/android/exoplayer2/ui/i;->exo_player_control_view:I

    const/16 p3, 0x1388

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:I

    const/16 v0, 0x3a98

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    .line 8
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    const/4 p3, 0x0

    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    const/16 v0, 0xc8

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0:J

    .line 12
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:Z

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView:[I

    .line 14
    invoke-virtual {v0, p4, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 15
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_rewind_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:I

    .line 16
    sget v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_fastforward_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    .line 18
    sget v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_show_timeout:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    .line 19
    sget v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_controller_layout_id:I

    .line 20
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 21
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G(Landroid/content/res/TypedArray;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    .line 22
    sget v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_show_shuffle_button:I

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:Z

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:Z

    .line 24
    sget v1, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_time_bar_min_update_interval:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    throw p1

    .line 29
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/y0$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/y0$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    .line 31
    new-instance v0, Lcom/google/android/exoplayer2/y0$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/y0$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Ljava/lang/StringBuilder;

    .line 33
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/util/Formatter;

    new-array v0, p3, [J

    .line 34
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    new-array v0, p3, [Z

    .line 35
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    new-array v0, p3, [J

    .line 36
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0:[J

    new-array v0, p3, [Z

    .line 37
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e0:[Z

    .line 38
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    .line 39
    new-instance v2, Lcom/google/android/exoplayer2/x;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/x;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    .line 40
    new-instance v2, Lcom/google/android/exoplayer2/ui/c;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/c;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/Runnable;

    .line 41
    new-instance v2, Lcom/google/android/exoplayer2/ui/a;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 44
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/m;

    .line 45
    sget v3, Lcom/google/android/exoplayer2/ui/g;->exo_progress_placeholder:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 46
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 47
    new-instance v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {v2, p1, v1, p3, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {v2, p2}, Landroid/view/View;->setId(I)V

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    .line 52
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p2, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 54
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    goto :goto_1

    .line 55
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    .line 56
    :goto_1
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Landroid/widget/TextView;

    .line 57
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Landroid/widget/TextView;

    .line 58
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    if-eqz p2, :cond_3

    .line 59
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/ui/m;->a(Lcom/google/android/exoplayer2/ui/m$a;)V

    .line 60
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_8
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_9
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 73
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_a
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 75
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_b
    sget p2, Lcom/google/android/exoplayer2/ui/g;->exo_vr:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/view/View;

    .line 77
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    sget p2, Lcom/google/android/exoplayer2/ui/h;->exo_media_button_opacity_percentage_enabled:I

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:F

    .line 81
    sget p2, Lcom/google/android/exoplayer2/ui/h;->exo_media_button_opacity_percentage_disabled:I

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:F

    .line 83
    sget p2, Lcom/google/android/exoplayer2/ui/f;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    .line 84
    sget p2, Lcom/google/android/exoplayer2/ui/f;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Landroid/graphics/drawable/Drawable;

    .line 85
    sget p2, Lcom/google/android/exoplayer2/ui/f;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Landroid/graphics/drawable/Drawable;

    .line 86
    sget p2, Lcom/google/android/exoplayer2/ui/f;->exo_controls_shuffle_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:Landroid/graphics/drawable/Drawable;

    .line 87
    sget p2, Lcom/google/android/exoplayer2/ui/f;->exo_controls_shuffle_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Landroid/graphics/drawable/Drawable;

    .line 88
    sget p2, Lcom/google/android/exoplayer2/ui/j;->exo_controls_repeat_off_description:I

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Ljava/lang/String;

    .line 90
    sget p2, Lcom/google/android/exoplayer2/ui/j;->exo_controls_repeat_one_description:I

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Ljava/lang/String;

    .line 92
    sget p2, Lcom/google/android/exoplayer2/ui/j;->exo_controls_repeat_all_description:I

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Ljava/lang/String;

    .line 94
    sget p2, Lcom/google/android/exoplayer2/ui/j;->exo_controls_shuffle_on_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Ljava/lang/String;

    .line 95
    sget p2, Lcom/google/android/exoplayer2/ui/j;->exo_controls_shuffle_off_description:I

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0()V

    return-void
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0()V

    return-void
.end method

.method private static D(Lcom/google/android/exoplayer2/y0;Lcom/google/android/exoplayer2/y0$c;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/y0$c;->m:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private F(Lcom/google/android/exoplayer2/o0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(Lcom/google/android/exoplayer2/o0;J)V

    :cond_0
    return-void
.end method

.method private static G(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/exoplayer2/ui/k;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private I()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0:J

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0:J

    :cond_1
    :goto_0
    return-void
.end method

.method private static J(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic L(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0()V

    return-void
.end method

.method private M(Lcom/google/android/exoplayer2/o0;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result v1

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->F()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 5
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/y0$c;->h:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private N(Lcom/google/android/exoplayer2/o0;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->z()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/y0$c;->h:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/y0$c;->g:Z

    if-nez v2, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 8
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private Q(Lcom/google/android/exoplayer2/o0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:I

    if-lez v0, :cond_0

    neg-int v0, v0

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S(Lcom/google/android/exoplayer2/o0;J)V

    :cond_0
    return-void
.end method

.method private R(Lcom/google/android/exoplayer2/o0;IJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/w;->b(Lcom/google/android/exoplayer2/o0;IJ)Z

    move-result p1

    return p1
.end method

.method private S(Lcom/google/android/exoplayer2/o0;J)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->getDuration()J

    move-result-wide p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p2, 0x0

    .line 4
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    return-void
.end method

.method private T(Lcom/google/android/exoplayer2/o0;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/y0$c;->c()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result v2

    .line 6
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0()V

    :cond_3
    return-void
.end method

.method private U(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private V()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->B()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->B()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private X()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Z()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0()V

    return-void
.end method

.method private Y()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->e()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/y0$c;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 7
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/y0$c;->h:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 8
    iget v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:I

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 9
    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 10
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/y0$c;->h:Z

    if-nez v7, :cond_5

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    :goto_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    invoke-direct {p0, v5, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/view/View;

    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    if-eqz v0, :cond_8

    .line 16
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/ui/m;->setEnabled(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method private Z()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 5
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P()V

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method private a0()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f0:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->y()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f0:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->O()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:Z

    if-nez v6, :cond_2

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    if-eqz v5, :cond_3

    .line 8
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/m;->setPosition(J)V

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/m;->setBufferedPosition(J)V

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v5, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a(JJ)V

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->B()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_8

    .line 14
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    if-eqz v3, :cond_6

    .line 16
    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/m;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    move-wide v3, v5

    .line 17
    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 18
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 19
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/l0;->b:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_7
    move-wide v7, v5

    .line 20
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/h0;->o(JJJ)J

    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    if-eq v4, v0, :cond_9

    if-eq v4, v3, :cond_9

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:Z

    return p1
.end method

.method private b0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 8
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->K()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0()V

    return-void
.end method

.method private c0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:Z

    if-nez v2, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    .line 8
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U(ZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    .line 10
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->N()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    .line 13
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->N()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Ljava/lang/String;

    .line 14
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0()V

    return-void
.end method

.method private d0()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D(Lcom/google/android/exoplayer2/y0;Lcom/google/android/exoplayer2/y0$c;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Z

    const-wide/16 v5, 0x0

    .line 4
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f0:J

    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v7

    if-nez v7, :cond_e

    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result v1

    .line 8
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_3
    if-gt v8, v7, :cond_d

    if-ne v8, v1, :cond_4

    .line 10
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f0:J

    .line 11
    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v2, v8, v12}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    .line 12
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    iget-wide v13, v12, Lcom/google/android/exoplayer2/y0$c;->m:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    if-nez v17, :cond_5

    .line 13
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    goto/16 :goto_8

    .line 14
    :cond_5
    iget v12, v12, Lcom/google/android/exoplayer2/y0$c;->j:I

    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Lcom/google/android/exoplayer2/y0$c;

    iget v14, v13, Lcom/google/android/exoplayer2/y0$c;->k:I

    if-gt v12, v14, :cond_c

    .line 15
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 16
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/y0$b;->c()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_b

    .line 17
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/y0$b;->f(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_7

    .line 18
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    iget-wide v3, v4, Lcom/google/android/exoplayer2/y0$b;->d:J

    cmp-long v18, v3, v15

    if-nez v18, :cond_6

    goto :goto_7

    :cond_6
    move-wide/from16 v18, v3

    .line 19
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/y0$b;->l()J

    move-result-wide v3

    add-long v18, v18, v3

    cmp-long v3, v18, v5

    if-ltz v3, :cond_a

    .line 20
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    array-length v4, v3

    if-ne v11, v4, :cond_9

    .line 21
    array-length v4, v3

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 22
    :goto_6
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    .line 23
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    .line 24
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    add-long v18, v9, v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v18

    aput-wide v18, v3, v11

    .line 25
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/y0$b;->m(I)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_4

    .line 26
    :cond_c
    iget-wide v3, v13, Lcom/google/android/exoplayer2/y0$c;->m:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_8
    move-wide v5, v9

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    .line 27
    :goto_9
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v1

    .line 28
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 29
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    if-eqz v3, :cond_11

    .line 31
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/m;->setDuration(J)V

    .line 32
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 33
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    array-length v4, v3

    if-le v2, v4, :cond_10

    .line 34
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    .line 35
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    .line 36
    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Lcom/google/android/exoplayer2/ui/m;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/m;->setAdGroupTimesMs([J[ZI)V

    .line 39
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M(Lcom/google/android/exoplayer2/o0;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N(Lcom/google/android/exoplayer2/o0;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F(Lcom/google/android/exoplayer2/o0;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q(Lcom/google/android/exoplayer2/o0;)V

    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Lcom/google/android/exoplayer2/m0;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o0;IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R(Lcom/google/android/exoplayer2/o0;IJ)Z

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/o0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T(Lcom/google/android/exoplayer2/o0;J)V

    return-void
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Z()V

    return-void
.end method


# virtual methods
.method public C(Lcom/google/android/exoplayer2/ui/PlayerControlView$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public E(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F(Lcom/google/android/exoplayer2/o0;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x59

    if-ne v0, v3, :cond_2

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q(Lcom/google/android/exoplayer2/o0;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/w;->d(Lcom/google/android/exoplayer2/o0;Z)Z

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    invoke-interface {p1, v1, v4}, Lcom/google/android/exoplayer2/w;->d(Lcom/google/android/exoplayer2/o0;Z)Z

    goto :goto_0

    .line 10
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N(Lcom/google/android/exoplayer2/o0;)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M(Lcom/google/android/exoplayer2/o0;)V

    goto :goto_0

    .line 12
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o0;->h()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/w;->d(Lcom/google/android/exoplayer2/o0;Z)Z

    :cond_8
    :goto_0
    return v4

    :cond_9
    :goto_1
    return v2
.end method

.method public H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0:J

    :cond_1
    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O(Lcom/google/android/exoplayer2/ui/PlayerControlView$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->X()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P()V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I()V

    .line 9
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->X()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/w;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/x;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/x;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0:[J

    new-array p1, v0, [Z

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e0:[Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 4
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->a(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0:[J

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e0:[Z

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0()V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Lcom/google/android/exoplayer2/m0;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/o0;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->M()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o0;->t(Lcom/google/android/exoplayer2/o0$a;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o0;->o(Lcom/google/android/exoplayer2/o0$a;)V

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->X()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->K()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/o0;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/o0;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/w;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/o0;I)Z

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b0()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Y()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d0()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c0()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->n(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
