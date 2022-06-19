.class public final Lcom/google/android/material/datepicker/h;
.super Lcom/google/android/material/datepicker/p;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/h$b;,
        Lcom/google/android/material/datepicker/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/p",
        "<TS;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;

.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;


# instance fields
.field private ae:Lcom/google/android/material/datepicker/h$a;

.field private af:Lcom/google/android/material/datepicker/c;

.field private ag:Landroidx/recyclerview/widget/RecyclerView;

.field private ah:Landroidx/recyclerview/widget/RecyclerView;

.field private ai:Landroid/view/View;

.field private aj:Landroid/view/View;

.field private f:I

.field private g:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d",
            "<TS;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/material/datepicker/a;

.field private i:Lcom/google/android/material/datepicker/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/h;->a:Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/h;->b:Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/h;->c:Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/material/datepicker/p;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static a(Lcom/google/android/material/datepicker/d;ILcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/d",
            "<TT;>;I",
            "Lcom/google/android/material/datepicker/a;",
            ")",
            "Lcom/google/android/material/datepicker/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/material/datepicker/h;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/h;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string/jumbo v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v2, "GRID_SELECTOR_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    const-string/jumbo v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    const-string/jumbo v2, "CURRENT_MONTH_KEY"

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/a;->d()Lcom/google/android/material/datepicker/l;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/h;->g(Landroid/os/Bundle;)V

    .line 104
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/l;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V
    .locals 5

    .prologue
    .line 365
    sget v0, Lcom/google/android/material/a$f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 366
    sget-object v1, Lcom/google/android/material/datepicker/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 367
    new-instance v1, Lcom/google/android/material/datepicker/h$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/h$6;-><init>(Lcom/google/android/material/datepicker/h;)V

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 382
    sget v1, Lcom/google/android/material/a$f;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 383
    sget-object v2, Lcom/google/android/material/datepicker/h;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 384
    sget v2, Lcom/google/android/material/a$f;->month_navigation_next:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 385
    sget-object v3, Lcom/google/android/material/datepicker/h;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 387
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/h;->ai:Landroid/view/View;

    .line 388
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/h;->aj:Landroid/view/View;

    .line 389
    sget-object v3, Lcom/google/android/material/datepicker/h$a;->a:Lcom/google/android/material/datepicker/h$a;

    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h$a;)V

    .line 390
    iget-object v3, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/l;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v3, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/datepicker/h$7;

    invoke-direct {v4, p0, p2, v0}, Lcom/google/android/material/datepicker/h$7;-><init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/n;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 418
    new-instance v3, Lcom/google/android/material/datepicker/h$8;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/h$8;-><init>(Lcom/google/android/material/datepicker/h;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v0, Lcom/google/android/material/datepicker/h$9;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/h$9;-><init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/n;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    new-instance v0, Lcom/google/android/material/datepicker/h$10;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/h$10;-><init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/n;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    return-void
.end method

.method private av()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/material/datepicker/h$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/h$5;-><init>(Lcom/google/android/material/datepicker/h;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->mtrl_calendar_day_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->h:Lcom/google/android/material/datepicker/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/d;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->g:Lcom/google/android/material/datepicker/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->af:Lcom/google/android/material/datepicker/c;

    return-object v0
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/h$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/h$2;-><init>(Lcom/google/android/material/datepicker/h;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/h;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->aj:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 132
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/h;->p()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/h;->f:I

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0, v7}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/h;->af:Lcom/google/android/material/datepicker/c;

    .line 134
    invoke-virtual {p1, v7}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->h:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/l;

    move-result-object v2

    .line 140
    invoke-static {v7}, Lcom/google/android/material/datepicker/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    sget v0, Lcom/google/android/material/a$h;->mtrl_calendar_vertical:I

    move v3, v6

    .line 148
    :goto_0
    invoke-virtual {v1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 149
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_days_of_week:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 150
    new-instance v1, Lcom/google/android/material/datepicker/h$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/h$1;-><init>(Lcom/google/android/material/datepicker/h;)V

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 161
    new-instance v1, Lcom/google/android/material/datepicker/g;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/g;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget v1, v2, Lcom/google/android/material/datepicker/l;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 163
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 165
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_months:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    new-instance v0, Lcom/google/android/material/datepicker/h$3;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/h;->p()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/h$3;-><init>(Lcom/google/android/material/datepicker/h;Landroid/content/Context;IZI)V

    .line 180
    iget-object v1, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lcom/google/android/material/datepicker/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 183
    new-instance v1, Lcom/google/android/material/datepicker/n;

    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->g:Lcom/google/android/material/datepicker/d;

    iget-object v2, p0, Lcom/google/android/material/datepicker/h;->h:Lcom/google/android/material/datepicker/a;

    new-instance v3, Lcom/google/android/material/datepicker/h$4;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/h$4;-><init>(Lcom/google/android/material/datepicker/h;)V

    invoke-direct {v1, v7, v0, v2, v3}, Lcom/google/android/material/datepicker/n;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/h$b;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 208
    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$g;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 209
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 212
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, v7, v2, v6, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/material/datepicker/s;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/h;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/h;->av()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 218
    :cond_0
    sget v0, Lcom/google/android/material/a$f;->month_navigation_fragment_toggle:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    invoke-direct {p0, v8, v1}, Lcom/google/android/material/datepicker/h;->a(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V

    .line 222
    :cond_1
    invoke-static {v7}, Lcom/google/android/material/datepicker/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Landroidx/recyclerview/widget/i;

    invoke-direct {v0}, Landroidx/recyclerview/widget/i;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/n;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 226
    return-object v8

    .line 144
    :cond_3
    sget v0, Lcom/google/android/material/a$h;->mtrl_calendar_horizontal:I

    move v3, v4

    .line 145
    goto/16 :goto_0
.end method

.method a()Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/p;->a(Landroid/os/Bundle;)V

    .line 119
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/h;->m()Landroid/os/Bundle;

    move-result-object p1

    .line 120
    :cond_0
    const-string/jumbo v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/h;->f:I

    .line 121
    const-string/jumbo v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d;

    iput-object v0, p0, Lcom/google/android/material/datepicker/h;->g:Lcom/google/android/material/datepicker/d;

    .line 122
    const-string/jumbo v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/h;->h:Lcom/google/android/material/datepicker/a;

    .line 123
    const-string/jumbo v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/l;

    iput-object v0, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    .line 124
    return-void
.end method

.method a(Lcom/google/android/material/datepicker/h$a;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 338
    iput-object p1, p0, Lcom/google/android/material/datepicker/h;->ae:Lcom/google/android/material/datepicker/h$a;

    .line 339
    sget-object v0, Lcom/google/android/material/datepicker/h$a;->b:Lcom/google/android/material/datepicker/h$a;

    if-ne p1, v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    .line 341
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ag:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/s;

    iget-object v2, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    iget v2, v2, Lcom/google/android/material/datepicker/l;->b:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/s;->e(I)I

    move-result v0

    .line 342
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e(I)V

    .line 344
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ai:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->aj:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    sget-object v0, Lcom/google/android/material/datepicker/h$a;->a:Lcom/google/android/material/datepicker/h$a;

    if-ne p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ai:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->aj:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/l;)V

    goto :goto_0
.end method

.method a(Lcom/google/android/material/datepicker/l;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/n;

    .line 300
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/n;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v4

    .line 301
    iget-object v3, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/n;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    sub-int v0, v4, v0

    .line 302
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_0

    move v3, v1

    .line 303
    :goto_0
    if-lez v0, :cond_1

    move v0, v1

    .line 304
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    .line 305
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v1, v4, -0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 307
    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/h;->e(I)V

    .line 314
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 302
    goto :goto_0

    :cond_1
    move v0, v2

    .line 303
    goto :goto_1

    .line 308
    :cond_2
    if-eqz v3, :cond_3

    .line 309
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v1, v4, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 310
    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/h;->e(I)V

    goto :goto_2

    .line 312
    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/h;->e(I)V

    goto :goto_2
.end method

.method as()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ae:Lcom/google/android/material/datepicker/h$a;

    sget-object v1, Lcom/google/android/material/datepicker/h$a;->b:Lcom/google/android/material/datepicker/h$a;

    if-ne v0, v1, :cond_1

    .line 357
    sget-object v0, Lcom/google/android/material/datepicker/h$a;->a:Lcom/google/android/material/datepicker/h$a;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h$a;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ae:Lcom/google/android/material/datepicker/h$a;

    sget-object v1, Lcom/google/android/material/datepicker/h$a;->a:Lcom/google/android/material/datepicker/h$a;

    if-ne v0, v1, :cond_0

    .line 359
    sget-object v0, Lcom/google/android/material/datepicker/h$a;->b:Lcom/google/android/material/datepicker/h$a;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h$a;)V

    goto :goto_0
.end method

.method at()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->ah:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method d()Lcom/google/android/material/datepicker/a;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->h:Lcom/google/android/material/datepicker/a;

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/p;->e(Landroid/os/Bundle;)V

    .line 110
    const-string/jumbo v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/h;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string/jumbo v0, "GRID_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/h;->g:Lcom/google/android/material/datepicker/d;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    const-string/jumbo v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/h;->h:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    const-string/jumbo v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/h;->i:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    return-void
.end method

.method public f()Lcom/google/android/material/datepicker/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/d",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->g:Lcom/google/android/material/datepicker/d;

    return-object v0
.end method

.method g()Lcom/google/android/material/datepicker/c;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->af:Lcom/google/android/material/datepicker/c;

    return-object v0
.end method
