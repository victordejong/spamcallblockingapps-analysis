.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/s;->b(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->m0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$d;->e:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->d0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V

    return-void
.end method
