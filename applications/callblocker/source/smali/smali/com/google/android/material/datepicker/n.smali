.class Lcom/google/android/material/datepicker/n;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a",
        "<",
        "Lcom/google/android/material/datepicker/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/datepicker/a;

.field private final b:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/material/datepicker/h$b;

.field private final d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/h$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/datepicker/d",
            "<*>;",
            "Lcom/google/android/material/datepicker/a;",
            "Lcom/google/android/material/datepicker/h$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 50
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    .line 51
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/a;->c()Lcom/google/android/material/datepicker/l;

    move-result-object v1

    .line 52
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/a;->d()Lcom/google/android/material/datepicker/l;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "firstPage cannot be after currentPage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    if-lez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "currentPage cannot be after lastPage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    sget v0, Lcom/google/android/material/datepicker/m;->a:I

    invoke-static {p1}, Lcom/google/android/material/datepicker/h;->b(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v1, v0

    .line 63
    invoke-static {p1}, Lcom/google/android/material/datepicker/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/material/datepicker/h;->b(Landroid/content/Context;)I

    move-result v0

    .line 65
    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/datepicker/n;->d:I

    .line 66
    iput-object p3, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    .line 67
    iput-object p2, p0, Lcom/google/android/material/datepicker/n;->b:Lcom/google/android/material/datepicker/d;

    .line 68
    iput-object p4, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/h$b;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/n;->a(Z)V

    .line 70
    return-void

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/n;)Lcom/google/android/material/datepicker/h$b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/h$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->e()I

    move-result v0

    return v0
.end method

.method a(Lcom/google/android/material/datepicker/l;)I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/l;->b(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/n;->c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/n$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/material/datepicker/n$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/n;->a(Lcom/google/android/material/datepicker/n$a;I)V

    return-void
.end method

.method public a(Lcom/google/android/material/datepicker/n$a;I)V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/datepicker/l;->b(I)Lcom/google/android/material/datepicker/l;

    move-result-object v1

    .line 107
    iget-object v0, p1, Lcom/google/android/material/datepicker/n$a;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p1, Lcom/google/android/material/datepicker/n$a;->r:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v2, Lcom/google/android/material/a$f;->month_grid:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/m;->notifyDataSetChanged()V

    .line 118
    :goto_0
    new-instance v1, Lcom/google/android/material/datepicker/n$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/datepicker/n$1;-><init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    return-void

    .line 113
    :cond_0
    new-instance v2, Lcom/google/android/material/datepicker/m;

    iget-object v3, p0, Lcom/google/android/material/datepicker/n;->b:Lcom/google/android/material/datepicker/d;

    iget-object v4, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;)V

    .line 114
    iget v1, v1, Lcom/google/android/material/datepicker/l;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNumColumns(I)V

    .line 115
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/l;->b(I)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/n$a;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 91
    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_month_labeled:I

    .line 94
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/datepicker/i;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v2, -0x1

    iget v3, p0, Lcom/google/android/material/datepicker/n;->d:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v1, Lcom/google/android/material/datepicker/n$a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/datepicker/n$a;-><init>(Landroid/widget/LinearLayout;Z)V

    move-object v0, v1

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/material/datepicker/n$a;

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/datepicker/n$a;-><init>(Landroid/widget/LinearLayout;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method e(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/n;->f(I)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f(I)Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/l;->b(I)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    return-object v0
.end method
