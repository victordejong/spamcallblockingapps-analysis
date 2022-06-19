.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->p0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/s;->b(Ljava/util/List;)V

    return-void
.end method
