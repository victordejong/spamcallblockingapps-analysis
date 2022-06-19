.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/customview/EZKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->v:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->i0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)V

    .line 5
    sput-boolean p2, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->v:Z

    :cond_0
    return-void
.end method
