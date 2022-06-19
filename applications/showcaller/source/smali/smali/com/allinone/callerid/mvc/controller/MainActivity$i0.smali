.class Lcom/allinone/callerid/mvc/controller/MainActivity$i0;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$i0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/allinone/callerid/mvc/controller/MainActivity$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/MainActivity$i0;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$i0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x38f

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->J0(Landroid/content/Context;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.allinone.callerid.STARRED_DATA"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 7
    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$i0$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$i0$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$i0;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/r/a;->l(Landroid/content/Context;Lcom/allinone/callerid/i/a/r/g;)V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
