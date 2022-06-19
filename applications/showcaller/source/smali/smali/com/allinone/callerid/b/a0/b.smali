.class public Lcom/allinone/callerid/b/a0/b;
.super Lcom/allinone/callerid/b/z/b;
.source "WhiteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/a0/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/NoDisturbBean;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/a0/b;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic F(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic G(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic H(Lcom/allinone/callerid/b/a0/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/a0/b;->f:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/allinone/callerid/b/a0/b$b;

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NoDisturbBean;

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/NoDisturbBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/NoDisturbBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "telphone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wbb"

    invoke-static {v4, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_2

    const-string v3, ""

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b$b;->M(Lcom/allinone/callerid/b/a0/b$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b$b;->N(Lcom/allinone/callerid/b/a0/b$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b$b;->N(Lcom/allinone/callerid/b/a0/b$b;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b$b;->M(Lcom/allinone/callerid/b/a0/b$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b$b;->N(Lcom/allinone/callerid/b/a0/b$b;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b$b;->O(Lcom/allinone/callerid/b/a0/b$b;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v1, Lcom/allinone/callerid/b/a0/b$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/allinone/callerid/b/a0/b$a;-><init>(Lcom/allinone/callerid/b/a0/b;ILcom/allinone/callerid/bean/NoDisturbBean;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/a0/b$b;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/b/a0/b$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
