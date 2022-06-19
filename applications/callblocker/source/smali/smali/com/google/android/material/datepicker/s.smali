.class Lcom/google/android/material/datepicker/s;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a",
        "<",
        "Lcom/google/android/material/datepicker/s$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/datepicker/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/h",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/s;)Lcom/google/android/material/datepicker/h;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    return-object v0
.end method

.method private g(I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/material/datepicker/s$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/s$1;-><init>(Lcom/google/android/material/datepicker/s;I)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->d()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->f()I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/s;->c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/s$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/material/datepicker/s$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/s;->a(Lcom/google/android/material/datepicker/s$a;I)V

    return-void
.end method

.method public a(Lcom/google/android/material/datepicker/s$a;I)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/s;->f(I)I

    move-result v2

    .line 62
    iget-object v0, p1, Lcom/google/android/material/datepicker/s$a;->q:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_navigate_to_year_description:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p1, Lcom/google/android/material/datepicker/s$a;->q:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p1, Lcom/google/android/material/datepicker/s$a;->q:Landroid/widget/TextView;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->g()Lcom/google/android/material/datepicker/c;

    move-result-object v3

    .line 70
    invoke-static {}, Lcom/google/android/material/datepicker/r;->a()Ljava/util/Calendar;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, v3, Lcom/google/android/material/datepicker/c;->f:Lcom/google/android/material/datepicker/b;

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/h;->f()Lcom/google/android/material/datepicker/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/material/datepicker/d;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 75
    iget-object v0, v3, Lcom/google/android/material/datepicker/c;->e:Lcom/google/android/material/datepicker/b;

    :goto_2
    move-object v1, v0

    .line 77
    goto :goto_1

    .line 71
    :cond_0
    iget-object v0, v3, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p1, Lcom/google/android/material/datepicker/s$a;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    .line 79
    iget-object v0, p1, Lcom/google/android/material/datepicker/s$a;->q:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/google/android/material/datepicker/s;->g(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/s$a;
    .locals 3

    .prologue
    .line 52
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_year:I

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    new-instance v1, Lcom/google/android/material/datepicker/s$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/s$a;-><init>(Landroid/widget/TextView;)V

    return-object v1
.end method

.method e(I)I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->d()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/l;->b:I

    sub-int v0, p1, v0

    return v0
.end method

.method f(I)I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->a:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->d()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/l;->b:I

    add-int/2addr v0, p1

    return v0
.end method
