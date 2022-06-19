.class public Lcom/unknownphone/callblocker/a/a/a/e;
.super Landroidx/fragment/app/Fragment;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/a/a/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/f/a;

.field private ae:Z

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private b:Lcom/unknownphone/callblocker/a/a/a/e$a;

.field private c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private e:Landroidx/appcompat/widget/AppCompatImageButton;

.field private f:Landroidx/appcompat/widget/AppCompatEditText;

.field private g:Landroidx/recyclerview/widget/RecyclerView;

.field private h:Lcom/unknownphone/callblocker/a/a/a/b;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/unknownphone/callblocker/a/a/a/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/a/a/a/a;",
            ">;)",
            "Lcom/unknownphone/callblocker/a/a/a/d$a;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/unknownphone/callblocker/a/a/a/e$4;

    invoke-direct {v0, p0, p1}, Lcom/unknownphone/callblocker/a/a/a/e$4;-><init>(Lcom/unknownphone/callblocker/a/a/a/e;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/a/a/e;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/a/a/e;-><init>()V

    .line 58
    iput-object p0, v0, Lcom/unknownphone/callblocker/a/a/a/e;->a:Lcom/unknownphone/callblocker/f/a;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unknownphone/callblocker/a/a/a/e;->ae:Z

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/unknownphone/callblocker/a/a/a/e;->i:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/unknownphone/callblocker/a/a/a/e;->af:Ljava/util/List;

    .line 62
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/f/a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->a:Lcom/unknownphone/callblocker/f/a;

    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/e;->ah:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->b:Lcom/unknownphone/callblocker/a/a/a/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->b:Lcom/unknownphone/callblocker/a/a/a/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/e$a;->cancel(Z)Z

    .line 152
    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/a/a/a/e$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/e;->ag:Ljava/lang/String;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/a/e;->ah:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/unknownphone/callblocker/a/a/a/e;->ae:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/unknownphone/callblocker/a/a/a/e$a;-><init>(Lcom/unknownphone/callblocker/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->b:Lcom/unknownphone/callblocker/a/a/a/e$a;

    .line 153
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->b:Lcom/unknownphone/callblocker/a/a/a/e$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/e$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/a/a/a/e;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/unknownphone/callblocker/a/a/a/e;->ae:Z

    return p1
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->af:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/a/a/a/e;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/a/a/e;->a()V

    return-void
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/a/a/a/e;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/a/a/a/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->h:Lcom/unknownphone/callblocker/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public K()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->b:Lcom/unknownphone/callblocker/a/a/a/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->b:Lcom/unknownphone/callblocker/a/a/a/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/e$a;->cancel(Z)Z

    .line 143
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 144
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0c004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    const v0, 0x7f0901eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->c:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 69
    const v0, 0x7f090163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    const v0, 0x7f090088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 71
    const v0, 0x7f09017c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 72
    return-object v1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    new-instance v0, Lcom/unknownphone/callblocker/a/a/a/b;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/e;->af:Ljava/util/List;

    new-instance v2, Lcom/unknownphone/callblocker/a/a/a/e$1;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/a/a/a/e$1;-><init>(Lcom/unknownphone/callblocker/a/a/a/e;)V

    invoke-direct {v0, v1, v2}, Lcom/unknownphone/callblocker/a/a/a/b;-><init>(Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->h:Lcom/unknownphone/callblocker/a/a/a/b;

    .line 86
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 87
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 88
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/d;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/a/e;->af:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/unknownphone/callblocker/a/a/a/e;->a(Ljava/util/List;)Lcom/unknownphone/callblocker/a/a/a/d$a;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Lcom/unknownphone/callblocker/a/a/a/d;-><init>(IZLcom/unknownphone/callblocker/a/a/a/d$a;)V

    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 90
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 91
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 92
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/e;->h:Lcom/unknownphone/callblocker/a/a/a/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 96
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->ag:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->f:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/e$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/e$2;-><init>(Lcom/unknownphone/callblocker/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/e$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/a/a/a/e$3;-><init>(Lcom/unknownphone/callblocker/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/unknownphone/callblocker/a/a/a/e;->a()V

    .line 119
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
