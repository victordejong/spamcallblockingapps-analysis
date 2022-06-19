.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Lcom/allinone/callerid/util/j1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;

    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;->a:Z

    invoke-static {v0}, Lcom/allinone/callerid/util/i1/a;->p(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;->b:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->a0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
