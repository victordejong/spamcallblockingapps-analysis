.class public Lcom/allinone/callerid/d/a/d;
.super Lcom/allinone/callerid/d/a/e/a;
.source "SelectVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/a/d$c;,
        Lcom/allinone/callerid/d/a/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/d/a/e/a<",
        "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Activity;

.field private i:Lcom/allinone/callerid/d/a/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/a/e/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/d/a/d;->g:Landroid/content/Context;

    .line 3
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/d;->h:Landroid/app/Activity;

    const v0, 0x7f0402c0

    const v1, 0x7f0801e4

    .line 4
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/d/a/d;->f:I

    return-void
.end method

.method static synthetic C(Lcom/allinone/callerid/d/a/d;)Lcom/allinone/callerid/d/a/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/d;->i:Lcom/allinone/callerid/d/a/d$b;

    return-object p0
.end method


# virtual methods
.method public D(Lcom/allinone/callerid/d/a/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/d;->i:Lcom/allinone/callerid/d/a/d$b;

    return-void
.end method

.method public f(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/allinone/callerid/d/a/d$c;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/a/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/a/d;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/main/d;->H(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/d/a/d;->f:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/d/a/d$c;->M(Lcom/allinone/callerid/d/a/d$c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/d/a/d$c;->N(Lcom/allinone/callerid/d/a/d$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/d/a/d$a;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/d/a/d$a;-><init>(Lcom/allinone/callerid/d/a/d;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/d/a/d$c;

    iget-object v0, p0, Lcom/allinone/callerid/d/a/e/a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/d/a/d$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
