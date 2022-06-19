.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/TimePickerView$a;,
        Lcom/google/android/material/timepicker/TimePickerView$c;,
        Lcom/google/android/material/timepicker/TimePickerView$b;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/material/timepicker/ClockHandView;

.field final b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field c:Lcom/google/android/material/timepicker/TimePickerView$b;

.field d:Lcom/google/android/material/timepicker/TimePickerView$c;

.field e:Lcom/google/android/material/timepicker/TimePickerView$a;

.field private final f:Lcom/google/android/material/chip/Chip;

.field private final g:Lcom/google/android/material/chip/Chip;

.field private final h:Lcom/google/android/material/timepicker/ClockFaceView;

.field private final i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$1;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->i:Landroid/view/View$OnClickListener;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/a$h;->material_timepicker:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    sget p1, Lcom/google/android/material/a$f;->material_clock_face:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->h:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 102
    sget p1, Lcom/google/android/material/a$f;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 103
    new-instance p3, Lcom/google/android/material/timepicker/TimePickerView$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/TimePickerView$2;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-virtual {p1, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)V

    .line 115
    sget p1, Lcom/google/android/material/a$f;->material_minute_tv:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/chip/Chip;

    .line 116
    sget p3, Lcom/google/android/material/a$f;->material_hour_tv:I

    invoke-virtual {p0, p3}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/chip/Chip;

    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerView;->g:Lcom/google/android/material/chip/Chip;

    .line 117
    sget v0, Lcom/google/android/material/a$f;->material_clock_hand:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->a:Lcom/google/android/material/timepicker/ClockHandView;

    .line 1126
    new-instance v0, Landroid/view/GestureDetector;

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$3;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1141
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/timepicker/TimePickerView$4;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    .line 1153
    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1154
    invoke-virtual {p3, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1166
    sget v0, Lcom/google/android/material/a$f;->selection_type:I

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 1167
    sget v0, Lcom/google/android/material/a$f;->selection_type:I

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 1169
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    invoke-virtual {p3, p2}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$c;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/timepicker/TimePickerView$c;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 255
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 256
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 258
    :cond_1
    sget v1, Lcom/google/android/material/a$f;->material_clock_display:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 259
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$b;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->c:Lcom/google/android/material/timepicker/TimePickerView$b;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/timepicker/TimePickerView$a;

    return-object p0
.end method


# virtual methods
.method public final a(FZ)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->a:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->a(FZ)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->g:Lcom/google/android/material/chip/Chip;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    return-void
.end method

.method public final a(III)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    sget p1, Lcom/google/android/material/a$f;->material_clock_period_pm_button:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/android/material/a$f;->material_clock_period_am_button:I

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(I)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v1, v0, [Ljava/lang/Object;

    .line 199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "%02d"

    invoke-static {p1, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2, v1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->g:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroidx/core/view/a;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->g:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->a:Lcom/google/android/material/timepicker/ClockHandView;

    .line 1205
    iput-boolean p1, v0, Lcom/google/android/material/timepicker/ClockHandView;->a:Z

    return-void
.end method

.method public final a([Ljava/lang/String;I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->h:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->a([Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Landroidx/core/view/a;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 246
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 247
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->a()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->a()V

    :cond_0
    return-void
.end method
