.class Lcom/allinone/callerid/g/e$m;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/b1;->c(Landroid/app/Activity;)Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    new-instance v1, Lcom/allinone/callerid/g/e$u;

    iget-object v2, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/allinone/callerid/g/e$u;-><init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/g/e$k;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/e;->h2(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/g/e$u;)Lcom/allinone/callerid/g/e$u;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.allinone.callerid.RELOAD_DATA"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.allinone.callerid.CLOSE_AD"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v2}, Lcom/allinone/callerid/g/e;->g2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/g/e$u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/g/e$m;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v2}, Lcom/allinone/callerid/g/e;->i2(Lcom/allinone/callerid/g/e;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/g/e;->j2(Lcom/allinone/callerid/g/e;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method
