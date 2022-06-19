.class public Lcom/google/android/exoplayer2/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field public final a:Landroid/widget/FrameLayout;

.field private final b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

.field private final c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/ImageView;

.field private final g:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/TextView;

.field private final j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private final k:Landroid/widget/FrameLayout;

.field private l:Lcom/google/android/exoplayer2/ac;

.field private m:Z

.field private n:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

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

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 340
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 342
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/PlayerView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 345
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 346
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/view/View;

    .line 347
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    .line 348
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    .line 349
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 350
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Landroid/view/View;

    .line 351
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    .line 352
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 353
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Landroid/widget/FrameLayout;

    .line 354
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    .line 355
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 356
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2474
    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_edit_mode_logo:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2475
    sget v3, Lcom/google/android/exoplayer2/ui/c$b;->exo_edit_mode_background_color:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2479
    sget v3, Lcom/google/android/exoplayer2/ui/c$d;->exo_edit_mode_logo:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2480
    sget v3, Lcom/google/android/exoplayer2/ui/c$b;->exo_edit_mode_background_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 361
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 367
    :cond_1
    sget v4, Lcom/google/android/exoplayer2/ui/c$h;->exo_player_view:I

    const/4 v6, 0x1

    .line 378
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->s:Z

    const/16 v7, 0x1388

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView:[I

    invoke-virtual {v9, v2, v10, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 382
    :try_start_0
    sget v10, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 383
    sget v11, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 384
    sget v12, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 385
    sget v12, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_use_artwork:I

    invoke-virtual {v9, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 386
    sget v13, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_default_artwork:I

    .line 387
    invoke-virtual {v9, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 388
    sget v14, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_use_controller:I

    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 389
    sget v15, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_surface_type:I

    invoke-virtual {v9, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 390
    sget v5, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_resize_mode:I

    invoke-virtual {v9, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 391
    sget v8, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_show_timeout:I

    .line 392
    invoke-virtual {v9, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 393
    sget v8, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_hide_on_touch:I

    .line 394
    invoke-virtual {v9, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move/from16 v16, v4

    .line 395
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_auto_show:I

    invoke-virtual {v9, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 396
    sget v6, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_show_buffering:I

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v6, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 397
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_keep_content_on_player_reset:I

    move/from16 v18, v5

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Z

    .line 398
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Z

    .line 400
    sget v4, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 401
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 402
    sget v5, Lcom/google/android/exoplayer2/ui/c$l;->PlayerView_use_sensor_rotation:I

    move/from16 v19, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->s:Z

    .line 403
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
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

    .line 406
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

    .line 409
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-virtual {v15, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    .line 410
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDescendantFocusability(I)V

    .line 413
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_content_frame:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_3

    .line 2485
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 419
    :cond_3
    sget v8, Lcom/google/android/exoplayer2/ui/c$f;->exo_shutter:I

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/view/View;

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    .line 421
    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    if-eqz v4, :cond_8

    if-eqz v9, :cond_8

    .line 426
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v8, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v11, 0x2

    if-eq v9, v11, :cond_7

    const/4 v11, 0x3

    if-eq v9, v11, :cond_6

    const/4 v11, 0x4

    if-eq v9, v11, :cond_5

    .line 443
    new-instance v9, Landroid/view/SurfaceView;

    invoke-direct {v9, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    goto :goto_2

    .line 440
    :cond_5
    new-instance v9, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    goto :goto_2

    .line 434
    :cond_6
    new-instance v9, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/d;)V

    .line 436
    iget-boolean v11, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->s:Z

    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    .line 437
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    goto :goto_2

    .line 431
    :cond_7
    new-instance v9, Landroid/view/TextureView;

    invoke-direct {v9, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    .line 446
    :goto_2
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 449
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    .line 453
    :goto_3
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_ad_overlay:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Landroid/widget/FrameLayout;

    .line 456
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_overlay:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    .line 459
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_artwork:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    if-eqz v13, :cond_9

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    .line 460
    :goto_4
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    if-eqz v14, :cond_a

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v14}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Landroid/graphics/drawable/Drawable;

    .line 466
    :cond_a
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_subtitles:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_b

    .line 468
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 469
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 473
    :cond_b
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_buffering:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Landroid/view/View;

    const/16 v8, 0x8

    if-eqz v4, :cond_c

    .line 475
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_c
    iput v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->q:I

    .line 480
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_error_message:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 482
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :cond_d
    sget v4, Lcom/google/android/exoplayer2/ui/c$f;->exo_controller:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 487
    sget v6, Lcom/google/android/exoplayer2/ui/c$f;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v4, :cond_e

    .line 489
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v8, 0x0

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 493
    new-instance v4, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v0, v9, v8, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 494
    sget v0, Lcom/google/android/exoplayer2/ui/c$f;->exo_controller:I

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setId(I)V

    .line 495
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 497
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 498
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 499
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 501
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 503
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_10

    move/from16 v4, v16

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :goto_6
    iput v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->v:I

    .line 504
    iput-boolean v10, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->y:Z

    .line 505
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->w:Z

    .line 506
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->x:Z

    if-eqz v17, :cond_11

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_7

    :cond_11
    const/4 v6, 0x0

    .line 507
    :goto_7
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->k()V

    .line 510
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_12

    .line 511
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerView;I)I
    .locals 0

    .line 266
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->z:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method protected static a(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1222
    instance-of p2, p2, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 1221
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/view/TextureView;I)V
    .locals 6

    .line 4490
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4491
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 4492
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

    .line 4496
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 4499
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4500
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 4501
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 4503
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 4504
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 4502
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4508
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 1285
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 1288
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 3716
    iget v0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1290
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1292
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Z)V

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

    .line 1395
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1396
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1399
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    .line 1400
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1401
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

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

    .line 1366
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1367
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1370
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v6, :cond_0

    .line 1371
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 1372
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    goto :goto_1

    .line 1373
    :cond_0
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    if-eqz v6, :cond_2

    .line 1374
    check-cast v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 1375
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v0, :cond_1

    if-ne v5, v7, :cond_2

    .line 1381
    :cond_1
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1382
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eq v5, v7, :cond_3

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 1309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->v:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 1313
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a()V

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

    .line 1255
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlayerView;)I
    .locals 0

    .line 266
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->z:I

    return p0
.end method

.method private c(Z)V
    .locals 4

    .line 1321
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_7

    .line 1322
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->H()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1330
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Z

    if-nez p1, :cond_1

    .line 1332
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

    .line 1335
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->I()Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object p1

    const/4 v1, 0x0

    .line 1336
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/g;->a:I

    if-ge v1, v2, :cond_3

    .line 1337
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac;->b(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 4047
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/g;->b:[Lcom/google/android/exoplayer2/trackselection/f;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 1340
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->g()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

    .line 1348
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1349
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

    .line 1350
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1354
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 1359
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->g()V

    return-void

    .line 1323
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Z

    if-nez p1, :cond_8

    .line 1324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->g()V

    .line 1325
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

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

    .line 1264
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method private d()Z
    .locals 2

    .line 1272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1276
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    goto :goto_0

    .line 1277
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->y:Z

    if-eqz v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/view/View;

    return-object p0
.end method

.method private e()Z
    .locals 3

    .line 1298
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1301
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    .line 1302
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->w:Z

    if-eqz v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 1305
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ac;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

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

    .line 1409
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1410
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1417
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1422
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1423
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1425
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->n()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:I

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 1427
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1428
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1433
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1434
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1435
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->p()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1440
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Lcom/google/android/exoplayer2/util/i;

    if-eqz v1, :cond_2

    .line 1441
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1442
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1445
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 1

    .line 5465
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->x:Z

    if-eqz v0, :cond_0

    .line 5466
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5468
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 1453
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1455
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->y:Z

    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1454
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1460
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1459
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1452
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->x:Z

    return p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->k()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 807
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

    .line 809
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 811
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_5

    .line 2833
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    .line 813
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_7

    .line 818
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 820
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    goto :goto_5

    .line 816
    :cond_6
    :goto_4
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    goto :goto_2

    :cond_7
    :goto_5
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1146
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    return v1

    .line 1154
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->A:Z

    if-eqz p1, :cond_2

    .line 1155
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->A:Z

    .line 1156
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->performClick()Z

    return v0

    :cond_2
    return v1

    .line 1151
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->A:Z

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1173
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1176
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1167
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/g;)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/g;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 920
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->w:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 930
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->x:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->y:Z

    .line 900
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->k()V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->v:I

    .line 881
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2849
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 946
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 3604
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    if-eqz p1, :cond_2

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 797
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Ljava/lang/CharSequence;

    .line 798
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->j()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 677
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 678
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

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

    .line 783
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Lcom/google/android/exoplayer2/util/i;

    if-eq v0, p1, :cond_0

    .line 784
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Lcom/google/android/exoplayer2/util/i;

    .line 785
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->j()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 739
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Z

    if-eq v0, p1, :cond_0

    .line 740
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Z

    const/4 p1, 0x0

    .line 741
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/ab;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/ab;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ac;)V
    .locals 7

    .line 559
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

    .line 561
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

    .line 560
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 567
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/ac;->b(Lcom/google/android/exoplayer2/ac$a;)V

    .line 568
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->k()Lcom/google/android/exoplayer2/ac$d;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 570
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ac$d;->b(Lcom/google/android/exoplayer2/video/k;)V

    .line 571
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    instance-of v6, v5, Landroid/view/TextureView;

    if-eqz v6, :cond_4

    .line 572
    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ac$d;->b(Landroid/view/TextureView;)V

    goto :goto_3

    .line 573
    :cond_4
    instance-of v6, v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v6, :cond_5

    .line 574
    check-cast v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/ac$d;)V

    goto :goto_3

    .line 575
    :cond_5
    instance-of v6, v5, Landroid/view/SurfaceView;

    if-eqz v6, :cond_6

    .line 576
    check-cast v5, Landroid/view/SurfaceView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ac$d;->b(Landroid/view/SurfaceView;)V

    .line 579
    :cond_6
    :goto_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->l()Lcom/google/android/exoplayer2/ac$c;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 581
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/ac$c;->b(Lcom/google/android/exoplayer2/text/j;)V

    .line 584
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_8

    .line 585
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 587
    :cond_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    .line 588
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    .line 591
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->i()V

    .line 592
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->j()V

    .line 593
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    if-eqz p1, :cond_f

    .line 595
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->k()Lcom/google/android/exoplayer2/ac$d;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 597
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_a

    .line 598
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Landroid/view/TextureView;)V

    goto :goto_4

    .line 599
    :cond_a
    instance-of v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v2, :cond_b

    .line 600
    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/ac$d;)V

    goto :goto_4

    .line 601
    :cond_b
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_c

    .line 602
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Landroid/view/SurfaceView;)V

    .line 604
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Lcom/google/android/exoplayer2/video/k;)V

    .line 606
    :cond_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->l()Lcom/google/android/exoplayer2/ac$c;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 608
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$c;->a(Lcom/google/android/exoplayer2/text/j;)V

    .line 609
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_e

    .line 610
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 613
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 614
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    return-void

    .line 616
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 770
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:I

    if-eq v0, p1, :cond_0

    .line 771
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:I

    .line 772
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->i()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/widget/ImageView;

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

    .line 657
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    if-eq v1, p1, :cond_2

    .line 658
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    .line 659
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

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

    .line 695
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 698
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    .line 699
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 700
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    goto :goto_2

    .line 701
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_4

    .line 702
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    .line 703
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    .line 705
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->k()V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 2

    .line 753
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->s:Z

    if-eq v0, p1, :cond_0

    .line 754
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->s:Z

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 756
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 622
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
