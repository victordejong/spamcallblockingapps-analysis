.class final Lcom/google/android/material/datepicker/p;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/material/datepicker/p$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/f<",
            "*>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 2290
    iget-object v0, v0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 1290
    iget-object v0, v0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getYearSpan()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 7

    .line 31
    check-cast p1, Lcom/google/android/material/datepicker/p$a;

    .line 3106
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 3290
    iget-object v0, v0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3106
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    add-int/2addr v0, p2

    .line 3062
    iget-object p2, p1, Lcom/google/android/material/datepicker/p$a;->r:Landroid/widget/TextView;

    .line 3065
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_navigate_to_year_description:I

    .line 3066
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3067
    iget-object v1, p1, Lcom/google/android/material/datepicker/p$a;->r:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    iget-object v1, p1, Lcom/google/android/material/datepicker/p$a;->r:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3069
    iget-object p2, p0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 3324
    iget-object p2, p2, Lcom/google/android/material/datepicker/f;->i:Lcom/google/android/material/datepicker/b;

    .line 3070
    invoke-static {}, Lcom/google/android/material/datepicker/o;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 3071
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p2, Lcom/google/android/material/datepicker/b;->f:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcom/google/android/material/datepicker/b;->d:Lcom/google/android/material/datepicker/a;

    .line 3072
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 4320
    iget-object v4, v4, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/DateSelector;

    .line 3072
    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3073
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3074
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 3075
    iget-object v2, p2, Lcom/google/android/material/datepicker/b;->e:Lcom/google/android/material/datepicker/a;

    goto :goto_1

    .line 3078
    :cond_2
    iget-object p2, p1, Lcom/google/android/material/datepicker/p$a;->r:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Lcom/google/android/material/datepicker/a;->a(Landroid/widget/TextView;)V

    .line 3079
    iget-object p1, p1, Lcom/google/android/material/datepicker/p$a;->r:Landroid/widget/TextView;

    .line 5084
    new-instance p2, Lcom/google/android/material/datepicker/p$1;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/datepicker/p$1;-><init>(Lcom/google/android/material/datepicker/p;I)V

    .line 3079
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 6054
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/a$h;->mtrl_calendar_year:I

    const/4 v1, 0x0

    .line 6055
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6056
    new-instance p2, Lcom/google/android/material/datepicker/p$a;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/p$a;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method
