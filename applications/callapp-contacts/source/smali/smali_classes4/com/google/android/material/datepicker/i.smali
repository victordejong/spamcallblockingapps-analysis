.class Lcom/google/android/material/datepicker/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/google/android/material/datepicker/Month;

.field final c:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/google/android/material/datepicker/b;

.field final f:Lcom/google/android/material/datepicker/CalendarConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/google/android/material/datepicker/o;->b()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/i;->a:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    .line 58
    iput-object p2, p0, Lcom/google/android/material/datepicker/i;->c:Lcom/google/android/material/datepicker/DateSelector;

    .line 59
    iput-object p3, p0, Lcom/google/android/material/datepicker/i;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 60
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Ljava/util/Collection;

    return-void
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p2, p0, Lcom/google/android/material/datepicker/i;->e:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lcom/google/android/material/datepicker/o;->a()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 178
    iget-object p2, p0, Lcom/google/android/material/datepicker/i;->e:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    .line 180
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/datepicker/i;->e:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object p2, p0, Lcom/google/android/material/datepicker/i;->e:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->g:Lcom/google/android/material/datepicker/a;

    .line 186
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/a;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(J)Z
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->c:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 191
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/o;->a(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/o;->a(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(I)I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method final a()I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final a(I)Ljava/lang/Long;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/i;->a()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/i;->c(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    .line 157
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/Month;->getDayOfMonth(J)I

    move-result v0

    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/i;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 162
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/i;->a(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method final b(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 2212
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 1212
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/i;->a(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 3106
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3199
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->e:Lcom/google/android/material/datepicker/b;

    if-nez v1, :cond_0

    .line 3200
    new-instance v1, Lcom/google/android/material/datepicker/b;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/i;->e:Lcom/google/android/material/datepicker/b;

    .line 3107
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 3109
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3110
    sget v0, Lcom/google/android/material/a$h;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 3212
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_6

    .line 3113
    iget-object p3, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    iget p3, p3, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    if-lt p2, p3, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 3119
    iget-object v2, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3120
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v3, p3, [Ljava/lang/Object;

    .line 3121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3122
    iget-object v2, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v2, p2}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v2

    .line 3123
    iget-object p2, p0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/Month;->year:I

    const/16 v5, 0x18

    if-ne p2, v4, :cond_4

    .line 4085
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 4089
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_3

    .line 4090
    invoke-static {p2}, Lcom/google/android/material/datepicker/o;->c(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4092
    :cond_3
    invoke-static {p2}, Lcom/google/android/material/datepicker/o;->g(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 3124
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4096
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 4100
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_5

    .line 4101
    invoke-static {p2}, Lcom/google/android/material/datepicker/o;->d(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 4103
    :cond_5
    invoke-static {p2}, Lcom/google/android/material/datepicker/o;->g(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 3126
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3128
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3129
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    :goto_3
    const/16 p2, 0x8

    .line 3114
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3132
    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/i;->a(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v0

    .line 3136
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/datepicker/i;->a(Landroid/widget/TextView;J)V

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
