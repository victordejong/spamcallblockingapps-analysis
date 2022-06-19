.class Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;
.super Ljava/lang/Object;
.source "DisturbCustomActivity.java"

# interfaces
.implements Lcom/allinone/callerid/util/j1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->d0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->d0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->e0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    return-void
.end method
