.class Lcom/allinone/callerid/b/j$d;
.super Ljava/lang/Object;
.source "DialAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/b/j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->b(Lcom/allinone/callerid/b/j;)I

    move-result p1

    const/4 p3, 0x1

    if-le p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/github/clans/fab/FloatingActionButton;->u(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->b(Lcom/allinone/callerid/b/j;)I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/github/clans/fab/FloatingActionButton;->H(Z)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1, p2}, Lcom/allinone/callerid/b/j;->c(Lcom/allinone/callerid/b/j;I)I

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->e(Lcom/allinone/callerid/b/j;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->e(Lcom/allinone/callerid/b/j;)Landroid/widget/LinearLayout;

    move-result-object p1

    const p4, 0x7f090681

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-lt p2, p3, :cond_3

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p3}, Lcom/allinone/callerid/b/j;->f(Lcom/allinone/callerid/b/j;)Ljava/util/List;

    move-result-object p3

    add-int/lit8 p4, p2, -0x1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    const-string v0, "facebook_ad"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p3}, Lcom/allinone/callerid/b/j;->f(Lcom/allinone/callerid/b/j;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p2}, Lcom/allinone/callerid/b/j;->f(Lcom/allinone/callerid/b/j;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->e(Lcom/allinone/callerid/b/j;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/b/j$d;->a:Lcom/allinone/callerid/b/j;

    invoke-static {p1}, Lcom/allinone/callerid/b/j;->e(Lcom/allinone/callerid/b/j;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
