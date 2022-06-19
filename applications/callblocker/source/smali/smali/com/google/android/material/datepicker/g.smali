.class Lcom/google/android/material/datepicker/g;
.super Landroid/widget/BaseAdapter;
.source "DaysOfWeekAdapter.java"


# static fields
.field private static final d:I


# instance fields
.field private final a:Ljava/util/Calendar;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/google/android/material/datepicker/g;->d:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->a:Ljava/util/Calendar;

    .line 54
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->a:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/g;->b:I

    .line 55
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/g;->c:I

    .line 56
    return-void
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/material/datepicker/g;->c:I

    add-int/2addr v0, p1

    .line 101
    iget v1, p0, Lcom/google/android/material/datepicker/g;->b:I

    if-le v0, v1, :cond_0

    .line 102
    iget v1, p0, Lcom/google/android/material/datepicker/g;->b:I

    sub-int/2addr v0, v1

    .line 104
    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/material/datepicker/g;->b:I

    if-lt p1, v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/g;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/material/datepicker/g;->b:I

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/g;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    .line 82
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 83
    if-nez p2, :cond_0

    .line 84
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_day_of_week:I

    .line 86
    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->a:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/g;->b(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->a:Ljava/util/Calendar;

    sget v2, Lcom/google/android/material/datepicker/g;->d:I

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->mtrl_picker_day_of_week_column_header:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/material/datepicker/g;->a:Ljava/util/Calendar;

    const/4 v4, 0x2

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 92
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    return-object v0
.end method
