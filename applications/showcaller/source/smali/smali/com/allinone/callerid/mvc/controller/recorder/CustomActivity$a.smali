.class Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/a;->c()Lcom/allinone/callerid/f/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    iget v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->L:I

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/k/a;->e(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
