.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;
.super Landroid/os/Handler;
.source "EZDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    if-eqz v0, :cond_0

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x70

    if-ne p1, v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/e;

    move-result-object p1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/allinone/callerid/b/e;->e(Ljava/util/List;Ljava/util/HashMap;)V

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
