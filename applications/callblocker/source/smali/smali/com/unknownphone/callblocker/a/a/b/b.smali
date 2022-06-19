.class public Lcom/unknownphone/callblocker/a/a/b/b;
.super Landroidx/fragment/app/Fragment;
.source "RecentCallsAltFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/a/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/f/a;

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/unknownphone/callblocker/a/a/b/a;

.field private ag:Landroidx/recyclerview/widget/RecyclerView;

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/lang/String;

.field private b:Lcom/unknownphone/callblocker/a/a/b/b$a;

.field private c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private e:Landroidx/appcompat/widget/AppCompatImageButton;

.field private f:Lcom/unknownphone/callblocker/d/b;

.field private g:Landroidx/appcompat/widget/AppCompatEditText;

.field private h:Landroidx/appcompat/widget/AppCompatButton;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/a/b/b;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/a/b/b;-><init>()V

    .line 68
    iput-object p0, v0, Lcom/unknownphone/callblocker/a/a/b/b;->a:Lcom/unknownphone/callblocker/f/a;

    .line 69
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->b:Lcom/unknownphone/callblocker/a/a/b/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->b:Lcom/unknownphone/callblocker/a/a/b/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/b/b$a;->cancel(Z)Z

    .line 178
    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/a/a/b/b$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b;->aj:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/unknownphone/callblocker/a/a/b/b$a;-><init>(Lcom/unknownphone/callblocker/a/a/b/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->b:Lcom/unknownphone/callblocker/a/a/b/b$a;

    .line 179
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->b:Lcom/unknownphone/callblocker/a/a/b/b$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/b/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/b/b;Lcom/unknownphone/callblocker/e/a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/e/a;)V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/b/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/a/a/b/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/unknownphone/callblocker/e/a;)V
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/unknownphone/callblocker/e/a;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 323
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ae:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 184
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 185
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ah:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->af:Lcom/unknownphone/callblocker/a/a/b/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/a;->d()V

    .line 189
    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/b/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 198
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 193
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    :cond_3
    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->af:Lcom/unknownphone/callblocker/a/a/b/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/a;->d()V

    .line 197
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x2

    :cond_5
    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/a/a/b/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->af:Lcom/unknownphone/callblocker/a/a/b/a;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 310
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->h:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->h:Landroidx/appcompat/widget/AppCompatButton;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s (%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f100054

    .line 314
    invoke-virtual {p0, v5}, Lcom/unknownphone/callblocker/a/a/b/b;->b(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ae:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 313
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/a/a/b/b;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/a/b/b;->d()V

    return-void
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/f/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->a:Lcom/unknownphone/callblocker/f/a;

    return-object v0
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/d/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->f:Lcom/unknownphone/callblocker/d/b;

    return-object v0
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/a/a/b/b;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ah:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/unknownphone/callblocker/a/a/b/b;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->g:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method


# virtual methods
.method public K()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->b:Lcom/unknownphone/callblocker/a/a/b/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->b:Lcom/unknownphone/callblocker/a/a/b/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/b/b$a;->cancel(Z)Z

    .line 169
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 170
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 74
    const v0, 0x7f0c0054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    const v0, 0x7f0901eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 76
    const v0, 0x7f090163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    const v0, 0x7f0901ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->h:Landroidx/appcompat/widget/AppCompatButton;

    .line 78
    const v0, 0x7f090088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 79
    const v0, 0x7f09017c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 80
    return-object v1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 88
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->aj:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->f:Lcom/unknownphone/callblocker/d/b;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ah:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->i:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ae:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/unknownphone/callblocker/a/a/b/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ai:Ljava/util/List;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ae:Ljava/util/List;

    new-instance v3, Lcom/unknownphone/callblocker/a/a/b/b$1;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/a/a/b/b$1;-><init>(Lcom/unknownphone/callblocker/a/a/b/b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/a/a/b/a;-><init>(Ljava/util/List;Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->af:Lcom/unknownphone/callblocker/a/a/b/a;

    .line 112
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 113
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 114
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 116
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 117
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->ag:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b;->af:Lcom/unknownphone/callblocker/a/a/b/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 120
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->g:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->g:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/b/b$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/b/b$2;-><init>(Lcom/unknownphone/callblocker/a/a/b/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/b/b$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/b/b$3;-><init>(Lcom/unknownphone/callblocker/a/a/b/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b;->h:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/b/b$4;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/b/b$4;-><init>(Lcom/unknownphone/callblocker/a/a/b/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/a/b/b;->a()V

    .line 159
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/a/b/b;->d()V

    .line 160
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
