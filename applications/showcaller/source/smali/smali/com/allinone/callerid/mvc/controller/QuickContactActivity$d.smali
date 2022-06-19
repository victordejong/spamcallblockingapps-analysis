.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->s0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->h0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/util/n;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/n;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;-><init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
