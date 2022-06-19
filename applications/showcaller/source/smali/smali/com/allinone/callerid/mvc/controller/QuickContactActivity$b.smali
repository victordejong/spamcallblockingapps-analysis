.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$b;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->h0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/util/n;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->D:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->G:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
