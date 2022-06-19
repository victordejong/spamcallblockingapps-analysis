.class public Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private final a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

.field private final b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/ImageView;

.field private final f:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/TextView;

.field private final i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private final j:Landroid/widget/FrameLayout;

.field private final k:Landroid/widget/FrameLayout;

.field private l:Lcom/google/android/exoplayer2/ac;

.field private m:Z

.field private n:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Lcom/google/android/exoplayer2/util/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/i<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/CharSequence;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 342
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 347
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 348
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c:Landroid/view/View;

    .line 349
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    .line 350
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    .line 351
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 352
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g:Landroid/view/View;

    .line 353
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    .line 354
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 355
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j:Landroid/widget/FrameLayout;

    .line 356
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k:Landroid/widget/FrameLayout;

    .line 357
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 358
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2496
    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_edit_mode_logo:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2497
    sget v3, Lcom/google/android/exoplayer2/ui/c$b;->exo_edit_mode_background_color:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2501
    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_edit_mode_logo:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2502
    sget v3, Lcom/google/android/exoplayer2/ui/c$b;->exo_edit_mode_background_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 363
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 369
    :cond_1
    sget v4, Lcom/google/android/exoplayer2/ui/c$h;->exo_styled_player_view:I

    const/4 v6, 0x1

    .line 380
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->s:Z

    const/16 v7, 0x1388

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView:[I

    invoke-virtual {v9, v2, v10, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 385
    :try_start_0
    sget v10, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 386
    sget v11, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_shutter_background_color:I

    .line 387
    invoke-virtual {v9, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 388
    sget v12, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_player_layout_id:I

    .line 389
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 390
    sget v12, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_use_artwork:I

    invoke-virtual {v9, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 391
    sget v13, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_default_artwork:I

    .line 392
    invoke-virtual {v9, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 393
    sget v14, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_use_controller:I

    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 394
    sget v15, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_surface_type:I

    invoke-virtual {v9, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 395
    sget v5, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_resize_mode:I

    invoke-virtual {v9, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 396
    sget v8, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_show_timeout:I

    .line 397
    invoke-virtual {v9, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 398
    sget v8, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_hide_on_touch:I

    .line 399
    invoke-virtual {v9, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move/from16 v16, v4

    .line 400
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_auto_show:I

    .line 401
    invoke-virtual {v9, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 402
    sget v6, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_show_buffering:I

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v6, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 403
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_keep_content_on_player_reset:I

    move/from16 v18, v5

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->r:Z

    .line 404
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->r:Z

    .line 407
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 408
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 409
    sget v5, Lcom/google/android/exoplayer2/ui/c$l;->StyledPlayerView_use_sensor_rotation:I

    move/from16 v19, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->s:Z

    .line 410
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v9, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v16, v7

    move/from16 v17, v14

    move/from16 v7, v19

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v8

    move/from16 v8, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    throw v0

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x1388

    const/16 v17, 0x1

    .line 416
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-virtual {v15, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    .line 417
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDescendantFocusability(I)V

    .line 420
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_content_frame:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_3

    .line 2507
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 426
    :cond_3
    sget v8, Lcom/google/android/exoplayer2/ui/c$f;->exo_shutter:I

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c:Landroid/view/View;

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    .line 428
    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    const/4 v8, 0x3

    const/4 v11, 0x2

    if-eqz v4, :cond_8

    if-eqz v9, :cond_8

    .line 433
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v12, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eq v9, v11, :cond_7

    if-eq v9, v8, :cond_6

    const/4 v15, 0x4

    if-eq v9, v15, :cond_5

    .line 450
    new-instance v9, Landroid/view/SurfaceView;

    invoke-direct {v9, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    goto :goto_2

    .line 447
    :cond_5
    new-instance v9, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    goto :goto_2

    .line 441
    :cond_6
    new-instance v9, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/d;)V

    .line 443
    iget-boolean v15, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->s:Z

    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    .line 444
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    goto :goto_2

    .line 438
    :cond_7
    new-instance v9, Landroid/view/TextureView;

    invoke-direct {v9, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    .line 453
    :goto_2
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v12}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 456
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    .line 460
    :goto_3
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_ad_overlay:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j:Landroid/widget/FrameLayout;

    .line 463
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_overlay:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k:Landroid/widget/FrameLayout;

    .line 466
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_artwork:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    if-eqz v13, :cond_9

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    .line 467
    :goto_4
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->o:Z

    if-eqz v14, :cond_a

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v14}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->p:Landroid/graphics/drawable/Drawable;

    .line 473
    :cond_a
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_subtitles:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_b

    .line 475
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 476
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 480
    :cond_b
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_buffering:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g:Landroid/view/View;

    const/16 v9, 0x8

    if-eqz v4, :cond_c

    .line 482
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_c
    iput v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->q:I

    .line 487
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_error_message:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 489
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_d
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_controller:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 494
    sget v6, Lcom/google/android/exoplayer2/ui/c$f;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v4, :cond_e

    .line 496
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v9, 0x0

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 500
    new-instance v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v0, v12, v9, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 501
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_controller:I

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setId(I)V

    .line 502
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 504
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 505
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 508
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 510
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_10

    move/from16 v4, v16

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :goto_6
    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->v:I

    .line 511
    iput-boolean v10, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->y:Z

    .line 512
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->w:Z

    .line 513
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->x:Z

    if-eqz v17, :cond_11

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_7

    :cond_11
    const/4 v6, 0x0

    .line 514
    :goto_7
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m:Z

    if-eqz v0, :cond_14

    .line 3086
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    .line 3381
    iget v2, v0, Lcom/google/android/exoplayer2/ui/e;->j:I

    if-eq v2, v8, :cond_13

    iget v2, v0, Lcom/google/android/exoplayer2/ui/e;->j:I

    if-ne v2, v11, :cond_12

    goto :goto_8

    .line 3384
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->b()V

    .line 3385
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->g()V

    .line 517
    :cond_13
    :goto_8
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;)V

    .line 519
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;I)I
    .locals 0

    .line 268
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->z:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method protected static a(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1240
    instance-of p2, p2, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 1239
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/view/TextureView;I)V
    .locals 6

    .line 9512
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9513
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 9514
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    .line 9518
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 9521
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9522
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 9523
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 9525
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 9526
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 9524
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 9530
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 1305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 1308
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1309
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 8091
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 8921
    iget v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1311
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1313
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Z)V

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1418
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1421
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    .line 1422
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1388
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1389
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1392
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v6, :cond_0

    .line 1393
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 1394
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    goto :goto_1

    .line 1395
    :cond_0
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    if-eqz v6, :cond_2

    .line 1396
    check-cast v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 1397
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v0, :cond_1

    if-ne v5, v7, :cond_2

    .line 1403
    :cond_1
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1404
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eq v5, v7, :cond_3

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 1331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->v:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowTimeoutMs(I)V

    .line 1335
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a()V

    return-void
.end method

.method private b()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    .line 1273
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m:Z

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->z:I

    return p0
.end method

.method private c(Z)V
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_7

    .line 1344
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->H()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1352
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->r:Z

    if-nez p1, :cond_1

    .line 1354
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h()V

    .line 1357
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->I()Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object p1

    const/4 v1, 0x0

    .line 1358
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/g;->a:I

    if-ge v1, v2, :cond_3

    .line 1359
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac;->b(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 9047
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/g;->b:[Lcom/google/android/exoplayer2/trackselection/f;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 1362
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1368
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h()V

    .line 1370
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1371
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->J()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1372
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1376
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->p:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 1381
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g()V

    return-void

    .line 1345
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->r:Z

    if-nez p1, :cond_8

    .line 1346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g()V

    .line 1347
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h()V

    :cond_8
    return-void
.end method

.method private c()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "artworkView"
        }
        result = true
    .end annotation

    .line 1282
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->o:Z

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method private d()Z
    .locals 3

    .line 1290
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 7091
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1294
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    return v2

    .line 1296
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->y:Z

    if-eqz v0, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b()V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c:Landroid/view/View;

    return-object p0
.end method

.method private e()Z
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1322
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    .line 1323
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->w:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 1324
    invoke-interface {v2}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 1327
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ac;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ac;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 2

    .line 1431
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1432
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1433
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Z)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1438
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1439
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1444
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1445
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1447
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->q:I

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 1449
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1450
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1456
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->u:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1457
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->p()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1462
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->t:Lcom/google/android/exoplayer2/util/i;

    if-eqz v1, :cond_2

    .line 1463
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1464
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1467
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 1

    .line 10487
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->x:Z

    if-eqz v0, :cond_0

    .line 10488
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10490
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 9091
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1477
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->y:Z

    if-eqz v0, :cond_1

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1476
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1482
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1481
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1474
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->x:Z

    return p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 816
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 818
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 4091
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 820
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_5

    .line 4842
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    .line 822
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_7

    .line 827
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 829
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    goto :goto_5

    .line 825
    :cond_6
    :goto_4
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    goto :goto_2

    :cond_7
    :goto_5
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    return v1

    .line 1173
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->A:Z

    if-eqz p1, :cond_2

    .line 1174
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->A:Z

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->performClick()Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 1170
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->A:Z

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1194
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1185
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/g;)V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/g;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 929
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->w:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 939
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->x:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->y:Z

    .line 909
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->v:I

    .line 890
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 5091
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Lcom/google/android/exoplayer2/ui/e;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/e;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5858
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;)V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->n:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 955
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 6835
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 957
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->n:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    if-eqz p1, :cond_2

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 806
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->u:Ljava/lang/CharSequence;

    .line 807
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->p:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 686
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->p:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 687
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Z)V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/i<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->t:Lcom/google/android/exoplayer2/util/i;

    if-eq v0, p1, :cond_0

    .line 793
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->t:Lcom/google/android/exoplayer2/util/i;

    .line 794
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 748
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->r:Z

    if-eq v0, p1, :cond_0

    .line 749
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->r:Z

    const/4 p1, 0x0

    .line 750
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/ab;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/ab;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ac;)V
    .locals 7

    .line 568
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

    .line 570
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->m()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 569
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 576
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/ac;->b(Lcom/google/android/exoplayer2/ac$a;)V

    .line 577
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->k()Lcom/google/android/exoplayer2/ac$d;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 579
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ac$d;->b(Lcom/google/android/exoplayer2/video/k;)V

    .line 580
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    instance-of v6, v5, Landroid/view/TextureView;

    if-eqz v6, :cond_4

    .line 581
    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ac$d;->b(Landroid/view/TextureView;)V

    goto :goto_3

    .line 582
    :cond_4
    instance-of v6, v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v6, :cond_5

    .line 583
    check-cast v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/ac$d;)V

    goto :goto_3

    .line 584
    :cond_5
    instance-of v6, v5, Landroid/view/SurfaceView;

    if-eqz v6, :cond_6

    .line 585
    check-cast v5, Landroid/view/SurfaceView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ac$d;->b(Landroid/view/SurfaceView;)V

    .line 588
    :cond_6
    :goto_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->l()Lcom/google/android/exoplayer2/ac$c;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 590
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/ac$c;->b(Lcom/google/android/exoplayer2/text/j;)V

    .line 593
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_8

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 596
    :cond_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    .line 600
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i()V

    .line 601
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j()V

    .line 602
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Z)V

    if-eqz p1, :cond_f

    .line 604
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->k()Lcom/google/android/exoplayer2/ac$d;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 606
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_a

    .line 607
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Landroid/view/TextureView;)V

    goto :goto_4

    .line 608
    :cond_a
    instance-of v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v2, :cond_b

    .line 609
    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/ac$d;)V

    goto :goto_4

    .line 610
    :cond_b
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_c

    .line 611
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Landroid/view/SurfaceView;)V

    .line 613
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Lcom/google/android/exoplayer2/video/k;)V

    .line 615
    :cond_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->l()Lcom/google/android/exoplayer2/ac$c;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 617
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$c;->a(Lcom/google/android/exoplayer2/text/j;)V

    .line 618
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_e

    .line 619
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 622
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 623
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Z)V

    return-void

    .line 625
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 779
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->q:I

    if-eq v0, p1, :cond_0

    .line 780
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->q:I

    .line 781
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 666
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->o:Z

    if-eq v1, p1, :cond_2

    .line 667
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->o:Z

    .line 668
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 704
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 707
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m:Z

    .line 708
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    goto :goto_2

    .line 710
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_4

    .line 711
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b()V

    .line 712
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    .line 714
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k()V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 2

    .line 762
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->s:Z

    if-eq v0, p1, :cond_0

    .line 763
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->s:Z

    .line 764
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 765
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 631
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
