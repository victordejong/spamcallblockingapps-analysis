.class public Lcom/allinone/callerid/b/a0/a;
.super Lcom/allinone/callerid/b/z/b;
.source "DialogWeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/a0/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/WeekInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/b/a0/a;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic F(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic G(Lcom/allinone/callerid/b/a0/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/b/a0/a;->Q(Z)V

    return-void
.end method

.method static synthetic H(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic I(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic J(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic K(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic L(Lcom/allinone/callerid/b/a0/a;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/a0/a;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic M(Lcom/allinone/callerid/b/a0/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/b/a0/a;->P()Z

    move-result p0

    return p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private P()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/WeekInfo;

    .line 4
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/WeekInfo;->getWeekId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/WeekInfo;->isSelect()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private Q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/WeekInfo;

    .line 4
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/b/a0/a;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/b/a0/a$b;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public O()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/WeekInfo;

    .line 4
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/WeekInfo;->getWeekId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/WeekInfo;->isSelect()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/allinone/callerid/b/a0/a$b;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/bean/WeekInfo;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->M(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/WeekInfo;->getWeek()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->O(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/b/a0/a$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/allinone/callerid/b/a0/a$a;-><init>(Lcom/allinone/callerid/b/a0/a;Lcom/allinone/callerid/bean/WeekInfo;Lcom/allinone/callerid/b/a0/a$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/WeekInfo;->isSelect()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/a0/a$b;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/b/a0/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
