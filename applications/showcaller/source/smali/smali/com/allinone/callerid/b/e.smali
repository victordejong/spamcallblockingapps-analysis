.class public Lcom/allinone/callerid/b/e;
.super Landroid/widget/BaseAdapter;
.source "CallLogsFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/e$c;
    }
.end annotation


# instance fields
.field private final d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/widget/ListView;

.field k:Lcom/allinone/callerid/b/e$c;

.field private l:Landroid/app/Activity;

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/e;->h:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/b/e;->f:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/e;->i:Landroid/view/LayoutInflater;

    .line 7
    iput-object p3, p0, Lcom/allinone/callerid/b/e;->j:Landroid/widget/ListView;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    const p2, 0x7f040117

    const p3, 0x7f060047

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/e;->m:I

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    const v0, 0x7f040146

    const v1, 0x7f06004d

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/e;->n:I

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    const v0, 0x7f04011a

    const v1, 0x7f060051

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/e;->o:I

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/e;->p:I

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    const p2, 0x7f04007c

    const p3, 0x7f0800bb

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/e;->e:I

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    const p2, 0x7f04007d

    const p3, 0x7f0800be

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/e;->d:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/e;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/e;->j:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/b/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/e;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/allinone/callerid/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;I)V
    .locals 0

    .line 1
    new-instance p3, Lcom/allinone/callerid/b/e$b;

    invoke-direct {p3, p0, p2}, Lcom/allinone/callerid/b/e$b;-><init>(Lcom/allinone/callerid/b/e;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/b/e;->h:Ljava/util/HashMap;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/e;->i:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0075

    invoke-virtual {p2, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/e$c;

    invoke-direct {p3, v0}, Lcom/allinone/callerid/b/e$c;-><init>(Lcom/allinone/callerid/b/e$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0900c3

    .line 3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0900c4

    .line 5
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0900c5

    .line 7
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f09041a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0905dd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->c:Landroid/widget/TextView;

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f09007b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f09065e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0906f5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090765

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090663

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0904dd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->g:Landroid/widget/RelativeLayout;

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v4, p0, Lcom/allinone/callerid/b/e;->e:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 23
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v4, p0, Lcom/allinone/callerid/b/e;->o:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0900bd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->j:Landroid/widget/ImageView;

    .line 25
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090260

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->k:Landroid/widget/ImageView;

    .line 26
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->k:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0904bf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->n:Landroid/widget/FrameLayout;

    .line 30
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0904be

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->o:Landroid/widget/RelativeLayout;

    .line 31
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f0904ce

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    .line 32
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090509

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->q:Landroid/view/View;

    .line 34
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->q:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090320

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->s:Landroid/widget/ImageView;

    .line 36
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090321

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->t:Landroid/widget/ImageView;

    .line 37
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->s:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->t:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    const v4, 0x7f090491

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    .line 40
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/e$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    .line 49
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    const v4, 0x7f0801b4

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    iget v5, p0, Lcom/allinone/callerid/b/e;->m:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    iget v5, p0, Lcom/allinone/callerid/b/e;->n:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    iget v5, p0, Lcom/allinone/callerid/b/e;->n:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/e$c;->c:Landroid/widget/TextView;

    iget v5, p0, Lcom/allinone/callerid/b/e;->n:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object p3, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    .line 55
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    :try_start_0
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 57
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->s:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->t:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->t:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->s:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->s:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->t:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 65
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->s:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->t:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->q:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 72
    :try_start_1
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_6

    if-lez p1, :cond_6

    .line 73
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 74
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 76
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 78
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->q:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 79
    :cond_5
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 81
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->q:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 82
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/e$c;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/e$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/e$c;->q:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_6
    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_c

    if-lez p1, :cond_c

    .line 87
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 88
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 90
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-eq p1, v6, :cond_8

    .line 91
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 92
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_3

    .line 94
    :cond_7
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 95
    :cond_8
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 96
    :cond_9
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-eq p1, v6, :cond_b

    .line 97
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_3

    .line 100
    :cond_a
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 101
    :cond_b
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 102
    :cond_c
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-eq p1, v6, :cond_f

    .line 103
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 104
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_3

    :cond_d
    if-nez p1, :cond_e

    .line 106
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 107
    :cond_e
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 108
    :cond_f
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    .line 109
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/e$c;->p:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :goto_3
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 112
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 114
    :cond_10
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_4
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 117
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v6

    if-nez v6, :cond_11

    .line 118
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/allinone/callerid/b/e;->e:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/allinone/callerid/b/e;->o:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 122
    :cond_11
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 123
    :cond_12
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 124
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 125
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 126
    :cond_13
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 127
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/allinone/callerid/b/e;->d:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 128
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/allinone/callerid/b/e;->p:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/b/e;->f:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1001aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 131
    :cond_14
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/allinone/callerid/b/e;->e:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 133
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/allinone/callerid/b/e;->o:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_5
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_6

    .line 135
    :cond_15
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :goto_6
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 138
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_7

    .line 139
    :cond_16
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 140
    :cond_17
    :goto_7
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 141
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 142
    :cond_18
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 143
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 144
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 145
    iget-object v7, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 146
    :cond_19
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 147
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 148
    :cond_1a
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 149
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/b/e;->f:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100353

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 150
    :cond_1b
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1c
    :goto_8
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v6, v5, :cond_21

    if-eq v6, v7, :cond_20

    const v9, 0x7f080170

    if-eq v6, v8, :cond_1f

    const/4 v10, 0x5

    if-eq v6, v10, :cond_1e

    const/16 v10, 0x9

    if-eq v6, v10, :cond_1d

    .line 152
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 156
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 158
    :cond_1d
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    .line 159
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 160
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 161
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 162
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 164
    :cond_1e
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    .line 165
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 166
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 167
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 170
    :cond_1f
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 172
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 173
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 174
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 176
    :cond_20
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    const v9, 0x7f080171

    .line 177
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 180
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 182
    :cond_21
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->a:Landroid/widget/ImageView;

    const v9, 0x7f08016f

    .line 183
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 184
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    .line 185
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    :goto_9
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->h:Ljava/util/HashMap;

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_25

    .line 189
    iget-object v6, p0, Lcom/allinone/callerid/b/e;->h:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_25

    .line 190
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_22

    .line 191
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_22
    if-ne v6, v7, :cond_23

    .line 195
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_23
    if-ne v6, v8, :cond_24

    .line 199
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_24
    if-le v6, v8, :cond_25

    .line 203
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->l:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->m:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v5, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/e$c;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_25
    :goto_a
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 208
    iget-object v3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v3, v3, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v3, v3, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 210
    :cond_26
    iget-object v2, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/e$c;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :goto_b
    iget-object v2, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/e$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/e$c;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p3, p1}, Lcom/allinone/callerid/b/e;->d(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;I)V

    .line 214
    iget-object v2, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/e$c;->n:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/allinone/callerid/b/e$a;

    invoke-direct {v3, p0, p1}, Lcom/allinone/callerid/b/e$a;-><init>(Lcom/allinone/callerid/b/e;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 216
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 217
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->l:Landroid/app/Activity;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v1, v1, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    invoke-static {p1, p3, v0, v4, v1}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto/16 :goto_d

    .line 218
    :cond_27
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0801b5

    if-eqz p1, :cond_29

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 219
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 220
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 221
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0801b5

    goto :goto_c

    .line 222
    :cond_28
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    :goto_c
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 224
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->f:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    invoke-static {p1, p3, v4, v0}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    goto :goto_d

    .line 225
    :cond_29
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 226
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 227
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 228
    :cond_2a
    iget-object p1, p0, Lcom/allinone/callerid/b/e;->k:Lcom/allinone/callerid/b/e$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/e$c;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2b
    :goto_d
    return-object p2
.end method
