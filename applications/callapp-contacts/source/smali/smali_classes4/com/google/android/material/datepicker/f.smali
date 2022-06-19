.class public final Lcom/google/android/material/datepicker/f;
.super Lcom/google/android/material/datepicker/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/f$b;,
        Lcom/google/android/material/datepicker/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/l<",
        "TS;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;

.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;


# instance fields
.field e:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/android/material/datepicker/CalendarConstraints;

.field g:Lcom/google/android/material/datepicker/Month;

.field h:I

.field i:Lcom/google/android/material/datepicker/b;

.field private k:I

.field private l:Landroidx/recyclerview/widget/RecyclerView;

.field private m:Landroidx/recyclerview/widget/RecyclerView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 74
    sput-object v0, Lcom/google/android/material/datepicker/f;->a:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    .line 76
    sput-object v0, Lcom/google/android/material/datepicker/f;->b:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    .line 78
    sput-object v0, Lcom/google/android/material/datepicker/f;->c:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    .line 80
    sput-object v0, Lcom/google/android/material/datepicker/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/android/material/datepicker/l;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/a$d;->mtrl_calendar_day_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    return-object p1
.end method

.method public static a(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/f<",
            "TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/google/android/material/datepicker/f;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/f;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    .line 100
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    .line 101
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 102
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    const-string p1, "CURRENT_MONTH_KEY"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/f;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/DateSelector;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->i:Lcom/google/android/material/datepicker/b;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/f;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->o:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method final a()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method final a(I)V
    .locals 4

    .line 339
    iput p1, p0, Lcom/google/android/material/datepicker/f;->h:I

    .line 340
    sget v0, Lcom/google/android/material/datepicker/f$a;->b:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 341
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 342
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 344
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/p;

    iget-object v3, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/p;->a(I)I

    move-result v0

    .line 343
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->d(I)V

    .line 345
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->n:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->o:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 347
    :cond_0
    sget v0, Lcom/google/android/material/datepicker/f$a;->a:I

    if-ne p1, v0, :cond_1

    .line 348
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/f;->a(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/j;

    .line 301
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/j;->a(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    .line 302
    iget-object v2, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/j;->a(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    sub-int v0, v1, v0

    .line 303
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 305
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 307
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 310
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    .line 1450
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/google/android/material/datepicker/f$2;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/f$2;-><init>(Lcom/google/android/material/datepicker/f;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/material/datepicker/k;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/k<",
            "TS;>;)Z"
        }
    .end annotation

    .line 466
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/k;)Z

    move-result p1

    return p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/l;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/f;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/f;->k:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 133
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/f;->k:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 134
    new-instance v0, Lcom/google/android/material/datepicker/b;

    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/f;->i:Lcom/google/android/material/datepicker/b;

    .line 135
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 141
    invoke-static {p3}, Lcom/google/android/material/datepicker/g;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 142
    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_vertical:I

    const/4 v9, 0x1

    goto :goto_0

    .line 145
    :cond_0
    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_horizontal:I

    const/4 v9, 0x0

    .line 149
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 150
    sget p2, Lcom/google/android/material/a$f;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 151
    new-instance v1, Lcom/google/android/material/datepicker/f$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/f$1;-><init>(Lcom/google/android/material/datepicker/f;)V

    invoke-static {p2, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    .line 162
    new-instance v1, Lcom/google/android/material/datepicker/e;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/e;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 164
    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 166
    sget p2, Lcom/google/android/material/a$f;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    new-instance p2, Lcom/google/android/material/datepicker/f$3;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/f;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/f$3;-><init>(Lcom/google/android/material/datepicker/f;Landroid/content/Context;IZI)V

    .line 181
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 182
    iget-object p2, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Lcom/google/android/material/datepicker/f;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 184
    new-instance p2, Lcom/google/android/material/datepicker/j;

    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, Lcom/google/android/material/datepicker/f$4;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/f$4;-><init>(Lcom/google/android/material/datepicker/f;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/j;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/f$b;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 209
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$g;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 210
    sget v1, Lcom/google/android/material/a$f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 213
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/p;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/p;-><init>(Lcom/google/android/material/datepicker/f;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 1232
    new-instance v1, Lcom/google/android/material/datepicker/f$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/f$5;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 216
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 219
    :cond_1
    sget v0, Lcom/google/android/material/a$f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1366
    sget v0, Lcom/google/android/material/a$f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 1367
    sget-object v1, Lcom/google/android/material/datepicker/f;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 1368
    new-instance v1, Lcom/google/android/material/datepicker/f$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/f$6;-><init>(Lcom/google/android/material/datepicker/f;)V

    invoke-static {v0, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    .line 1383
    sget v1, Lcom/google/android/material/a$f;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 1384
    sget-object v2, Lcom/google/android/material/datepicker/f;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 1385
    sget v2, Lcom/google/android/material/a$f;->month_navigation_next:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 1386
    sget-object v3, Lcom/google/android/material/datepicker/f;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 1388
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/f;->n:Landroid/view/View;

    .line 1389
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/f;->o:Landroid/view/View;

    .line 1390
    sget v3, Lcom/google/android/material/datepicker/f$a;->a:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/f;->a(I)V

    .line 1391
    iget-object v3, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/datepicker/Month;->getLongName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object v3, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/datepicker/f$7;

    invoke-direct {v4, p0, p2, v0}, Lcom/google/android/material/datepicker/f$7;-><init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/j;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 1419
    new-instance v3, Lcom/google/android/material/datepicker/f$8;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/f$8;-><init>(Lcom/google/android/material/datepicker/f;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    new-instance v0, Lcom/google/android/material/datepicker/f$9;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/f$9;-><init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/j;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    new-instance v0, Lcom/google/android/material/datepicker/f$10;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/f$10;-><init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/j;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/g;->a(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 224
    new-instance p3, Landroidx/recyclerview/widget/k;

    invoke-direct {p3}, Landroidx/recyclerview/widget/k;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 226
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/f;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/j;->a(Lcom/google/android/material/datepicker/Month;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    return-object p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/l;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget v0, p0, Lcom/google/android/material/datepicker/f;->k:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/DateSelector;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
