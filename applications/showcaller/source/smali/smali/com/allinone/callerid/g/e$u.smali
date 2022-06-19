.class Lcom/allinone/callerid/g/e$u;
.super Landroid/content/BroadcastReceiver;
.source "EZSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "u"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$u;->a:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/g/e$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/e$u;-><init>(Lcom/allinone/callerid/g/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "com.allinone.callerid.RELOAD_DATA"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$u;->a:Lcom/allinone/callerid/g/e;

    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->e3()V

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "searchList"

    const-string v1, "reload_data====init()"

    .line 4
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$u;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.allinone.callerid.IDENTIFY_NUMBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_1
    const-string p1, "com.allinone.callerid.CLOSE_AD"

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/e$u;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->R2(Lcom/allinone/callerid/g/e;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/g/e$u;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->R2(Lcom/allinone/callerid/g/e;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
