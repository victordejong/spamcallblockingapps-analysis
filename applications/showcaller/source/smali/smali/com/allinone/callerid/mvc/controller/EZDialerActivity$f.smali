.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/s/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v1, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1, p3}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->d0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/e;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/allinone/callerid/b/e;->e(Ljava/util/List;Ljava/util/HashMap;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object p1

    iget-object p1, p1, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
