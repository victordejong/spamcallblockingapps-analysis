.class public Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Landroid/graphics/drawable/Drawable;

.field private final D:Landroid/graphics/drawable/Drawable;

.field private final E:F

.field private final F:F

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Landroid/graphics/drawable/Drawable;

.field private final J:Landroid/graphics/drawable/Drawable;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Landroid/graphics/drawable/Drawable;

.field private final N:Landroid/graphics/drawable/Drawable;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private Q:Lcom/google/android/exoplayer2/ac;

.field private R:Lcom/google/android/exoplayer2/g;

.field private S:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

.field private T:Lcom/google/android/exoplayer2/ab;

.field private U:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

.field private V:Z

.field private W:Z

.field final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;",
            ">;"
        }
    .end annotation
.end field

.field private aA:Landroid/view/View;

.field private aB:Landroid/view/View;

.field private aC:Landroid/view/View;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:I

.field private af:[J

.field private ag:[Z

.field private ah:[J

.field private ai:[Z

.field private aj:J

.field private ak:J

.field private al:J

.field private am:Landroid/content/res/Resources;

.field private an:Landroidx/recyclerview/widget/RecyclerView;

.field private ao:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

.field private ap:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

.field private aq:Landroid/widget/PopupWindow;

.field private ar:Z

.field private as:I

.field private at:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private au:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

.field private av:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

.field private aw:Lcom/google/android/exoplayer2/ui/i;

.field private ax:Landroid/widget/ImageView;

.field private ay:Landroid/widget/ImageView;

.field private az:Landroid/widget/ImageView;

.field b:I

.field c:Lcom/google/android/exoplayer2/ui/e;

.field private final d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/ImageView;

.field private final n:Landroid/view/View;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/TextView;

.field private final q:Lcom/google/android/exoplayer2/ui/h;

.field private final r:Ljava/lang/StringBuilder;

.field private final s:Ljava/util/Formatter;

.field private final t:Lcom/google/android/exoplayer2/al$a;

.field private final u:Lcom/google/android/exoplayer2/al$b;

.field private final v:Ljava/lang/Runnable;

.field private final w:Landroid/graphics/drawable/Drawable;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private final y:Landroid/graphics/drawable/Drawable;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 317
    invoke-static {v0}, Lcom/google/android/exoplayer2/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 464
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 468
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 482
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 483
    sget v2, Lcom/google/android/exoplayer2/ui/c$h;->exo_styled_player_control_view:I

    const-wide/16 v3, 0x1388

    .line 484
    iput-wide v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ak:J

    const-wide/16 v3, 0x3a98

    .line 485
    iput-wide v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->al:J

    const/16 v3, 0x1388

    .line 486
    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:I

    const/4 v8, 0x0

    .line 487
    iput v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    const/16 v3, 0xc8

    .line 488
    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ad:I

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView:[I

    .line 502
    invoke-virtual {v3, v0, v4, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 504
    :try_start_0
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_rewind_increment:I

    iget-wide v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ak:J

    long-to-int v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ak:J

    .line 505
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_fastforward_increment:I

    iget-wide v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->al:J

    long-to-int v6, v5

    .line 506
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->al:J

    .line 508
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_controller_layout_id:I

    .line 509
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 511
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_timeout:I

    iget v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:I

    .line 512
    iget v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    .line 2767
    sget v5, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_repeat_toggle_modes:I

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 512
    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    .line 513
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_rewind_button:I

    .line 514
    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 515
    sget v5, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_fastforward_button:I

    .line 516
    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 518
    sget v6, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_previous_button:I

    .line 519
    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 521
    sget v7, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_next_button:I

    .line 522
    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 523
    sget v10, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_shuffle_button:I

    .line 524
    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 526
    sget v11, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_subtitle_button:I

    .line 527
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 529
    sget v12, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_show_vr_button:I

    .line 530
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 531
    sget v13, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_time_bar_min_update_interval:I

    iget v14, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ad:I

    .line 532
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 531
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 535
    sget v13, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerControlView_animation_enabled:I

    .line 536
    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v10

    move v15, v11

    move v10, v4

    move v11, v5

    move/from16 v21, v12

    move v12, v6

    move v6, v13

    move v13, v7

    move/from16 v7, v21

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 539
    throw v0

    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 542
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    .line 543
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setDescendantFocusability(I)V

    .line 545
    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 546
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 547
    new-instance v2, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    .line 548
    new-instance v2, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Ljava/lang/StringBuilder;

    .line 550
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Ljava/util/Formatter;

    new-array v2, v8, [J

    .line 551
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    new-array v2, v8, [Z

    .line 552
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    new-array v2, v8, [J

    .line 553
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ah:[J

    new-array v2, v8, [Z

    .line 554
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ai:[Z

    .line 555
    new-instance v2, Lcom/google/android/exoplayer2/h;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->al:J

    move/from16 v16, v10

    iget-wide v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ak:J

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/google/android/exoplayer2/h;-><init>(JJ)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    .line 556
    new-instance v2, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$QwkDVaKWCzNhTXldMRFuihxzTMI;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$QwkDVaKWCzNhTXldMRFuihxzTMI;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Ljava/lang/Runnable;

    .line 558
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_duration:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Landroid/widget/TextView;

    .line 559
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_position:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Landroid/widget/TextView;

    .line 561
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_subtitle:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ax:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 563
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :cond_1
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_fullscreen:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ay:Landroid/widget/ImageView;

    .line 567
    new-instance v3, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 568
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_minimal_fullscreen:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->az:Landroid/widget/ImageView;

    .line 569
    new-instance v3, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 571
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_settings:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aA:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 573
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_playback_speed:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aB:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 578
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    :cond_3
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_audio_track:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aC:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 583
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    :cond_4
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/h;

    .line 587
    sget v3, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress_placeholder:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v2, :cond_5

    .line 589
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    move-object/from16 v19, v5

    move/from16 v20, v6

    move v0, v7

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_6

    .line 593
    new-instance v10, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/4 v4, 0x0

    const/16 v17, 0x0

    sget v18, Lcom/google/android/exoplayer2/ui/c$k;->ExoStyledControls_TimeBar:I

    move-object v2, v10

    move-object/from16 v3, p1

    const/4 v8, 0x0

    move-object/from16 v19, v5

    move/from16 v5, v17

    move/from16 v20, v6

    move-object/from16 v6, p4

    move v0, v7

    move/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 595
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_progress:I

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setId(I)V

    .line 596
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 598
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 599
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 600
    invoke-virtual {v2, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 601
    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    goto :goto_1

    :cond_6
    move-object/from16 v19, v5

    move/from16 v20, v6

    move v0, v7

    const/4 v8, 0x0

    .line 603
    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    .line 605
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    move-object/from16 v3, v19

    if-eqz v2, :cond_7

    .line 606
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ui/h;->a(Lcom/google/android/exoplayer2/ui/h$a;)V

    .line 609
    :cond_7
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_play_pause:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 611
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    :cond_8
    sget v2, Lcom/google/android/exoplayer2/ui/c$f;->exo_prev:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 615
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    :cond_9
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_next:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 619
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    :cond_a
    sget v5, Lcom/google/android/exoplayer2/ui/c$e;->roboto_medium_numbers:I

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Landroidx/core/content/res/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 622
    sget v7, Lcom/google/android/exoplayer2/ui/c$f;->exo_rew:I

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    .line 623
    sget v9, Lcom/google/android/exoplayer2/ui/c$f;->exo_rew_with_amount:I

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    goto :goto_2

    :cond_b
    move-object v9, v8

    :goto_2
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/TextView;

    if-eqz v9, :cond_c

    .line 625
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_c
    if-nez v7, :cond_d

    move-object v7, v9

    .line 627
    :cond_d
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/view/View;

    if-eqz v7, :cond_e

    .line 629
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    :cond_e
    sget v9, Lcom/google/android/exoplayer2/ui/c$f;->exo_ffwd:I

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    .line 632
    sget v10, Lcom/google/android/exoplayer2/ui/c$f;->exo_ffwd_with_amount:I

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_3

    :cond_f
    move-object v10, v8

    :goto_3
    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/TextView;

    if-eqz v10, :cond_10

    .line 634
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    if-nez v9, :cond_11

    move-object v9, v10

    .line 636
    :cond_11
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/view/View;

    if-eqz v9, :cond_12

    .line 638
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    :cond_12
    sget v5, Lcom/google/android/exoplayer2/ui/c$f;->exo_repeat_toggle:I

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    if-eqz v5, :cond_13

    .line 642
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    :cond_13
    sget v10, Lcom/google/android/exoplayer2/ui/c$f;->exo_shuffle:I

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    if-eqz v10, :cond_14

    .line 646
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    .line 650
    sget v6, Lcom/google/android/exoplayer2/ui/c$g;->exo_media_button_opacity_percentage_enabled:I

    .line 651
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    iput v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E:F

    .line 652
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/exoplayer2/ui/c$g;->exo_media_button_opacity_percentage_disabled:I

    .line 653
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    iput v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:F

    .line 655
    sget v6, Lcom/google/android/exoplayer2/ui/c$f;->exo_vr:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/view/View;

    if-eqz v6, :cond_15

    const/4 v8, 0x0

    .line 657
    invoke-direct {v1, v8, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 660
    :cond_15
    new-instance v8, Lcom/google/android/exoplayer2/ui/e;

    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/ui/e;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    move-object/from16 p4, v5

    move/from16 v5, v20

    .line 3389
    iput-boolean v5, v8, Lcom/google/android/exoplayer2/ui/e;->m:Z

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    move/from16 v17, v0

    .line 665
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    move-object/from16 v18, v6

    sget v6, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_playback_speed:I

    .line 666
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v8, v6

    .line 667
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    move/from16 v19, v15

    sget v15, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_speed:I

    .line 668
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v6

    .line 669
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_selection_title_audio:I

    .line 670
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v8, v6

    .line 671
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v15, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_audiotrack:I

    .line 672
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v6

    .line 673
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    invoke-direct {v0, v1, v8, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ao:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    .line 674
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/c$c;->exo_settings_offset:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    .line 677
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer2/ui/c$h;->exo_styled_settings_list:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    .line 678
    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ao:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 679
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 680
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x2

    const/4 v8, 0x1

    invoke-direct {v0, v5, v6, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    .line 682
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v5, 0x17

    if-ge v0, v5, :cond_16

    .line 685
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_16
    const/4 v6, 0x0

    .line 687
    :goto_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v0, 0x1

    .line 688
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ar:Z

    .line 690
    new-instance v0, Lcom/google/android/exoplayer2/ui/a;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ui/a;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aw:Lcom/google/android/exoplayer2/ui/i;

    .line 691
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_subtitle_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I:Landroid/graphics/drawable/Drawable;

    .line 692
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_subtitle_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->J:Landroid/graphics/drawable/Drawable;

    .line 693
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_cc_enabled_description:I

    .line 694
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K:Ljava/lang/String;

    .line 695
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_cc_disabled_description:I

    .line 696
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->L:Ljava/lang/String;

    .line 697
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->au:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    .line 698
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->av:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    .line 699
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/c$a;->exo_playback_speeds:I

    .line 701
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/exoplayer2/ui/c$a;->exo_speed_multiplied_by_100:I

    .line 702
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[I)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ap:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    .line 704
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_fullscreen_exit:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    .line 705
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_fullscreen_enter:I

    .line 706
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N:Landroid/graphics/drawable/Drawable;

    .line 707
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_repeat_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 708
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_repeat_one:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    .line 709
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_repeat_all:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y:Landroid/graphics/drawable/Drawable;

    .line 710
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_shuffle_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_shuffle_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:Landroid/graphics/drawable/Drawable;

    .line 712
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_fullscreen_exit_description:I

    .line 713
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Ljava/lang/String;

    .line 714
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_fullscreen_enter_description:I

    .line 715
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Ljava/lang/String;

    .line 716
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_repeat_off_description:I

    .line 717
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    .line 718
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_repeat_one_description:I

    .line 719
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A:Ljava/lang/String;

    .line 720
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_repeat_all_description:I

    .line 721
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Ljava/lang/String;

    .line 722
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_shuffle_on_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G:Ljava/lang/String;

    .line 723
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_shuffle_off_description:I

    .line 724
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H:Ljava/lang/String;

    .line 727
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_bottom_bar:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 728
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 729
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0, v9, v11}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 730
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    move/from16 v9, v16

    invoke-virtual {v0, v7, v9}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 731
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0, v2, v12}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 732
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0, v4, v13}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 733
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0, v10, v14}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 734
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ax:Landroid/widget/ImageView;

    move/from16 v11, v19

    invoke-virtual {v0, v2, v11}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 735
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    move/from16 v12, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v12}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 736
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    move-object/from16 v5, p4

    if-eqz v2, :cond_17

    const/4 v8, 0x1

    goto :goto_5

    :cond_17
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v0, v5, v8}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 738
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$Z8CAmE0M9TvE7xj30q-BKswlXO0;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$Z8CAmE0M9TvE7xj30q-BKswlXO0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ap:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    return-object p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aC:Landroid/view/View;

    return-object p0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->av:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    return-object p0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ax:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->au:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    return-object p0
.end method

.method static synthetic F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic G(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic H(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->J:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic I(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic J(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->L:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->at:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 1541
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    if-nez p1, :cond_0

    return-void

    .line 1545
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:Z

    .line 1546
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ay:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/widget/ImageView;Z)V

    .line 1547
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->az:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private a(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1669
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1670
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p()V

    .line 1671
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    sub-int p6, p2, p3

    .line 1672
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    neg-int p2, p2

    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    sub-int p7, p2, p3

    .line 1673
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    const/4 p8, -0x1

    const/4 p9, -0x1

    move-object p5, p1

    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 1748
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1758
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 1760
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1559
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1560
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1562
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1563
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "*>;)V"
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1473
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p()V

    const/4 p1, 0x0

    .line 1475
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ar:Z

    .line 1476
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x1

    .line 1477
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ar:Z

    .line 1479
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    sub-int/2addr p1, v0

    .line 1480
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    sub-int/2addr v0, v1

    .line 1482
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/ac;)V
    .locals 2

    .line 1685
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1686
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1689
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c(Lcom/google/android/exoplayer2/ac;)V

    return-void

    .line 1687
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b(Lcom/google/android/exoplayer2/ac;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/trackselection/e$a;ILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/e$a;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    .line 9160
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v9, v2, v8

    .line 1307
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ac;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ac;->I()Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object v2

    .line 10047
    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/g;->b:[Lcom/google/android/exoplayer2/trackselection/f;

    aget-object v10, v2, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1310
    :goto_0
    iget v2, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v12, v2, :cond_3

    .line 1311
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v13

    const/4 v14, 0x0

    .line 1312
    :goto_1
    iget v2, v13, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v2, :cond_2

    .line 1313
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 1314
    invoke-virtual {v1, v8, v12, v14}, Lcom/google/android/exoplayer2/trackselection/e$a;->a(III)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    if-eqz v10, :cond_0

    .line 1317
    invoke-interface {v10, v2}, Lcom/google/android/exoplayer2/trackselection/f;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 1318
    :goto_2
    new-instance v15, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aw:Lcom/google/android/exoplayer2/ui/i;

    .line 1323
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/ui/i;->a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v15

    move/from16 v3, p2

    move v4, v12

    move v5, v14

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;-><init>(IIILjava/lang/String;Z)V

    move-object/from16 v2, p3

    .line 1318
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    move-object/from16 v2, p3

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v2, p3

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V
    .locals 2

    .line 17486
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    .line 17489
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    .line 17490
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->v()Lcom/google/android/exoplayer2/aa;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/aa;->a(F)Lcom/google/android/exoplayer2/aa;

    move-result-object p1

    .line 17489
    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/aa;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 16569
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ap:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 16571
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->av:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 16573
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ac;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ac;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ac;J)V
    .locals 6

    .line 15509
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 15510
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ab:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15511
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v1

    const/4 v2, 0x0

    .line 15514
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v4, 0x0

    .line 15809
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v3

    .line 16308
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

    .line 15526
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v2

    .line 15528
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ac;IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 15532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n()V

    :cond_3
    return-void
.end method

.method private a(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1503
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 1504
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

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

    .line 1537
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;IJ)Z

    move-result p1

    return p1
.end method

.method private static a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al$b;)Z
    .locals 8

    .line 1732
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 1735
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const-wide/16 v3, 0x0

    .line 14809
    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v3

    .line 1737
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

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ac:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private b(Lcom/google/android/exoplayer2/ac;)V
    .locals 4

    .line 1695
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:Lcom/google/android/exoplayer2/ab;

    if-nez v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1703
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ac;IJ)Z

    .line 1705
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;Z)Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Ljava/util/Formatter;

    return-object p0
.end method

.method private c(Lcom/google/android/exoplayer2/ac;)V
    .locals 2

    .line 1709
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;Z)Z

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/e;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    return-object p0
.end method

.method private d()V
    .locals 0

    .line 1106
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e()V

    .line 1107
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    .line 1108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i()V

    .line 1109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j()V

    .line 1110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k()V

    .line 1111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o()V

    .line 1112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ac;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_pause:I

    .line 1122
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_pause_description:I

    .line 1124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/c$d;->exo_styled_controls_play:I

    .line 1127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_play_description:I

    .line 1129
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1128
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private f()V
    .locals 8

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1146
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    .line 1147
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1148
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v5, 0x0

    .line 6809
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 1149
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/al$b;->i:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1151
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

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

    .line 1152
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/g;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 1153
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/g;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 1154
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

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

    move v1, v5

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_4
    if-eqz v1, :cond_9

    .line 1159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g()V

    :cond_9
    if-eqz v6, :cond_a

    .line 1162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h()V

    .line 1165
    :cond_a
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1166
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1167
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/view/View;

    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1168
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1169
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v0, :cond_b

    .line 1170
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ui/h;->setEnabled(Z)V

    :cond_b
    :goto_5
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e()V

    return-void
.end method

.method private g()V
    .locals 7

    .line 1175
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    instance-of v1, v0, Lcom/google/android/exoplayer2/h;

    if-eqz v1, :cond_0

    .line 1176
    check-cast v0, Lcom/google/android/exoplayer2/h;

    .line 7163
    iget-wide v0, v0, Lcom/google/android/exoplayer2/h;->a:J

    .line 1176
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ak:J

    .line 1178
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ak:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1179
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1180
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1183
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$i;->exo_controls_rewind_by_amount_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1184
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n()V

    return-void
.end method

.method private h()V
    .locals 7

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    instance-of v1, v0, Lcom/google/android/exoplayer2/h;

    if-eqz v1, :cond_0

    .line 1191
    check-cast v0, Lcom/google/android/exoplayer2/h;

    .line 7168
    iget-wide v0, v0, Lcom/google/android/exoplayer2/h;->b:J

    .line 1191
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->al:J

    .line 1193
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->al:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1194
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1195
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1198
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->am:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/c$i;->exo_controls_fastforward_by_amount_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1199
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1211
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1212
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    return-void

    .line 1216
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-nez v1, :cond_2

    .line 1218
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1219
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1220
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    .line 1224
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1225
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->s()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1236
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 1231
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1232
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1227
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_3

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    .line 1249
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1253
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1254
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 1256
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    .line 1257
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    .line 1258
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:Landroid/graphics/drawable/Drawable;

    .line 1257
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    .line 1260
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1261
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G:Ljava/lang/String;

    goto :goto_2

    .line 1262
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H:Ljava/lang/String;

    .line 1259
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l()V

    .line 1268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->au:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ax:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m()V

    return-void
.end method

.method private l()V
    .locals 8

    .line 1272
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->au:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->b()V

    .line 1273
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->av:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->b()V

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->at:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    goto :goto_2

    .line 7314
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/e;->a:Lcom/google/android/exoplayer2/trackselection/e$a;

    if-nez v0, :cond_1

    return-void

    .line 1282
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 8128
    :goto_0
    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->a:I

    if-ge v5, v6, :cond_4

    .line 8150
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v6, v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1289
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ax:Landroid/widget/ImageView;

    .line 1290
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1292
    invoke-direct {p0, v0, v5, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/trackselection/e$a;ILjava/util/List;)V

    .line 1293
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9150
    :cond_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v6, v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1295
    invoke-direct {p0, v0, v5, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/trackselection/e$a;ILjava/util/List;)V

    .line 1296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1299
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->au:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-virtual {v5, v3, v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a(Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/trackselection/e$a;)V

    .line 1300
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->av:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a(Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/trackselection/e$a;)V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o()V

    return-void
.end method

.method public static synthetic lambda$0v4f7A2pd7xlryo2ihtfzdIOYUI(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$QwkDVaKWCzNhTXldMRFuihxzTMI(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n()V

    return-void
.end method

.method public static synthetic lambda$Z8CAmE0M9TvE7xj30q-BKswlXO0(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private m()V
    .locals 21

    move-object/from16 v0, p0

    .line 1331
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-nez v1, :cond_0

    return-void

    .line 1335
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aa:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1336
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ab:Z

    const-wide/16 v5, 0x0

    .line 1337
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aj:J

    .line 1340
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    .line 1341
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1342
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v1

    .line 1343
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ab:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    .line 1344
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

    .line 1347
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aj:J

    .line 1349
    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    .line 10809
    invoke-virtual {v2, v8, v12, v5, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 1350
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    iget-wide v12, v12, Lcom/google/android/exoplayer2/al$b;->q:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v12, v14

    if-nez v16, :cond_5

    .line 1351
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ab:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto/16 :goto_7

    .line 1354
    :cond_5
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    iget v12, v12, Lcom/google/android/exoplayer2/al$b;->n:I

    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

    iget v13, v13, Lcom/google/android/exoplayer2/al$b;->o:I

    if-gt v12, v13, :cond_b

    .line 1355
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    .line 10955
    invoke-virtual {v2, v12, v13, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 1356
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    .line 11543
    iget-object v13, v13, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget v13, v13, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v13, :cond_a

    .line 1358
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/al$a;->a(I)J

    move-result-wide v17

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v3, v17, v19

    if-nez v3, :cond_6

    .line 1360
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/al$a;->d:J

    cmp-long v3, v5, v14

    if-eqz v3, :cond_9

    .line 1364
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/al$a;->d:J

    move-wide/from16 v17, v5

    .line 1366
    :cond_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

    .line 12532
    iget-wide v5, v3, Lcom/google/android/exoplayer2/al$a;->e:J

    add-long v17, v17, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-ltz v3, :cond_9

    .line 1368
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    array-length v5, v3

    if-ne v11, v5, :cond_8

    .line 1369
    array-length v5, v3

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    .line 1370
    :goto_6
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    .line 1371
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    .line 1373
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    add-long v17, v9, v17

    invoke-static/range {v17 .. v18}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v5

    aput-wide v5, v3, v11

    .line 1374
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Lcom/google/android/exoplayer2/al$a;

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

    .line 1379
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Lcom/google/android/exoplayer2/al$b;

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

    .line 1382
    :goto_8
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v1

    .line 1383
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 1384
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    :cond_e
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v3, :cond_10

    .line 1387
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/h;->setDuration(J)V

    .line 1388
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ah:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 1390
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    array-length v4, v3

    if-le v2, v4, :cond_f

    .line 1391
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    .line 1392
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    .line 1394
    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ah:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1395
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ai:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->af:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ag:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/h;->setAdGroupTimesMs([J[ZI)V

    .line 1398
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k()V

    return-void
.end method

.method private n()V
    .locals 13

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 1409
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aj:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->F()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1410
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aj:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->G()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 1412
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ac:Z

    if-nez v6, :cond_2

    .line 1413
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v5, :cond_3

    .line 1416
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/h;->setPosition(J)V

    .line 1417
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/h;->setBufferedPosition(J)V

    .line 1424
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    .line 1425
    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_7

    .line 1426
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->A_()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1428
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Lcom/google/android/exoplayer2/ui/h;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/h;->a()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    move-wide v3, v5

    .line 1431
    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 1432
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1435
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

    .line 1440
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ad:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide v0

    .line 1441
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    const/4 v0, 0x4

    if-eq v4, v0, :cond_8

    if-eq v4, v3, :cond_8

    .line 1443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ar:Z

    return p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    return-void

    .line 1451
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ap:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->v()Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/aa;->b:F

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->a(F)V

    .line 1452
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ao:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ap:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    .line 1453
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b()Ljava/lang/String;

    move-result-object v1

    .line 12928
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/g;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->measure(II)V

    .line 1459
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1460
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    .line 1461
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1462
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1464
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->as:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1465
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->an:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 1466
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1467
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aq:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    return-object p0
.end method

.method private q()Z
    .locals 2

    .line 1678
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    .line 1679
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    .line 1680
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    .line 1681
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I
    .locals 0

    .line 314
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    return p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aA:Landroid/view/View;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ao:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aB:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 5358
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5359
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    .line 5360
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d()V

    .line 5361
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 5494
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5495
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5363
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->d()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;)V
    .locals 1

    .line 825
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1610
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1611
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-eqz v1, :cond_9

    .line 1612
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1615
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 1617
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 1618
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->e(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    .line 1621
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->d(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    .line 1622
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

    .line 1632
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c(Lcom/google/android/exoplayer2/ac;)V

    goto :goto_0

    .line 1629
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b(Lcom/google/android/exoplayer2/ac;)V

    goto :goto_0

    .line 1638
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    .line 1635
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/g;->c(Lcom/google/android/exoplayer2/ac;)Z

    goto :goto_0

    .line 1626
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ac;)V

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 6367
    iget v1, v0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 6370
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 6371
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/e;->m:Z

    if-nez v1, :cond_1

    .line 6372
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->g()V

    return-void

    .line 6373
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/ui/e;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6374
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->f()V

    return-void

    .line 6376
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getVisibility()I

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

    .line 1599
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/KeyEvent;)Z

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

.method public onAttachedToWindow()V
    .locals 2

    .line 1579
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 13421
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/e;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x1

    .line 1581
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    .line 14091
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->a()V

    .line 1585
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1590
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1591
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 14425
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/e;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/e;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 1592
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:Z

    .line 1593
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1594
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1650
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1651
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 14469
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 14473
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e;->b:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 4389
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/ui/e;->m:Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/g;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    if-eq v0, p1, :cond_0

    .line 868
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    .line 869
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 808
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ah:[J

    new-array p1, v0, [Z

    .line 809
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ai:[Z

    goto :goto_0

    .line 811
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 812
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 813
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ah:[J

    .line 814
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ai:[Z

    .line 816
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m()V

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;)V
    .locals 4

    .line 1066
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ay:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/View;Z)V

    .line 1068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->az:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/ab;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:Lcom/google/android/exoplayer2/ab;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ac;)V
    .locals 4

    .line 758
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

    .line 760
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->m()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 759
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 765
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac;->b(Lcom/google/android/exoplayer2/ac$a;)V

    .line 767
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    if-eqz p1, :cond_5

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 771
    :cond_5
    instance-of v0, p1, Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_6

    .line 772
    check-cast p1, Lcom/google/android/exoplayer2/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/m;->z_()Lcom/google/android/exoplayer2/trackselection/h;

    move-result-object p1

    .line 773
    instance-of v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_7

    .line 774
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->at:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 777
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->at:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 779
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 5

    .line 953
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ae:I

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 955
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->s()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v0, v3, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 961
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v0, v3, v2}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 964
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Lcom/google/android/exoplayer2/g;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v0, v4, v3}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/ac;I)Z

    .line 967
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 969
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 890
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 791
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->aa:Z

    .line 792
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 910
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 900
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 880
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    .line 984
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ax:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 932
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:I

    .line 4091
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 934
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->a()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/e;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1054
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->ad:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1022
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1023
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(ZLandroid/view/View;)V

    :cond_1
    return-void
.end method
