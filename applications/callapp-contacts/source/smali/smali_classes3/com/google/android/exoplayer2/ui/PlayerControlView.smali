.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$a;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$c;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Landroid/graphics/drawable/Drawable;

.field private final C:Landroid/graphics/drawable/Drawable;

.field private final D:F

.field private final E:F

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private H:Lcom/google/android/exoplayer2/ac;

.field private I:Lcom/google/android/exoplayer2/g;

.field private J:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

.field private K:Lcom/google/android/exoplayer2/ab;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:J

.field final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerControlView$c;",
            ">;"
        }
    .end annotation
.end field

.field private aa:[J

.field private ab:[Z

.field private ac:[J

.field private ad:[Z

.field private ae:J

.field b:I

.field private final c:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/widget/ImageView;

.field private final l:Landroid/view/View;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/TextView;

.field private final o:Lcom/google/android/exoplayer2/ui/h;

.field private final p:Ljava/lang/StringBuilder;

.field private final q:Ljava/util/Formatter;

.field private final r:Lcom/google/android/exoplayer2/al$a;

.field private final s:Lcom/google/android/exoplayer2/al$b;

.field private final t:Ljava/lang/Runnable;

.field private final u:Ljava/lang/Runnable;

.field private final v:Landroid/graphics/drawable/Drawable;

.field private final w:Landroid/graphics/drawable/Drawable;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 253
    invoke-static {v0}, Lcom/google/android/exoplayer2/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 9

    .line 372
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    sget p2, Lcom/google/android/exoplayer2/ui/c$h;->exo_player_control_view:I

    const/16 p3, 0x1388

    .line 374
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    const/16 v1, 0xc8

    .line 376
    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 377
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    const/4 v1, 0x1

    .line 378
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 379
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 380
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 381
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 382
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    const/16 v1, 0x3a98

    if-eqz p4, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView:[I

    .line 389
    invoke-virtual {v2, p4, v3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 391
    :try_start_0
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_rewind_increment:I

    invoke-virtual {v2, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 392
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_fastforward_increment:I

    .line 393
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 394
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_show_timeout:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    .line 395
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_controller_layout_id:I

    .line 396
    invoke-virtual {v2, v3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 397
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    .line 2318
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 397
    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    .line 398
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_show_rewind_button:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 399
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 400
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_show_fastforward_button:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 401
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 403
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_show_previous_button:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 404
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 405
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_show_next_button:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 406
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 407
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_show_shuffle_button:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    .line 408
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    .line 409
    sget v3, Lcom/google/android/exoplayer2/ui/c$l;->PlayerControlView_time_bar_min_update_interval:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    .line 410
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 409
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 415
    throw p1

    .line 417
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 418
    new-instance v2, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    .line 419
    new-instance v2, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/lang/StringBuilder;

    .line 421
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Ljava/util/Formatter;

    new-array v2, v0, [J

    .line 422
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    new-array v2, v0, [Z

    .line 423
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    new-array v2, v0, [J

    .line 424
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ac:[J

    new-array v2, v0, [Z

    .line 425
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ad:[Z

    .line 426
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    .line 427
    new-instance v4, Lcom/google/android/exoplayer2/h;

    int-to-long v5, v1

    int-to-long v7, p3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/h;-><init>(JJ)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    .line 429
    new-instance p3, Lcom/google/android/exoplayer2/ui/-$$Lambda$PlayerControlView$Z_IBx2WWvSVS6SUO7bHZvi77_1g;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$PlayerControlView$Z_IBx2WWvSVS6SUO7bHZvi77_1g;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    .line 430
    new-instance p3, Lcom/google/android/exoplayer2/ui/-$$Lambda$3-JPVCMjzOr_jY2Ib8V2AwePTmI;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$3-JPVCMjzOr_jY2Ib8V2AwePTmI;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    .line 432
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 433
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setDescendantFocusability(I)V

    .line 435
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/h;

    .line 436
    sget p3, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress_placeholder:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 438
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 442
    new-instance p2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {p2, p1, v3, v0, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 443
    sget p4, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress:I

    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setId(I)V

    .line 444
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 446
    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 447
    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    invoke-virtual {p4, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 449
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    goto :goto_1

    .line 451
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    .line 453
    :goto_1
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_duration:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    .line 454
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_position:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/widget/TextView;

    .line 456
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    if-eqz p2, :cond_3

    .line 457
    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/ui/h;->a(Lcom/google/android/exoplayer2/ui/h$a;)V

    .line 459
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_play:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 461
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_pause:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 465
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_prev:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 469
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_next:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 473
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_rew:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 477
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    :cond_8
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_ffwd:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 481
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    :cond_9
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 485
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    :cond_a
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_shuffle:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 489
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :cond_b
    sget p2, Lcom/google/android/exoplayer2/ui/c$f;->exo_vr:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/view/View;

    .line 492
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 493
    invoke-direct {p0, v0, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 497
    sget p2, Lcom/google/android/exoplayer2/ui/c$g;->exo_media_button_opacity_percentage_enabled:I

    .line 498
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:F

    .line 499
    sget p2, Lcom/google/android/exoplayer2/ui/c$g;->exo_media_button_opacity_percentage_disabled:I

    .line 500
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:F

    .line 502
    sget p2, Lcom/google/android/exoplayer2/ui/c$d;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 503
    sget p2, Lcom/google/android/exoplayer2/ui/c$d;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 504
    sget p2, Lcom/google/android/exoplayer2/ui/c$d;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    .line 505
    sget p2, Lcom/google/android/exoplayer2/ui/c$d;->exo_controls_shuffle_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 506
    sget p2, Lcom/google/android/exoplayer2/ui/c$d;->exo_controls_shuffle_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Landroid/graphics/drawable/Drawable;

    .line 507
    sget p2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_repeat_off_description:I

    .line 508
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    .line 509
    sget p2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_repeat_one_description:I

    .line 510
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Ljava/lang/String;

    .line 511
    sget p2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_repeat_all_description:I

    .line 512
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Ljava/lang/String;

    .line 513
    sget p2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_shuffle_on_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:Ljava/lang/String;

    .line 514
    sget p2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_shuffle_off_description:I

    .line 515
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/ac;)V
    .locals 2

    .line 1256
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1257
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ac;)V

    return-void

    .line 1258
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ac;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ac;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ac;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ac;J)V
    .locals 6

    .line 7131
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 7132
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7133
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v1

    const/4 v2, 0x0

    .line 7136
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v4, 0x0

    .line 7809
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v3

    .line 8308
    iget-wide v3, v3, Lcom/google/android/exoplayer2/al$b;->q:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_0

    move-wide p2, v3

    goto :goto_1

    :cond_0
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7148
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v2

    .line 7150
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ac;IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7154
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    :cond_3
    return-void
.end method

.method private a(ZZLandroid/view/View;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 1124
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 1125
    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 1126
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

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

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Lcom/google/android/exoplayer2/ac;IJ)Z
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;IJ)Z

    move-result p1

    return p1
.end method

.method private static a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al$b;)Z
    .locals 8

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 1306
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const-wide/16 v3, 0x0

    .line 6809
    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v3

    .line 1308
    iget-wide v3, v3, Lcom/google/android/exoplayer2/al$b;->q:J

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

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private b(Lcom/google/android/exoplayer2/ac;)V
    .locals 4

    .line 1266
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/ab;

    if-nez v0, :cond_1

    .line 1271
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1274
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ac;IJ)Z

    .line 1276
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;Z)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ac;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ac;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Ljava/util/Formatter;

    return-object p0
.end method

.method private c(Lcom/google/android/exoplayer2/ac;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;Z)Z

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ac;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 862
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    if-lez v0, :cond_0

    .line 863
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    .line 864
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 868
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    :cond_1
    return-void
.end method

.method private e()V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f()V

    .line 874
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    .line 875
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h()V

    .line 876
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i()V

    .line 877
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f()V

    return-void
.end method

.method private f()V
    .locals 7

    .line 881
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()Z

    move-result v0

    .line 886
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 888
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

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

    .line 890
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 891
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 892
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    return-void
.end method

.method private g()V
    .locals 8

    .line 900
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 911
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    .line 912
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v3

    if-nez v3, :cond_8

    .line 913
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v5, 0x0

    .line 3809
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 914
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/al$b;->i:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 916
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 917
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/g;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 918
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/g;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 919
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-nez v7, :cond_6

    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    move v0, v1

    move v1, v4

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 923
    :goto_4
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    invoke-direct {p0, v3, v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 924
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    invoke-direct {p0, v1, v5, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 925
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    invoke-direct {p0, v1, v6, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 926
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v0, :cond_9

    .line 928
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ui/h;->setEnabled(Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 933
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 938
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    return-void

    .line 942
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 944
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 950
    :cond_2
    invoke-direct {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 951
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->s()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 953
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 967
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 971
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_3

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    .line 976
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 977
    invoke-direct {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 979
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 980
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    goto :goto_1

    .line 983
    :cond_2
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    .line 984
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    .line 985
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Landroid/graphics/drawable/Drawable;

    .line 984
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    .line 987
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 988
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:Ljava/lang/String;

    goto :goto_2

    .line 989
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:Ljava/lang/String;

    .line 986
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method private j()V
    .locals 21

    move-object/from16 v0, p0

    .line 994
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    if-nez v1, :cond_0

    return-void

    .line 998
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 999
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    const-wide/16 v5, 0x0

    .line 1000
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ae:J

    .line 1003
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    .line 1004
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1005
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v1

    .line 1006
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    .line 1007
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_3
    if-gt v8, v7, :cond_c

    if-ne v8, v1, :cond_4

    .line 1010
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ae:J

    .line 1012
    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    .line 4809
    invoke-virtual {v2, v8, v12, v5, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 1013
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    iget-wide v12, v12, Lcom/google/android/exoplayer2/al$b;->q:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v12, v14

    if-nez v16, :cond_5

    .line 1014
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto/16 :goto_7

    .line 1017
    :cond_5
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    iget v12, v12, Lcom/google/android/exoplayer2/al$b;->n:I

    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    iget v13, v13, Lcom/google/android/exoplayer2/al$b;->o:I

    if-gt v12, v13, :cond_b

    .line 1018
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    .line 4955
    invoke-virtual {v2, v12, v13, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 1019
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    .line 5543
    iget-object v13, v13, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget v13, v13, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v13, :cond_a

    .line 1021
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/al$a;->a(I)J

    move-result-wide v17

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v3, v17, v19

    if-nez v3, :cond_6

    .line 1023
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/al$a;->d:J

    cmp-long v3, v5, v14

    if-eqz v3, :cond_9

    .line 1027
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/al$a;->d:J

    move-wide/from16 v17, v5

    .line 1029
    :cond_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    .line 6532
    iget-wide v5, v3, Lcom/google/android/exoplayer2/al$a;->e:J

    add-long v17, v17, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-ltz v3, :cond_9

    .line 1031
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    array-length v5, v3

    if-ne v11, v5, :cond_8

    .line 1032
    array-length v5, v3

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    .line 1033
    :goto_6
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    .line 1034
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    .line 1036
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    add-long v17, v9, v17

    invoke-static/range {v17 .. v18}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v5

    aput-wide v5, v3, v11

    .line 1037
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/al$a;->c(I)Z

    move-result v5

    aput-boolean v5, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    goto :goto_4

    .line 1042
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Lcom/google/android/exoplayer2/al$b;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/al$b;->q:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_3

    :cond_c
    :goto_7
    move-wide v5, v9

    goto :goto_8

    :cond_d
    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    .line 1045
    :goto_8
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v1

    .line 1046
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 1047
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    :cond_e
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v3, :cond_10

    .line 1050
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/h;->setDuration(J)V

    .line 1051
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ac:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 1053
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    array-length v4, v3

    if-le v2, v4, :cond_f

    .line 1054
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    .line 1055
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    .line 1057
    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ac:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1058
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ad:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1059
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->aa:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ab:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/h;->setAdGroupTimesMs([J[ZI)V

    .line 1061
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    return-object p0
.end method

.method private k()V
    .locals 13

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 1073
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ae:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->F()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1074
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ae:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->G()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 1076
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-nez v6, :cond_2

    .line 1077
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v5, :cond_3

    .line 1080
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/h;->setPosition(J)V

    .line 1081
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/h;->setBufferedPosition(J)V

    .line 1088
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    .line 1089
    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_7

    .line 1090
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->A_()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1092
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/h;->a()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    move-wide v3, v5

    .line 1095
    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 1096
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1099
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->v()Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/aa;->b:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_6
    move-wide v7, v5

    .line 1104
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide v0

    .line 1105
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    const/4 v0, 0x4

    if-eq v4, v0, :cond_8

    if-eq v4, v3, :cond_8

    .line 1107
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/g;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 1112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public static synthetic lambda$Z_IBx2WWvSVS6SUO7bHZvi77_1g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    return-object p0
.end method

.method private m()Z
    .locals 2

    .line 1249
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    .line 1250
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    .line 1251
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    .line 1252
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I
    .locals 0

    .line 250
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    return p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 830
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    .line 833
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a()V

    goto :goto_0

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e()V

    .line 836
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    .line 839
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V
    .locals 1

    .line 594
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1210
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1211
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    if-eqz v1, :cond_9

    .line 1212
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1215
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 1217
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 1218
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->e(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    .line 1221
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->d(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    .line 1222
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_7

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

    .line 1232
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ac;)V

    goto :goto_0

    .line 1229
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ac;)V

    goto :goto_0

    .line 1238
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    .line 1235
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->c(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    .line 1226
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ac;)V

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 844
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 845
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    .line 847
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a()V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 851
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 857
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1199
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1192
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    .line 1194
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1165
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    .line 1166
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1173
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    .line 1176
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1181
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1182
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Z

    .line 1183
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1184
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/g;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    if-eq v0, p1, :cond_0

    .line 637
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    .line 638
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 577
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ac:[J

    new-array p1, v0, [Z

    .line 578
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ad:[Z

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 581
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 582
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ac:[J

    .line 583
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->ad:[Z

    .line 585
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    instance-of v1, v0, Lcom/google/android/exoplayer2/h;

    if-eqz v1, :cond_0

    .line 703
    check-cast v0, Lcom/google/android/exoplayer2/h;

    int-to-long v1, p1

    .line 3186
    iput-wide v1, v0, Lcom/google/android/exoplayer2/h;->b:J

    .line 704
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/ab;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Lcom/google/android/exoplayer2/ab;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ac;)V
    .locals 4

    .line 535
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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    if-eqz p1, :cond_2

    .line 537
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->m()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 536
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 542
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac;->b(Lcom/google/android/exoplayer2/ac$a;)V

    .line 544
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    if-eqz p1, :cond_5

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 548
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$b;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 749
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:I

    .line 750
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_2

    .line 751
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->s()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 754
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 757
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 760
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:Lcom/google/android/exoplayer2/ac;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    .line 763
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Lcom/google/android/exoplayer2/g;

    instance-of v1, v0, Lcom/google/android/exoplayer2/h;

    if-eqz v1, :cond_0

    .line 690
    check-cast v0, Lcom/google/android/exoplayer2/h;

    int-to-long v1, p1

    .line 3177
    iput-wide v1, v0, Lcom/google/android/exoplayer2/h;->a:J

    .line 691
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:Z

    .line 659
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 560
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Z

    .line 561
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 678
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:Z

    .line 679
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    .line 668
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:Z

    .line 669
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    .line 648
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 649
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 777
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:Z

    .line 778
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 727
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    .line 728
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 793
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 822
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 804
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3783
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 805
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZZLandroid/view/View;)V

    :cond_2
    return-void
.end method
