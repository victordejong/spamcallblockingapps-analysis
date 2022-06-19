.class Lcom/callerid/block/customview/ObservableListView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/customview/ObservableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/customview/ObservableListView;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/ObservableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView$a;->a:Lcom/callerid/block/customview/ObservableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView$a;->a:Lcom/callerid/block/customview/ObservableListView;

    invoke-static {v0}, Lcom/callerid/block/customview/ObservableListView;->a(Lcom/callerid/block/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView$a;->a:Lcom/callerid/block/customview/ObservableListView;

    invoke-static {v0}, Lcom/callerid/block/customview/ObservableListView;->a(Lcom/callerid/block/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/customview/ObservableListView$a;->a:Lcom/callerid/block/customview/ObservableListView;

    invoke-static {p1}, Lcom/callerid/block/customview/ObservableListView;->b(Lcom/callerid/block/customview/ObservableListView;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView$a;->a:Lcom/callerid/block/customview/ObservableListView;

    invoke-static {v0}, Lcom/callerid/block/customview/ObservableListView;->a(Lcom/callerid/block/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView$a;->a:Lcom/callerid/block/customview/ObservableListView;

    invoke-static {v0}, Lcom/callerid/block/customview/ObservableListView;->a(Lcom/callerid/block/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
