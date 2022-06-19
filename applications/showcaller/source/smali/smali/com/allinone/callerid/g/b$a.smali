.class Lcom/allinone/callerid/g/b$a;
.super Ljava/lang/Object;
.source "EZBlockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->a2(Lcom/allinone/callerid/g/b;)I

    move-result v0

    iget-object v1, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v1}, Lcom/allinone/callerid/g/b;->k2(Lcom/allinone/callerid/g/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/b;->c2(Lcom/allinone/callerid/g/b;I)I

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->m2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v1}, Lcom/allinone/callerid/g/b;->l2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/g/b$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x96

    .line 4
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->m2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/b$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/b$a$a;-><init>(Lcom/allinone/callerid/g/b$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
