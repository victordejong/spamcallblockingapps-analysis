.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$b;,
        Lcom/google/android/material/slider/BaseSlider$SliderState;,
        Lcom/google/android/material/slider/BaseSlider$a;,
        Lcom/google/android/material/slider/BaseSlider$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/BaseSlider<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Ljava/lang/Object<",
        "TS;>;T::",
        "Ljava/lang/Object<",
        "TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Ljava/lang/String; = "BaseSlider"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:Landroid/view/MotionEvent;

.field private F:Lcom/google/android/material/slider/a;

.field private G:Z

.field private H:F

.field private I:F

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private K:I

.field private L:I

.field private M:F

.field private N:[F

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Landroid/content/res/ColorStateList;

.field private U:Landroid/content/res/ColorStateList;

.field private V:Landroid/content/res/ColorStateList;

.field private W:Landroid/content/res/ColorStateList;

.field private aa:Landroid/content/res/ColorStateList;

.field private final ab:Lcom/google/android/material/k/h;

.field private ac:F

.field private ad:I

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Lcom/google/android/material/slider/BaseSlider$b;

.field private final j:Landroid/view/accessibility/AccessibilityManager;

.field private k:Lcom/google/android/material/slider/BaseSlider$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "TS;T",
            "L;",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/material/slider/BaseSlider$c;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/l/a;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private final s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 320
    sget v0, Lcom/google/android/material/a$b;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 325
    sget v4, Lcom/google/android/material/slider/BaseSlider;->a:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    .line 242
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->o:Ljava/util/List;

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->p:Z

    .line 265
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 272
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 274
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    const/4 v6, 0x0

    .line 275
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v7, 0x1

    .line 277
    iput-boolean v7, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    .line 280
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->R:Z

    .line 289
    new-instance v8, Lcom/google/android/material/k/h;

    invoke-direct {v8}, Lcom/google/android/material/k/h;-><init>()V

    iput-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    .line 292
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->ad:I

    .line 327
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    .line 330
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    .line 334
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 337
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    .line 338
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 339
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    .line 342
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    .line 345
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Landroid/graphics/Paint;

    .line 349
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 352
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3387
    sget v1, Lcom/google/android/material/a$d;->mtrl_slider_widget_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    .line 3389
    sget v1, Lcom/google/android/material/a$d;->mtrl_slider_track_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->t:I

    .line 3390
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    .line 3392
    sget v1, Lcom/google/android/material/a$d;->mtrl_slider_thumb_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->u:I

    .line 3394
    sget v1, Lcom/google/android/material/a$d;->mtrl_slider_track_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    .line 3396
    sget v1, Lcom/google/android/material/a$d;->mtrl_slider_label_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    .line 356
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/slider/BaseSlider$1;-><init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Lcom/google/android/material/slider/BaseSlider$c;

    .line 3400
    sget-object v2, Lcom/google/android/material/a$l;->Slider:[I

    new-array v5, p1, [I

    move-object v0, v9

    move-object v1, p2

    move v3, p3

    .line 3401
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3403
    sget p3, Lcom/google/android/material/a$l;->Slider_android_valueFrom:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 3404
    sget p3, Lcom/google/android/material/a$l;->Slider_android_valueTo:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    new-array p3, v7, [Ljava/lang/Float;

    .line 3405
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p3, p1

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 3406
    sget p3, Lcom/google/android/material/a$l;->Slider_android_stepSize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 3408
    sget p3, Lcom/google/android/material/a$l;->Slider_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3410
    sget v0, Lcom/google/android/material/a$l;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/a$l;->Slider_trackColorInactive:I

    :goto_0
    if-eqz p3, :cond_1

    .line 3412
    sget p3, Lcom/google/android/material/a$l;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/google/android/material/a$l;->Slider_trackColorActive:I

    .line 3416
    :goto_1
    invoke-static {v9, p2, v0}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 3417
    :cond_2
    sget v0, Lcom/google/android/material/a$c;->material_slider_inactive_track_color:I

    .line 3420
    invoke-static {v9, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3417
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 3423
    invoke-static {v9, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_3

    .line 3424
    :cond_3
    sget p3, Lcom/google/android/material/a$c;->material_slider_active_track_color:I

    .line 3427
    invoke-static {v9, p3}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3424
    :goto_3
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 3429
    sget p3, Lcom/google/android/material/a$l;->Slider_thumbColor:I

    .line 3430
    invoke-static {v9, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3431
    invoke-virtual {v8, p3}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 3433
    sget p3, Lcom/google/android/material/a$l;->Slider_thumbStrokeColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 3434
    sget p3, Lcom/google/android/material/a$l;->Slider_thumbStrokeColor:I

    .line 3435
    invoke-static {v9, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3434
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 3437
    :cond_4
    sget p3, Lcom/google/android/material/a$l;->Slider_thumbStrokeWidth:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 3439
    sget p3, Lcom/google/android/material/a$l;->Slider_haloColor:I

    .line 3440
    invoke-static {v9, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_5

    goto :goto_4

    .line 3441
    :cond_5
    sget p3, Lcom/google/android/material/a$c;->material_slider_halo_color:I

    .line 3444
    invoke-static {v9, p3}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3441
    :goto_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 3446
    sget p3, Lcom/google/android/material/a$l;->Slider_tickVisible:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    .line 3447
    sget p3, Lcom/google/android/material/a$l;->Slider_tickColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3448
    sget v0, Lcom/google/android/material/a$l;->Slider_tickColor:I

    goto :goto_5

    :cond_6
    sget v0, Lcom/google/android/material/a$l;->Slider_tickColorInactive:I

    :goto_5
    if-eqz p3, :cond_7

    .line 3450
    sget p3, Lcom/google/android/material/a$l;->Slider_tickColor:I

    goto :goto_6

    :cond_7
    sget p3, Lcom/google/android/material/a$l;->Slider_tickColorActive:I

    .line 3453
    :goto_6
    invoke-static {v9, p2, v0}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_7

    .line 3454
    :cond_8
    sget v0, Lcom/google/android/material/a$c;->material_slider_inactive_tick_marks_color:I

    .line 3457
    invoke-static {v9, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3454
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 3460
    invoke-static {v9, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_8

    .line 3461
    :cond_9
    sget p3, Lcom/google/android/material/a$c;->material_slider_active_tick_marks_color:I

    .line 3464
    invoke-static {v9, p3}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3461
    :goto_8
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 3467
    sget p3, Lcom/google/android/material/a$l;->Slider_thumbRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 3468
    sget p3, Lcom/google/android/material/a$l;->Slider_haloRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 3470
    sget p3, Lcom/google/android/material/a$l;->Slider_thumbElevation:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 3472
    sget p3, Lcom/google/android/material/a$l;->Slider_trackHeight:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 3474
    sget p3, Lcom/google/android/material/a$l;->Slider_labelBehavior:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    .line 3476
    sget p3, Lcom/google/android/material/a$l;->Slider_android_enabled:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_a

    .line 3477
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 3480
    :cond_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    invoke-virtual {p0, v7}, Lcom/google/android/material/slider/BaseSlider;->setFocusable(Z)V

    .line 372
    invoke-virtual {p0, v7}, Lcom/google/android/material/slider/BaseSlider;->setClickable(Z)V

    .line 375
    invoke-virtual {v8}, Lcom/google/android/material/k/h;->f()V

    .line 377
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    .line 379
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$b;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->i:Lcom/google/android/material/slider/BaseSlider$b;

    .line 380
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->j:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private static a(Landroid/animation/ValueAnimator;F)F
    .locals 1

    if-eqz p0, :cond_0

    .line 1905
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1907
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return p1
.end method

.method private a(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 2117
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private static a([FF)I
    .locals 0

    .line 1759
    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(Z)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    .line 1925
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->r:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    .line 1926
    :goto_1
    invoke-static {v3, v2}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/animation/ValueAnimator;F)F

    move-result v2

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 1929
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x53

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x75

    .line 1930
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 1931
    sget-object p1, Lcom/google/android/material/a/a;->e:Landroid/animation/TimeInterpolator;

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/google/android/material/a/a;->c:Landroid/animation/TimeInterpolator;

    :goto_3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1935
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$2;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/l/a;
    .locals 2

    .line 9486
    sget v0, Lcom/google/android/material/a$l;->Slider_labelStyle:I

    sget v1, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Tooltip:I

    .line 9490
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 9486
    invoke-static {p0, p1}, Lcom/google/android/material/l/a;->a(Landroid/content/Context;I)Lcom/google/android/material/l/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->g(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 1626
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1628
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v2, v2

    .line 1629
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result v1

    int-to-float v3, p2

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    int-to-float v1, p3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    .line 1628
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1635
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    .line 1636
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result v1

    int-to-float v3, p2

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    sub-int v1, p3, v1

    int-to-float v1, v1

    .line 1635
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1638
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/k/h;->draw(Landroid/graphics/Canvas;)V

    .line 1639
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/material/l/a;)V
    .locals 1

    .line 1429
    invoke-static {p0}, Lcom/google/android/material/internal/r;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/l/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/android/material/l/a;F)V
    .locals 3

    .line 2017
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->g(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/l/a;->a(Ljava/lang/CharSequence;)V

    .line 2019
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    .line 2021
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 2022
    invoke-virtual {p1}, Lcom/google/android/material/l/a;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    .line 2023
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->o()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 2024
    invoke-virtual {p1}, Lcom/google/android/material/l/a;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p1}, Lcom/google/android/material/l/a;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/material/l/a;->setBounds(IIII)V

    .line 2028
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2029
    invoke-static {p0}, Lcom/google/android/material/internal/r;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2030
    invoke-virtual {p1, p2}, Lcom/google/android/material/l/a;->setBounds(Landroid/graphics/Rect;)V

    .line 2032
    invoke-static {p0}, Lcom/google/android/material/internal/r;->e(Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/material/internal/q;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 695
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 701
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 707
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 708
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    const/4 p1, 0x0

    .line 710
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    .line 711
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    .line 712
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->l()V

    .line 713
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v()V

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void

    .line 696
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one value must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(F)Z
    .locals 4

    .line 520
    new-instance v0, Ljava/math/BigDecimal;

    .line 521
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 522
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 523
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 527
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(IF)Z
    .locals 5

    .line 1842
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1846
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->b(IF)F

    move-result p2

    .line 1848
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1849
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    .line 1851
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->c(I)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/slider/BaseSlider;IF)Z
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->a(IF)Z

    move-result p0

    return p0
.end method

.method private b(F)F
    .locals 2

    .line 1582
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 1583
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method private b(IF)F
    .locals 3

    .line 1857
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()F

    move-result v1

    .line 1858
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->ad:I

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->e(F)F

    move-result v1

    .line 1859
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    neg-float v1, v1

    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 1863
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_4

    .line 1864
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v1

    .line 1865
    :goto_1
    invoke-static {p2, p1, v0}, Landroidx/core/b/a;->a(FFF)F

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$b;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->i:Lcom/google/android/material/slider/BaseSlider$b;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 1493
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    .line 1496
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()V

    return-void
.end method

.method private b(Lcom/google/android/material/l/a;)V
    .locals 1

    .line 1447
    invoke-static {p0}, Lcom/google/android/material/internal/r;->e(Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1449
    invoke-interface {v0, p1}, Lcom/google/android/material/internal/q;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1450
    invoke-static {p0}, Lcom/google/android/material/internal/r;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/l/a;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private c(F)D
    .locals 5

    .line 1763
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1764
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v0

    mul-float p1, p1, v1

    .line 1765
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1

    :cond_0
    float-to-double v0, p1

    return-wide v0
.end method

.method private c(I)V
    .locals 2

    .line 2073
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2074
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    goto :goto_0

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->g(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/slider/BaseSlider;)F
    .locals 1

    const/16 v0, 0x14

    .line 190
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->f(I)F

    move-result p0

    return p0
.end method

.method private d(F)Z
    .locals 1

    .line 1837
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/BaseSlider;->a(IF)Z

    move-result p1

    return p1
.end method

.method private d(I)Z
    .locals 6

    .line 2230
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 2233
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    int-to-long v4, p1

    invoke-static {v1, v2, v4, v5}, Landroidx/core/b/a;->a(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2238
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2239
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 2241
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    .line 2242
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return v3
.end method

.method private e(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    .line 1872
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    sub-float v1, v0, v1

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    return p1
.end method

.method private e(I)Z
    .locals 1

    .line 2254
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int p1, p1

    .line 2258
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    move-result p1

    return p1
.end method

.method private f(F)F
    .locals 1

    .line 1894
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private f(I)F
    .locals 3

    .line 2291
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->x()F

    move-result p1

    .line 2292
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return p1

    :cond_0
    div-float/2addr v0, v1

    .line 2297
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    return v0
.end method

.method private g(F)Ljava/lang/String;
    .locals 3

    .line 2009
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->F:Lcom/google/android/material/slider/a;

    invoke-interface {p1}, Lcom/google/android/material/slider/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    const-string v0, "%.0f"

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2013
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(I)V
    .locals 2

    .line 2364
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/BaseSlider$a;

    if-nez v0, :cond_0

    .line 2365
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/BaseSlider$a;-><init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/BaseSlider$a;

    goto :goto_0

    .line 2367
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2369
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/BaseSlider$a;

    .line 9378
    iput p1, v0, Lcom/google/android/material/slider/BaseSlider$a;->a:I

    .line 2370
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/BaseSlider$a;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 8

    .line 542
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 543
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 551
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->a(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 555
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 556
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 557
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 558
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    const-string v1, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    .line 553
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v7, [Ljava/lang/Object;

    .line 547
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 548
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    .line 549
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    .line 545
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private k()V
    .locals 8

    .line 583
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    if-eqz v0, :cond_7

    .line 3502
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    cmpl-float v5, v0, v1

    if-gez v5, :cond_6

    cmpg-float v0, v1, v0

    if-lez v0, :cond_5

    .line 3531
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 3535
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 3536
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    .line 3537
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 3533
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->j()V

    .line 3564
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    cmpl-float v1, v0, v5

    if-eqz v1, :cond_4

    float-to-int v1, v0

    int-to-float v1, v1

    const-string v5, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 3570
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->b:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "stepSize"

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    .line 3574
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->b:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "valueFrom"

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :cond_3
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4

    .line 3578
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->b:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "valueTo"

    aput-object v6, v3, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_4
    iput-boolean v4, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    goto :goto_1

    .line 3511
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    .line 3513
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "valueTo(%s) must be greater than valueFrom(%s)"

    .line 3512
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3503
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 3505
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "valueFrom(%s) must be smaller than valueTo(%s)"

    .line 3504
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    return-void
.end method

.method private l()V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 720
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 721
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/l/a;

    .line 722
    invoke-static {p0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 723
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->b(Lcom/google/android/material/l/a;)V

    goto :goto_0

    .line 726
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 730
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 731
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Lcom/google/android/material/slider/BaseSlider$c;

    invoke-interface {v0}, Lcom/google/android/material/slider/BaseSlider$c;->a()Lcom/google/android/material/l/a;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-static {p0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/l/a;)V

    goto :goto_1

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    .line 740
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/l/a;

    int-to-float v3, v1

    .line 741
    invoke-virtual {v2, v3}, Lcom/google/android/material/l/a;->n(F)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private m()V
    .locals 6

    .line 1471
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    .line 1475
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->k()V

    .line 1477
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1479
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1480
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    .line 1481
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    .line 1484
    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    .line 1486
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    .line 1487
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->o()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private n()V
    .locals 6

    .line 1501
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1503
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1505
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->o()I

    move-result v2

    .line 1506
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-static {v0, v4, v5, v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method private o()I
    .locals 4

    .line 1513
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    .line 1514
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/l/a;

    invoke-virtual {v1}, Lcom/google/android/material/l/a;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    return v0
.end method

.method private p()[F
    .locals 6

    .line 1554
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1555
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1556
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result v1

    .line 1557
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result v0

    .line 1560
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    new-array v2, v5, [F

    aput v0, v2, v4

    aput v1, v2, v3

    return-object v2

    :cond_1
    new-array v2, v5, [F

    aput v1, v2, v4

    aput v0, v2, v3

    return-object v2
.end method

.method private q()Z
    .locals 2

    .line 1661
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1663
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private r()Z
    .locals 1

    .line 1833
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->s()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->d(F)Z

    move-result v0

    return v0
.end method

.method private s()F
    .locals 6

    .line 1884
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->ac:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->c(F)D

    move-result-wide v0

    .line 1887
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 1890
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    sub-float/2addr v2, v3

    float-to-double v4, v2

    mul-double v0, v0, v4

    float-to-double v2, v3

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private t()V
    .locals 2

    .line 1953
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1954
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->p:Z

    .line 1955
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->r:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 1956
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    .line 1957
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/slider/BaseSlider$3;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1967
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private u()Z
    .locals 5

    .line 2050
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2051
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2052
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    .line 2053
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 2054
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 2057
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    return v2
.end method

.method private v()V
    .locals 3

    .line 2064
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2065
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 2066
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .line 2083
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x()F
    .locals 2

    .line 2283
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 600
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    return v0
.end method

.method protected final a(I)V
    .locals 0

    .line 1876
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->ad:I

    return-void
.end method

.method final a(ILandroid/graphics/Rect;)V
    .locals 4

    .line 2467
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2468
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->o()I

    move-result p1

    .line 2470
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    sub-int v2, v0, v1

    sub-int v3, p1, v1

    add-int/2addr v0, v1

    add-int/2addr p1, v1

    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public b()F
    .locals 1

    .line 626
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    return v0
.end method

.method c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x0

    .line 808
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2348
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->i:Lcom/google/android/material/slider/BaseSlider$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 2355
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 2097
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2099
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->aa:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2100
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->W:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2101
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->V:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2102
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->U:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2103
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/l/a;

    .line 2104
    invoke-virtual {v1}, Lcom/google/android/material/l/a;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2105
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/l/a;->setState([I)Z

    goto :goto_0

    .line 2108
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2109
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->setState([I)Z

    .line 2111
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->T:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2112
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 813
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    return v0
.end method

.method public f()Z
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:Lcom/google/android/material/slider/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 11

    .line 1777
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 8819
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->ac:F

    .line 8820
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    .line 8823
    :cond_1
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    sub-float/2addr v3, v4

    mul-float v0, v0, v3

    add-float/2addr v0, v4

    .line 1782
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->f(F)F

    move-result v3

    const/4 v4, 0x0

    .line 1783
    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 1784
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x1

    .line 1785
    :goto_0
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1786
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1787
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->f(F)F

    move-result v8

    .line 1788
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-gt v9, v2, :cond_7

    .line 1792
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    goto :goto_1

    :cond_2
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 1795
    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_4

    .line 1797
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    goto :goto_3

    .line 1801
    :cond_4
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    sub-float/2addr v8, v3

    .line 1803
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    .line 1804
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    return v4

    :cond_5
    if-eqz v9, :cond_6

    .line 1810
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    :goto_3
    move v5, v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1815
    :cond_7
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    return v4
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2343
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final i()Z
    .locals 2

    .line 2218
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1421
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1423
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/l/a;

    .line 1424
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/l/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1434
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/BaseSlider$a;

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1438
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->p:Z

    .line 1439
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/l/a;

    .line 1440
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->b(Lcom/google/android/material/l/a;)V

    goto :goto_0

    .line 1443
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1519
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    if-eqz v0, :cond_0

    .line 1520
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->k()V

    .line 1523
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()V

    .line 1526
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1528
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->o()I

    move-result v0

    .line 1530
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    .line 7564
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->p()[F

    move-result-object v2

    .line 7565
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v4, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    int-to-float v7, v1

    mul-float v6, v6, v7

    add-float v9, v4, v6

    add-int v4, v3, v1

    int-to-float v4, v4

    cmpg-float v4, v9, v4

    if-gez v4, :cond_1

    int-to-float v12, v0

    add-int/2addr v3, v1

    int-to-float v11, v3

    .line 7567
    iget-object v13, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    move-object v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7571
    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v3, v1

    const/4 v4, 0x0

    aget v2, v2, v4

    mul-float v2, v2, v7

    add-float v9, v3, v2

    int-to-float v2, v1

    cmpl-float v2, v9, v2

    if-lez v2, :cond_2

    int-to-float v7, v1

    int-to-float v10, v0

    .line 7573
    iget-object v11, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1531
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1532
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    .line 7590
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->p()[F

    move-result-object v2

    .line 7591
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v6, v3

    aget v7, v2, v5

    int-to-float v1, v1

    mul-float v7, v7, v1

    add-float v11, v6, v7

    int-to-float v3, v3

    .line 7592
    aget v2, v2, v4

    mul-float v2, v2, v1

    add-float v9, v3, v2

    int-to-float v12, v0

    .line 7593
    iget-object v13, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    move-object v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7597
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    goto :goto_0

    .line 7601
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->p()[F

    move-result-object v1

    .line 7602
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    aget v6, v1, v4

    invoke-static {v3, v6}, Lcom/google/android/material/slider/BaseSlider;->a([FF)I

    move-result v3

    .line 7603
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    aget v1, v1, v5

    invoke-static {v6, v1}, Lcom/google/android/material/slider/BaseSlider;->a([FF)I

    move-result v1

    .line 7606
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    mul-int/lit8 v3, v3, 0x2

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v3, v7}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 7609
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v1, v3

    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 7616
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->N:[F

    array-length v6, v3

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v6, v7}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1537
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1538
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    .line 7645
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->q()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7646
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->b(F)F

    move-result v6

    int-to-float v1, v1

    mul-float v6, v6, v1

    add-float/2addr v3, v6

    float-to-int v1, v3

    .line 7647
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-ge v3, v6, :cond_7

    .line 7649
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    sub-int v6, v1, v3

    int-to-float v8, v6

    sub-int v6, v0, v3

    int-to-float v9, v6

    add-int v6, v1, v3

    int-to-float v10, v6

    add-int/2addr v3, v0

    int-to-float v11, v3

    sget-object v12, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_7
    int-to-float v1, v1

    int-to-float v3, v0

    .line 7656
    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1541
    :cond_8
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    .line 7972
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    if-eq v1, v2, :cond_d

    .line 7980
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->p:Z

    if-nez v1, :cond_9

    .line 7981
    iput-boolean v5, p0, Lcom/google/android/material/slider/BaseSlider;->p:Z

    .line 7982
    invoke-direct {p0, v5}, Lcom/google/android/material/slider/BaseSlider;->a(Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    .line 7983
    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->r:Landroid/animation/ValueAnimator;

    .line 7984
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 7987
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    .line 7989
    :goto_1
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 7990
    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    if-eq v3, v6, :cond_a

    .line 7995
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/l/a;

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/l/a;F)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7998
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 8005
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/l/a;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/l/a;F)V

    goto :goto_2

    .line 7999
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    .line 8001
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Not enough labels(%d) to display all the values(%d)"

    .line 8000
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1546
    :cond_d
    :goto_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 2303
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2305
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 2306
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    .line 2307
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->i:Lcom/google/android/material/slider/BaseSlider$b;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/slider/BaseSlider$b;->e(I)Z

    return-void

    :cond_0
    const/4 p1, 0x1

    const p3, 0x7fffffff

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    const/high16 v0, -0x80000000

    if-eq p2, p1, :cond_3

    const/16 p1, 0x11

    if-eq p2, p1, :cond_2

    const/16 p1, 0x42

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 9326
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->e(I)Z

    goto :goto_0

    .line 9320
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->e(I)Z

    goto :goto_0

    .line 9323
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    goto :goto_0

    .line 9317
    :cond_4
    invoke-direct {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    .line 2310
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->i:Lcom/google/android/material/slider/BaseSlider$b;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/slider/BaseSlider$b;->d(I)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 2127
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2128
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2133
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 2137
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    const/4 v3, 0x0

    const/16 v4, 0x46

    const/16 v5, 0x45

    const/16 v6, 0x51

    const/16 v7, 0x42

    const/16 v8, 0x3d

    const/4 v9, -0x1

    if-ne v0, v9, :cond_9

    if-eq p1, v8, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 9192
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->e(I)Z

    .line 9193
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9186
    :pswitch_1
    invoke-direct {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->e(I)Z

    .line 9187
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9189
    :cond_2
    invoke-direct {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    .line 9190
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9197
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    .line 9198
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9201
    :cond_4
    :pswitch_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 9202
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 9203
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9177
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9178
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 9181
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9182
    invoke-direct {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 9184
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    if-eqz v3, :cond_8

    .line 2139
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2142
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    or-int/2addr v0, v10

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x14

    .line 9264
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->f(I)F

    move-result v0

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->x()F

    move-result v0

    :goto_1
    const/16 v10, 0x15

    if-eq p1, v10, :cond_f

    const/16 v10, 0x16

    if-eq p1, v10, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v6, :cond_b

    goto :goto_3

    .line 9275
    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_c
    neg-float v0, v0

    .line 9271
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    .line 9269
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v3

    if-eqz v3, :cond_e

    neg-float v0, v0

    :cond_e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    .line 9267
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_2

    :cond_10
    neg-float v0, v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_12

    .line 2145
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->d(F)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2146
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    .line 2147
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    :cond_11
    return v2

    :cond_12
    const/16 v0, 0x17

    if-eq p1, v0, :cond_16

    if-eq p1, v8, :cond_13

    if-eq p1, v7, :cond_16

    .line 2171
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2153
    :cond_13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2154
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    move-result p1

    return p1

    .line 2157
    :cond_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2158
    invoke-direct {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->d(I)Z

    move-result p1

    return p1

    :cond_15
    return v1

    .line 2163
    :cond_16
    iput v9, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 2164
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    .line 2165
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return v2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2213
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:Z

    .line 2214
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1456
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    .line 1460
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/l/a;

    invoke-virtual {v0}, Lcom/google/android/material/l/a;->getIntrinsicHeight()I

    move-result v1

    :cond_0
    add-int/2addr p2, v1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1458
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1456
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2402
    check-cast p1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 2403
    invoke-virtual {p1}, Lcom/google/android/material/slider/BaseSlider$SliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2405
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 2406
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    .line 2407
    iget-object v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Ljava/util/ArrayList;)V

    .line 2408
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 2409
    iget-boolean p1, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    if-eqz p1, :cond_0

    .line 2410
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 2412
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2390
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2391
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 2392
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 2393
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 2394
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 2395
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 2396
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1466
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->b(I)V

    .line 1467
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1668
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1671
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1672
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->P:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->ac:F

    const/4 v3, 0x0

    .line 1673
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->ac:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1674
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->ac:F

    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto/16 :goto_1

    .line 1701
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    if-nez v2, :cond_3

    .line 1703
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->D:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    return v1

    .line 1706
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1707
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->w()V

    .line 1710
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1715
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    .line 1716
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r()Z

    .line 1717
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto/16 :goto_1

    .line 1721
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    .line 1723
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    .line 1724
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:Landroid/view/MotionEvent;

    .line 1725
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:Landroid/view/MotionEvent;

    .line 1726
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 1727
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1728
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->w()V

    .line 1732
    :cond_5
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1733
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r()Z

    .line 1734
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    .line 8090
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1737
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    .line 1738
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    goto :goto_1

    .line 1678
    :cond_7
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:F

    .line 1682
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->u()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1686
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1693
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 1694
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    .line 1695
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r()Z

    .line 1696
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->n()V

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1698
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->w()V

    .line 1745
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setPressed(Z)V

    .line 1747
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->E:Landroid/view/MotionEvent;

    return v3
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1413
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 802
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    .line 803
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->i:Lcom/google/android/material/slider/BaseSlider$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$b;->d(I)Z

    .line 804
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void

    .line 800
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHaloRadius(I)V
    .locals 7

    .line 1056
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1060
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    .line 1061
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1062
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->q()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    .line 1063
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    .line 6100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 6101
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    return-void

    .line 6105
    :cond_1
    :try_start_0
    const-class v1, Landroid/graphics/drawable/RippleDrawable;

    const-string v2, "setMaxRadius"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 6106
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 6107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 6109
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t set RippleDrawable radius"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1067
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1164
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->T:Landroid/content/res/ColorStateList;

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1166
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->q()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1167
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1172
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1173
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1

    .line 1099
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    if-eq v0, p1, :cond_0

    .line 1100
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/a;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->F:Lcom/google/android/material/slider/a;

    return-void
.end method

.method public setStepSize(F)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 785
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 786
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->M:F

    .line 787
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    .line 788
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    :cond_0
    return-void

    .line 778
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 781
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    .line 782
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    .line 783
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 779
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setThumbElevation(F)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->r(F)V

    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1

    .line 908
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 4

    .line 930
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    if-ne p1, v0, :cond_0

    return-void

    .line 934
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    .line 4494
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->u:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4495
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->t:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    .line 4496
    invoke-static {p0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4497
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->b(I)V

    .line 937
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    .line 938
    invoke-static {}, Lcom/google/android/material/k/m;->a()Lcom/google/android/material/k/m$a;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    int-to-float v2, v2

    .line 5098
    invoke-static {v0}, Lcom/google/android/material/k/i;->a(I)Lcom/google/android/material/k/d;

    move-result-object v3

    .line 5109
    invoke-virtual {v1, v3}, Lcom/google/android/material/k/m$a;->a(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object v1

    .line 5110
    invoke-virtual {v1, v3}, Lcom/google/android/material/k/m$a;->b(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object v1

    .line 5111
    invoke-virtual {v1, v3}, Lcom/google/android/material/k/m$a;->c(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object v1

    .line 5112
    invoke-virtual {v1, v3}, Lcom/google/android/material/k/m$a;->d(Lcom/google/android/material/k/d;)Lcom/google/android/material/k/m$a;

    move-result-object v1

    .line 5099
    invoke-virtual {v1, v2}, Lcom/google/android/material/k/m$a;->a(F)Lcom/google/android/material/k/m$a;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v1

    .line 937
    invoke-virtual {p1, v1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 939
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v0, v2, v1}, Lcom/google/android/material/k/h;->setBounds(IIII)V

    .line 941
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1

    .line 951
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->h(Landroid/content/res/ColorStateList;)V

    .line 965
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 979
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->n(F)V

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    .line 7317
    iget-object v0, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    .line 1194
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->ab:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->U:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1261
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:Landroid/content/res/ColorStateList;

    .line 1262
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1263
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1290
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->V:Landroid/content/res/ColorStateList;

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1292
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1233
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1234
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1

    .line 1312
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    if-eq v0, p1, :cond_0

    .line 1313
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    .line 1314
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->W:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1377
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->W:Landroid/content/res/ColorStateList;

    .line 1378
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    return-void
.end method

.method public setTrackHeight(I)V
    .locals 2

    .line 1135
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    if-eq v0, p1, :cond_0

    .line 1136
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    .line 7036
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7037
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7038
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7039
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->aa:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1406
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->aa:Landroid/content/res/ColorStateList;

    .line 1407
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1349
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1350
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    .line 614
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:F

    const/4 p1, 0x1

    .line 615
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    .line 616
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    .line 640
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->I:F

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Z

    .line 642
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    return-void
.end method

.method setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .locals 1

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 668
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Ljava/util/ArrayList;)V

    return-void
.end method
