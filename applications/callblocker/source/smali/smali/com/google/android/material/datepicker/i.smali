.class public final Lcom/google/android/material/datepicker/i;
.super Landroidx/fragment/app/c;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/c;"
    }
.end annotation


# static fields
.field static final ae:Ljava/lang/Object;

.field static final af:Ljava/lang/Object;

.field static final ag:Ljava/lang/Object;


# instance fields
.field private final ah:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/datepicker/j",
            "<-TS;>;>;"
        }
    .end annotation
.end field

.field private final ai:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final aj:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private al:I

.field private am:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d",
            "<TS;>;"
        }
    .end annotation
.end field

.field private an:Lcom/google/android/material/datepicker/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/p",
            "<TS;>;"
        }
    .end annotation
.end field

.field private ao:Lcom/google/android/material/datepicker/a;

.field private ap:Lcom/google/android/material/datepicker/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/h",
            "<TS;>;"
        }
    .end annotation
.end field

.field private aq:I

.field private ar:Ljava/lang/CharSequence;

.field private as:Z

.field private at:Landroid/widget/TextView;

.field private au:Lcom/google/android/material/internal/CheckableImageButton;

.field private av:Lcom/google/android/material/q/g;

.field private aw:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "CONFIRM_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/i;->ae:Ljava/lang/Object;

    .line 65
    const-string/jumbo v0, "CANCEL_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/i;->af:Ljava/lang/Object;

    .line 66
    const-string/jumbo v0, "TOGGLE_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/i;->ag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->ah:Ljava/util/LinkedHashSet;

    .line 91
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->ai:Ljava/util/LinkedHashSet;

    .line 93
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->aj:Ljava/util/LinkedHashSet;

    .line 95
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->ak:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/i;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->ah:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/i;Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/i;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method private a(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    .line 359
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 363
    return-void

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static as()J
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/google/android/material/datepicker/l;->a()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/l;->e:J

    return-wide v0
.end method

.method private av()V
    .locals 5

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->at()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->at:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/a$j;->mtrl_picker_announce_current_selection:I

    .line 307
    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/i;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->at:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method

.method private aw()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->q()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/i;->c(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/i;->ao:Lcom/google/android/material/datepicker/a;

    .line 313
    invoke-static {v0, v1, v2}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/d;ILcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->ap:Lcom/google/android/material/datepicker/h;

    .line 315
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    .line 316
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->ao:Lcom/google/android/material/datepicker/a;

    .line 317
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->an:Lcom/google/android/material/datepicker/p;

    .line 319
    invoke-direct {p0}, Lcom/google/android/material/datepicker/i;->av()V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->x()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    .line 322
    sget v1, Lcom/google/android/material/a$f;->mtrl_calendar_frame:I

    iget-object v2, p0, Lcom/google/android/material/datepicker/i;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/o;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 323
    invoke-virtual {v0}, Landroidx/fragment/app/o;->d()V

    .line 325
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->an:Lcom/google/android/material/datepicker/p;

    new-instance v1, Lcom/google/android/material/datepicker/i$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/i$3;-><init>(Lcom/google/android/material/datepicker/i;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/p;->a(Lcom/google/android/material/datepicker/o;)Z

    .line 337
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->ap:Lcom/google/android/material/datepicker/h;

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/i;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->ai:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    sget v0, Lcom/google/android/material/a$b;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/h;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {p0, v0, v1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 381
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101020d

    aput v2, v1, v3

    .line 382
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 384
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    return v1
.end method

.method private c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/material/datepicker/i;->al:I

    if-eqz v0, :cond_0

    .line 154
    iget v0, p0, Lcom/google/android/material/datepicker/i;->al:I

    .line 156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/datepicker/d;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/i;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/material/datepicker/i;->av()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/i;)Lcom/google/android/material/datepicker/d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v1, Lcom/google/android/material/datepicker/i;->ag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setTag(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lcom/google/android/material/datepicker/i;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/i;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lcom/google/android/material/datepicker/i$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/i$4;-><init>(Lcom/google/android/material/datepicker/i;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    return-void
.end method

.method private static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 369
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    sget v2, Lcom/google/android/material/a$e;->ic_calendar_black_24dp:I

    .line 371
    invoke-static {p0, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 372
    new-array v1, v3, [I

    sget v2, Lcom/google/android/material/a$e;->ic_edit_black_24dp:I

    .line 373
    invoke-static {p0, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 374
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/material/datepicker/i;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->aw:Landroid/widget/Button;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 390
    sget v1, Lcom/google/android/material/a$d;->mtrl_calendar_navigation_height:I

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/google/android/material/a$d;->mtrl_calendar_navigation_top_padding:I

    .line 392
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/android/material/a$d;->mtrl_calendar_navigation_bottom_padding:I

    .line 393
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 394
    sget v2, Lcom/google/android/material/a$d;->mtrl_calendar_days_of_week_height:I

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 396
    sget v3, Lcom/google/android/material/datepicker/m;->a:I

    sget v4, Lcom/google/android/material/a$d;->mtrl_calendar_day_height:I

    .line 398
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    sget v4, Lcom/google/android/material/datepicker/m;->a:I

    add-int/lit8 v4, v4, -0x1

    sget v5, Lcom/google/android/material/a$d;->mtrl_calendar_month_vertical_padding:I

    .line 400
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 401
    sget v4, Lcom/google/android/material/a$d;->mtrl_calendar_bottom_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 402
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/i;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 407
    sget v1, Lcom/google/android/material/a$d;->mtrl_calendar_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 408
    invoke-static {}, Lcom/google/android/material/datepicker/l;->a()Lcom/google/android/material/datepicker/l;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/datepicker/l;->c:I

    .line 409
    sget v3, Lcom/google/android/material/a$d;->mtrl_calendar_day_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 410
    sget v4, Lcom/google/android/material/a$d;->mtrl_calendar_month_horizontal_padding:I

    .line 411
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 412
    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/i;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/material/datepicker/i;->aw()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 186
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/i;->as:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/a$h;->mtrl_picker_fullscreen:I

    .line 187
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/i;->as:Z

    if-eqz v0, :cond_1

    .line 191
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_frame:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    invoke-static {v2}, Lcom/google/android/material/datepicker/i;->g(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :goto_1
    sget v0, Lcom/google/android/material/a$f;->mtrl_picker_header_selection_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->at:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->at:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/core/h/u;->d(Landroid/view/View;I)V

    .line 205
    sget v0, Lcom/google/android/material/a$f;->mtrl_picker_header_toggle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->au:Lcom/google/android/material/internal/CheckableImageButton;

    .line 206
    sget v0, Lcom/google/android/material/a$f;->mtrl_picker_title_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/google/android/material/datepicker/i;->ar:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/google/android/material/datepicker/i;->ar:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/material/datepicker/i;->d(Landroid/content/Context;)V

    .line 214
    sget v0, Lcom/google/android/material/a$f;->confirm_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->aw:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->aw:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->aw:Landroid/widget/Button;

    sget-object v2, Lcom/google/android/material/datepicker/i;->ae:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->aw:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/material/datepicker/i$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/i$1;-><init>(Lcom/google/android/material/datepicker/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    sget v0, Lcom/google/android/material/a$f;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    sget-object v2, Lcom/google/android/material/datepicker/i;->af:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 235
    new-instance v2, Lcom/google/android/material/datepicker/i$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/i$2;-><init>(Lcom/google/android/material/datepicker/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-object v1

    .line 186
    :cond_0
    sget v0, Lcom/google/android/material/a$h;->mtrl_picker_dialog:I

    goto/16 :goto_0

    .line 195
    :cond_1
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_main_pane:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_frame:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 197
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    invoke-static {v2}, Lcom/google/android/material/datepicker/i;->g(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/i;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_1

    .line 210
    :cond_2
    iget v3, p0, Lcom/google/android/material/datepicker/i;->aq:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->aw:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/os/Bundle;)V

    .line 144
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->m()Landroid/os/Bundle;

    move-result-object p1

    .line 145
    :cond_0
    const-string/jumbo v0, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/i;->al:I

    .line 146
    const-string/jumbo v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d;

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    .line 147
    const-string/jumbo v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->ao:Lcom/google/android/material/datepicker/a;

    .line 148
    const-string/jumbo v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/i;->aq:I

    .line 149
    const-string/jumbo v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/i;->ar:Ljava/lang/CharSequence;

    .line 150
    return-void
.end method

.method public at()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->p()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final au()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 162
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->q()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->q()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/material/datepicker/i;->c(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 163
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/google/android/material/datepicker/i;->b(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/datepicker/i;->as:Z

    .line 165
    sget v2, Lcom/google/android/material/a$b;->colorSurface:I

    const-class v3, Lcom/google/android/material/datepicker/i;

    .line 167
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v1, v2, v3}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 168
    new-instance v3, Lcom/google/android/material/q/g;

    const/4 v4, 0x0

    sget v5, Lcom/google/android/material/a$b;->materialCalendarStyle:I

    sget v6, Lcom/google/android/material/a$k;->Widget_MaterialComponents_MaterialCalendar:I

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/google/android/material/q/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/i;->av:Lcom/google/android/material/q/g;

    .line 174
    iget-object v3, p0, Lcom/google/android/material/datepicker/i;->av:Lcom/google/android/material/q/g;

    invoke-virtual {v3, v1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->av:Lcom/google/android/material/q/g;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->av:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/q/g;->r(F)V

    .line 177
    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->e(Landroid/os/Bundle;)V

    .line 128
    const-string/jumbo v0, "OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/datepicker/i;->al:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string/jumbo v0, "DATE_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->am:Lcom/google/android/material/datepicker/d;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    new-instance v0, Lcom/google/android/material/datepicker/a$a;

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->ao:Lcom/google/android/material/datepicker/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/a$a;-><init>(Lcom/google/android/material/datepicker/a;)V

    .line 133
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->ap:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/h;->a()Lcom/google/android/material/datepicker/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->ap:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/h;->a()Lcom/google/android/material/datepicker/l;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/material/datepicker/l;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/datepicker/a$a;->a(J)Lcom/google/android/material/datepicker/a$a;

    .line 136
    :cond_0
    const-string/jumbo v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a$a;->a()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    const-string/jumbo v0, "TITLE_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/i;->aq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string/jumbo v0, "TITLE_TEXT_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->ar:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public i()V
    .locals 8

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 250
    invoke-super {p0}, Landroidx/fragment/app/c;->i()V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->f()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 253
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/i;->as:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v6, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 255
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->av:Lcom/google/android/material/q/g;

    invoke-virtual {v6, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/i;->aw()V

    .line 267
    return-void

    .line 257
    :cond_0
    invoke-virtual {v6, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->u()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 260
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->av:Lcom/google/android/material/q/g;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/h/a;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->f()Landroid/app/Dialog;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/google/android/material/h/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->au()V

    .line 272
    invoke-super {p0}, Landroidx/fragment/app/c;->j()V

    .line 273
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->aj:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    .line 278
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCancel(Landroid/content/DialogInterface;)V

    .line 281
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->ak:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .line 286
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->G()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 289
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 293
    return-void
.end method
