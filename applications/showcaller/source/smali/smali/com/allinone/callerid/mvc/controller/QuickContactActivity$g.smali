.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->A0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->f:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v0}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->d:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->f:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->h0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/util/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/util/n;->e(Lcom/allinone/callerid/search/CallLogBean;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;->f:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g$a;-><init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
