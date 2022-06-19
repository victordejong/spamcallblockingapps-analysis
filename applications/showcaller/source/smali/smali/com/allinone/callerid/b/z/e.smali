.class public Lcom/allinone/callerid/b/z/e;
.super Lcom/allinone/callerid/b/z/b;
.source "ProblemRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/z/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Typeface;

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/z/e;->g:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/z/e;->f:Landroid/graphics/Typeface;

    .line 4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/allinone/callerid/b/z/e;->h:Landroid/app/Activity;

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/z/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/e;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/z/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/e;->h:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic F(Lcom/allinone/callerid/b/z/e;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/e;->f:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/allinone/callerid/b/z/e$b;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/b/z/e$b;->M(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->getShowname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/b/z/e$b;->N(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/b/z/e$a;

    invoke-direct {v1, p0, p2}, Lcom/allinone/callerid/b/z/e$a;-><init>(Lcom/allinone/callerid/b/z/e;Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->isselected()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/b/z/e$b;->O(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/RadioButton;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/b/z/e$b;->O(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/b/z/e$b;->O(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/b/z/e$b;->O(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/RadioButton;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/z/e$b;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0128

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/b/z/e$b;-><init>(Lcom/allinone/callerid/b/z/e;Landroid/view/View;)V

    return-object p2
.end method
