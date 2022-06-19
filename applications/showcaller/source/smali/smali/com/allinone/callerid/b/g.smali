.class public Lcom/allinone/callerid/b/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/g$c;,
        Lcom/allinone/callerid/b/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/graphics/Typeface;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CommentContent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/allinone/callerid/b/g$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CommentContent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/g;->e:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/g;->e:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/g;->f:Landroid/view/LayoutInflater;

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/g;->d:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic A(Lcom/allinone/callerid/b/g;)Lcom/allinone/callerid/b/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g;->g:Lcom/allinone/callerid/b/g$b;

    return-object p0
.end method

.method static synthetic B(Lcom/allinone/callerid/b/g;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g;->d:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public C(Lcom/allinone/callerid/b/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/g;->g:Lcom/allinone/callerid/b/g$b;

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/allinone/callerid/b/g$c;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/g;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/CommentContent;

    .line 4
    check-cast p1, Lcom/allinone/callerid/b/g$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->M(Lcom/allinone/callerid/b/g$c;)Lcom/allinone/callerid/customview/ExpandableTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/allinone/callerid/customview/ExpandableTextView;->setText(Ljava/lang/CharSequence;I)V

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->N(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getCreate_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getType_label()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'#ee5164\'> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->O(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->O(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->O(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/b/g;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->P(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10037d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->Q(Lcom/allinone/callerid/b/g$c;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->Q(Lcom/allinone/callerid/b/g$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/allinone/callerid/b/g$c;->Q(Lcom/allinone/callerid/b/g$c;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/b/g$a;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/b/g$a;-><init>(Lcom/allinone/callerid/b/g;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/g;->f:Landroid/view/LayoutInflater;

    const v0, 0x7f0c006e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/allinone/callerid/b/g$c;

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/b/g$c;-><init>(Lcom/allinone/callerid/b/g;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
