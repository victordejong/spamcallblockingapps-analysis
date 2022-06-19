.class final Lcom/google/android/material/timepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$a;
.implements Lcom/google/android/material/timepicker/ClockHandView$b;
.implements Lcom/google/android/material/timepicker/TimePickerView$b;
.implements Lcom/google/android/material/timepicker/TimePickerView$c;
.implements Lcom/google/android/material/timepicker/e;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Lcom/google/android/material/timepicker/TimePickerView;

.field private e:Lcom/google/android/material/timepicker/TimeModel;

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "10"

    const-string v11, "11"

    .line 47
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/d;->a:[Ljava/lang/String;

    const-string v1, "00"

    const-string v2, "2"

    const-string v3, "4"

    const-string v4, "6"

    const-string v5, "8"

    const-string v6, "10"

    const-string v7, "12"

    const-string v8, "14"

    const-string v9, "16"

    const-string v10, "18"

    const-string v11, "20"

    const-string v12, "22"

    .line 50
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/d;->b:[Ljava/lang/String;

    const-string v1, "00"

    const-string v2, "5"

    const-string v3, "10"

    const-string v4, "15"

    const-string v5, "20"

    const-string v6, "25"

    const-string v7, "30"

    const-string v8, "35"

    const-string v9, "40"

    const-string v10, "45"

    const-string v11, "50"

    const-string v12, "55"

    .line 53
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/d;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/d;->h:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 68
    iput-object p2, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    .line 1074
    iget p1, p2, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-nez p1, :cond_0

    .line 1075
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 1233
    iget-object p1, p1, Lcom/google/android/material/timepicker/TimePickerView;->b:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 1078
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 2212
    iget-object p1, p1, Lcom/google/android/material/timepicker/TimePickerView;->a:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/timepicker/ClockHandView;->a(Lcom/google/android/material/timepicker/ClockHandView$b;)V

    .line 1079
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 2225
    iput-object p0, p1, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/timepicker/TimePickerView$c;

    .line 1080
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 3220
    iput-object p0, p1, Lcom/google/android/material/timepicker/TimePickerView;->c:Lcom/google/android/material/timepicker/TimePickerView$b;

    .line 1081
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 4216
    iget-object p1, p1, Lcom/google/android/material/timepicker/TimePickerView;->a:Lcom/google/android/material/timepicker/ClockHandView;

    .line 5213
    iput-object p0, p1, Lcom/google/android/material/timepicker/ClockHandView;->d:Lcom/google/android/material/timepicker/ClockHandView$a;

    .line 6210
    sget-object p1, Lcom/google/android/material/timepicker/d;->a:[Ljava/lang/String;

    const-string p2, "%d"

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/d;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 6211
    sget-object p1, Lcom/google/android/material/timepicker/d;->b:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/d;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 6212
    sget-object p1, Lcom/google/android/material/timepicker/d;->c:[Ljava/lang/String;

    const-string p2, "%02d"

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/d;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/d;->a()V

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget p2, p2, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-eq p2, p1, :cond_2

    .line 141
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.method private a(IZ)V
    .locals 4

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->a(Z)V

    .line 160
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 161
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/material/timepicker/d;->c:[Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->d()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_2

    sget v3, Lcom/google/android/material/a$j;->material_minute_suffix:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/google/android/material/a$j;->material_hour_suffix:I

    .line 161
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->a([Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/timepicker/d;->f:F

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/google/android/material/timepicker/d;->g:F

    :goto_3
    invoke-virtual {v1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->a(FZ)V

    .line 165
    iget-object p2, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView;->a(I)V

    .line 166
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p2, Lcom/google/android/material/timepicker/a;

    .line 167
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->material_hour_selection:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    .line 166
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->a(Landroidx/core/view/a;)V

    .line 168
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p2, Lcom/google/android/material/timepicker/a;

    .line 169
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->material_minute_selection:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    .line 168
    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->b(Landroidx/core/view/a;)V

    return-void
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 216
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()[Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/timepicker/d;->b:[Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/material/timepicker/d;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private f()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iget-object v2, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->a(III)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v0

    .line 89
    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->e()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/timepicker/d;->g:F

    .line 90
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/timepicker/d;->f:F

    .line 91
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/d;->a(IZ)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->f()V

    return-void
.end method

.method public final a(FZ)V
    .locals 4

    .line 115
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/d;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 120
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 122
    iget-object v2, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 124
    iget-object v2, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    add-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x6

    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 125
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 p1, p1, 0x6

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lcom/google/android/material/timepicker/d;->f:F

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 128
    iget-object v3, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    add-int/2addr p1, v2

    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->e()I

    move-result v2

    div-int/2addr p1, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    .line 129
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->e()I

    move-result v2

    mul-int p1, p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/d;->g:F

    :goto_0
    if-nez p2, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->f()V

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/d;->a(II)V

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/d;->a(IZ)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    return-void
.end method

.method public final b(FZ)V
    .locals 6

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/d;->h:Z

    .line 175
    iget-object v1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 176
    iget-object v2, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 177
    iget-object v3, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 180
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    iget p2, p0, Lcom/google/android/material/timepicker/d;->g:F

    invoke-virtual {p1, p2, v4}, Lcom/google/android/material/timepicker/TimePickerView;->a(FZ)V

    .line 183
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    .line 184
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p2}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 185
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/d;->a(IZ)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, 0xf

    .line 193
    div-int/lit8 p1, p1, 0x1e

    .line 194
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 195
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/d;->f:F

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    iget v0, p0, Lcom/google/android/material/timepicker/d;->f:F

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->a(FZ)V

    .line 199
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/d;->h:Z

    .line 200
    invoke-direct {p0}, Lcom/google/android/material/timepicker/d;->f()V

    .line 201
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/timepicker/d;->a(II)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->e:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/android/material/timepicker/d;->d:Lcom/google/android/material/timepicker/TimePickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    return-void
.end method
