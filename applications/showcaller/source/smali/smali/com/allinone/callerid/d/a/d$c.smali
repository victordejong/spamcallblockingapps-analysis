.class Lcom/allinone/callerid/d/a/d$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SelectVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902a8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/d/a/d$c;->u:Landroid/widget/FrameLayout;

    const v0, 0x7f0902a9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/d$c;->v:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/d/a/d$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/d$c;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/d/a/d$c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/d$c;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method
