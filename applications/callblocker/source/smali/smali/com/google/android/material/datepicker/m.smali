.class Lcom/google/android/material/datepicker/m;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/google/android/material/datepicker/l;

.field final c:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d",
            "<*>;"
        }
    .end annotation
.end field

.field d:Lcom/google/android/material/datepicker/c;

.field final e:Lcom/google/android/material/datepicker/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/m;->a:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/l;",
            "Lcom/google/android/material/datepicker/d",
            "<*>;",
            "Lcom/google/android/material/datepicker/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/a;

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->b()I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/m;->a(Landroid/content/Context;)V

    move-object v0, p2

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    if-nez p2, :cond_8

    .line 104
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_day:I

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v0

    sub-int v0, p1, v0

    .line 108
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v2, v2, Lcom/google/android/material/datepicker/l;->d:I

    if-lt v0, v2, :cond_1

    .line 109
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->a(I)Ljava/lang/Long;

    move-result-object v2

    .line 127
    if-nez v2, :cond_3

    .line 149
    :goto_2
    return-object v1

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 114
    iget-object v2, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/l;->a(I)J

    move-result-wide v2

    .line 117
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->b:I

    invoke-static {}, Lcom/google/android/material/datepicker/l;->a()Lcom/google/android/material/datepicker/l;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/l;->b:I

    if-ne v0, v4, :cond_2

    .line 118
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->a()Lcom/google/android/material/datepicker/a$b;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/google/android/material/datepicker/a$b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 133
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/r;->a(J)J

    move-result-wide v6

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/r;->a(J)J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->b:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    goto :goto_2

    .line 139
    :cond_5
    invoke-static {}, Lcom/google/android/material/datepicker/r;->a()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-nez v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    goto/16 :goto_2

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    goto/16 :goto_2

    .line 147
    :cond_7
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->g:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    goto/16 :goto_2

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(I)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/l;->a(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v1, v1, Lcom/google/android/material/datepicker/l;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->b()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method c(I)I
    .locals 2

    .prologue
    .line 194
    add-int/lit8 v0, p1, -0x1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method d(I)Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(I)Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->c:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(I)Z
    .locals 2

    .prologue
    .line 216
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v1, v1, Lcom/google/android/material/datepicker/l;->c:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->d:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->a(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->c:I

    div-int v0, p1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/m;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
