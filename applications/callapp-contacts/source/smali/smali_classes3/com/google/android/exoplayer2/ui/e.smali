.class final Lcom/google/android/exoplayer2/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/lang/Runnable;

.field private final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field final b:Landroid/view/View;

.field final c:Landroid/view/ViewGroup;

.field final d:Landroid/view/ViewGroup;

.field final e:Landroid/view/ViewGroup;

.field final f:Landroid/view/ViewGroup;

.field final g:Landroid/view/View;

.field final h:Ljava/lang/Runnable;

.field final i:Landroid/view/View$OnLayoutChangeListener;

.field j:I

.field k:Z

.field l:Z

.field m:Z

.field private final n:Landroid/view/ViewGroup;

.field private final o:Landroid/view/ViewGroup;

.field private final p:Landroid/view/ViewGroup;

.field private final q:Landroid/view/View;

.field private final r:Landroid/animation/AnimatorSet;

.field private final s:Landroid/animation/AnimatorSet;

.field private final t:Landroid/animation/AnimatorSet;

.field private final u:Landroid/animation/AnimatorSet;

.field private final v:Landroid/animation/AnimatorSet;

.field private final w:Landroid/animation/ValueAnimator;

.field private final x:Landroid/animation/ValueAnimator;

.field private final y:Ljava/lang/Runnable;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 12

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$vN3l0cI62BjgbVMgQGJF6LN50Lc;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$vN3l0cI62BjgbVMgQGJF6LN50Lc;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->h:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$euhkbBcb9lDyd9sOw6tYkhUUW1Q;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$euhkbBcb9lDyd9sOw6tYkhUUW1Q;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->y:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$KGl8eJ-WdS59hupWl5709o5qpA0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$KGl8eJ-WdS59hupWl5709o5qpA0;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->z:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$nr9nVqzOIqjfrK3WUJRoQzC9h9E;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$nr9nVqzOIqjfrK3WUJRoQzC9h9E;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->A:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$MyiFFe0TmdPVmTlzAcROVTFS8NQ;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$MyiFFe0TmdPVmTlzAcROVTFS8NQ;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->B:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$VhknJSMy1sfnCemLy8k7I9FBmeo;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$VhknJSMy1sfnCemLy8k7I9FBmeo;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->i:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/e;->m:Z

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->C:Ljava/util/List;

    .line 103
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_controls_background:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    .line 104
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_center_controls:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    .line 107
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_minimal_controls:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    .line 110
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_bottom_bar:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->n:Landroid/view/ViewGroup;

    .line 113
    sget v1, Lcom/google/android/exoplayer2/ui/c$f;->exo_time:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->p:Landroid/view/ViewGroup;

    .line 114
    sget v1, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    .line 117
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_basic_controls:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    .line 118
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_extra_controls:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    .line 119
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_extra_controls_scroll_view:I

    .line 120
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    .line 121
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_overflow_show:I

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->q:Landroid/view/View;

    .line 122
    sget v3, Lcom/google/android/exoplayer2/ui/c$f;->exo_overflow_hide:I

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 124
    new-instance v4, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$7ajgIBKKRouS-MJap0v9oW1ODHg;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$7ajgIBKKRouS-MJap0v9oW1ODHg;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v2, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$7ajgIBKKRouS-MJap0v9oW1ODHg;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$7ajgIBKKRouS-MJap0v9oW1ODHg;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 128
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 129
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    new-instance v4, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$su4tzBM-8DpFEmq6RYQxktzUWAs;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$su4tzBM-8DpFEmq6RYQxktzUWAs;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    new-instance v4, Lcom/google/android/exoplayer2/ui/e$1;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/ui/e$1;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v4, v2, [F

    .line 166
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 167
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    new-instance v5, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$FtsvR9MIGUBMGRIeg707fHuOWPM;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$FtsvR9MIGUBMGRIeg707fHuOWPM;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    new-instance v5, Lcom/google/android/exoplayer2/ui/e$2;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/ui/e$2;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 201
    sget v6, Lcom/google/android/exoplayer2/ui/c$c;->exo_styled_bottom_bar_height:I

    .line 202
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget v7, Lcom/google/android/exoplayer2/ui/c$c;->exo_styled_progress_bar_height:I

    .line 203
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 204
    sget v7, Lcom/google/android/exoplayer2/ui/c$c;->exo_styled_bottom_bar_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 206
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/e;->r:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0xfa

    .line 207
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    new-instance v10, Lcom/google/android/exoplayer2/ui/e$3;

    invoke-direct {v10, p0, p1}, Lcom/google/android/exoplayer2/ui/e$3;-><init>(Lcom/google/android/exoplayer2/ui/e;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/4 v10, 0x0

    .line 226
    invoke-static {v10, v6, v1}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 227
    invoke-static {v10, v6, v0}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/e;->s:Landroid/animation/AnimatorSet;

    .line 230
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 231
    new-instance v11, Lcom/google/android/exoplayer2/ui/e$4;

    invoke-direct {v11, p0, p1}, Lcom/google/android/exoplayer2/ui/e$4;-><init>(Lcom/google/android/exoplayer2/ui/e;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    invoke-static {v6, v5, v1}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 249
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 251
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/e;->t:Landroid/animation/AnimatorSet;

    .line 252
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 253
    new-instance v11, Lcom/google/android/exoplayer2/ui/e$5;

    invoke-direct {v11, p0, p1}, Lcom/google/android/exoplayer2/ui/e$5;-><init>(Lcom/google/android/exoplayer2/ui/e;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 271
    invoke-static {v10, v5, v1}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 272
    invoke-static {v10, v5, v0}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->u:Landroid/animation/AnimatorSet;

    .line 275
    invoke-virtual {p1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 276
    new-instance v3, Lcom/google/android/exoplayer2/ui/e$6;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/ui/e$6;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 290
    invoke-static {v6, v10, v1}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 291
    invoke-static {v6, v10, v0}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->v:Landroid/animation/AnimatorSet;

    .line 294
    invoke-virtual {p1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 295
    new-instance v3, Lcom/google/android/exoplayer2/ui/e$7;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/ui/e$7;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 309
    invoke-static {v5, v10, v1}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 310
    invoke-static {v5, v10, v0}, Lcom/google/android/exoplayer2/ui/e;->a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array p1, v2, [F

    .line 312
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->w:Landroid/animation/ValueAnimator;

    .line 313
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$4aeeCh_BfiTqNVjKiimBmK_kgyc;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$4aeeCh_BfiTqNVjKiimBmK_kgyc;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    new-instance v0, Lcom/google/android/exoplayer2/ui/e$8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/e$8;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v2, [F

    .line 335
    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->x:Landroid/animation/ValueAnimator;

    .line 336
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 337
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$6TIETajvi2jbe_FHSi39QtKJ_p8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$6TIETajvi2jbe_FHSi39QtKJ_p8;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    new-instance v0, Lcom/google/android/exoplayer2/ui/e$9;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/e$9;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static a(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const-string p0, "translationY"

    .line 551
    invoke-static {p2, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private a(F)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 564
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->p:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sub-float v2, v1, p1

    .line 568
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    sub-float/2addr v1, p1

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 338
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->a(F)V

    return-void
.end method

.method private a(Landroid/view/View;IIIIIIII)V
    .locals 3

    .line 2576
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2577
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result p3

    iget-object p5, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2578
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p3, p5

    iget-object p5, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2579
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    .line 2580
    iget-object p5, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2581
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getHeight()I

    move-result p5

    iget-object p7, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2582
    invoke-virtual {p7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingBottom()I

    move-result p7

    sub-int/2addr p5, p7

    iget-object p7, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2583
    invoke-virtual {p7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingTop()I

    move-result p7

    sub-int/2addr p5, p7

    .line 2585
    iget-object p7, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    .line 2586
    invoke-static {p7}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result p7

    .line 2587
    iget-object p9, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    .line 2588
    invoke-virtual {p9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p9

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr p9, v1

    goto :goto_0

    :cond_0
    const/4 p9, 0x0

    :goto_0
    sub-int/2addr p7, p9

    .line 2590
    iget-object p9, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    .line 2591
    invoke-static {p9}, Lcom/google/android/exoplayer2/ui/e;->e(Landroid/view/View;)I

    move-result p9

    .line 2592
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2593
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr p9, v1

    .line 2596
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->p:Landroid/view/ViewGroup;

    .line 2599
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/e;->q:Landroid/view/View;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2597
    invoke-static {p7, v1}, Ljava/lang/Math;->max(II)I

    move-result p7

    .line 2600
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->n:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/e;->e(Landroid/view/View;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p9, v1

    const/4 v1, 0x1

    if-le p3, p7, :cond_3

    if-gt p5, p9, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    .line 489
    :goto_3
    iget-boolean p5, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-eq p5, p3, :cond_4

    .line 490
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    .line 491
    new-instance p3, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$ypDRjW-f9fhKb9TLqJoLZIdKAKE;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$ypDRjW-f9fhKb9TLqJoLZIdKAKE;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_5

    const/4 v0, 0x1

    .line 494
    :cond_5
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-nez p2, :cond_6

    if-eqz v0, :cond_6

    .line 495
    new-instance p2, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$z7H8EhWNkCdGHZwC-vrRtLf-Uf4;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$e$z7H8EhWNkCdGHZwC-vrRtLf-Uf4;-><init>(Lcom/google/android/exoplayer2/ui/e;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 315
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->a(F)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/e;->a()V

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/ui/c$f;->exo_overflow_show:I

    if-ne v0, v1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 503
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_overflow_hide:I

    if-ne p1, v0, :cond_1

    .line 504
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1

    .line 636
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    .line 637
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_bottom_bar:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_prev:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_next:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_rew:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_rew_with_amount:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_ffwd:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_ffwd_with_amount:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Landroid/view/View;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 716
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 718
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 719
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 720
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private static e(Landroid/view/View;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 729
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 731
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 732
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 733
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private h()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/e;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private i()V
    .locals 5

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 607
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 611
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 612
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 614
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/exoplayer2/ui/c$c;->exo_styled_progress_margin_bottom:I

    .line 615
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 616
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 617
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->g:Landroid/view/View;

    instance-of v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz v3, :cond_6

    .line 619
    check-cast v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 620
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 621
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->a(Z)V

    goto :goto_1

    .line 622
    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    if-ne v3, v4, :cond_4

    .line 623
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->a(Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 3372
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3373
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3375
    :cond_5
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->d:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3376
    iput v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->c:F

    .line 3377
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 630
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 631
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/e;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private j()V
    .locals 9

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 652
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 653
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 654
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 658
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 659
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 660
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 661
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 662
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->q:Landroid/view/View;

    if-eqz v1, :cond_2

    const/16 v4, 0x8

    .line 665
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->p:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result v1

    .line 671
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 673
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 674
    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-le v1, v0, :cond_7

    .line 679
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/e;->q:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 680
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/e;->q:Landroid/view/View;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 683
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_5

    .line 686
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 687
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v1, v8

    .line 688
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v1, v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 693
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 695
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    .line 698
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->o:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void

    .line 703
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 704
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->x:Landroid/animation/ValueAnimator;

    .line 705
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 706
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_4
    return-void
.end method

.method public static synthetic lambda$4aeeCh_BfiTqNVjKiimBmK_kgyc(Lcom/google/android/exoplayer2/ui/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$6TIETajvi2jbe_FHSi39QtKJ_p8(Lcom/google/android/exoplayer2/ui/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$7ajgIBKKRouS-MJap0v9oW1ODHg(Lcom/google/android/exoplayer2/ui/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$FtsvR9MIGUBMGRIeg707fHuOWPM(Lcom/google/android/exoplayer2/ui/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$VhknJSMy1sfnCemLy8k7I9FBmeo(Lcom/google/android/exoplayer2/ui/e;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic lambda$nr9nVqzOIqjfrK3WUJRoQzC9h9E(Lcom/google/android/exoplayer2/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/e;->h()V

    return-void
.end method

.method public static synthetic lambda$su4tzBM-8DpFEmq6RYQxktzUWAs(Lcom/google/android/exoplayer2/ui/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/e;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$ypDRjW-f9fhKb9TLqJoLZIdKAKE(Lcom/google/android/exoplayer2/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/e;->i()V

    return-void
.end method

.method public static synthetic lambda$z7H8EhWNkCdGHZwC-vrRtLf-Uf4(Lcom/google/android/exoplayer2/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/e;->j()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 397
    iget v0, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1921
    iget v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:I

    if-lez v0, :cond_3

    .line 403
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/e;->m:Z

    if-nez v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->B:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/e;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 405
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/e;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->A:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/e;->a(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method final a(I)V
    .locals 3

    .line 454
    iget v0, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    .line 455
    iput p1, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    .line 464
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2100
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    .line 2101
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getVisibility()I

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x8

    .line 437
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/e;->C:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 441
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ui/e;->k:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/e;->c(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 442
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 444
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/e;->C:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/e;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 429
    iget v0, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d()V
    .locals 3

    .line 509
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/e;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/e;->a(I)V

    .line 511
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/e;->a()V

    return-void

    .line 515
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 523
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/e;->l:Z

    goto :goto_0

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 520
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/e;->a()V

    return-void
.end method

.method final e()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method final f()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method final g()V
    .locals 1

    const/4 v0, 0x2

    .line 547
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/e;->a(I)V

    return-void
.end method
