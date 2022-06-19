.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isChecked: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Lcom/allinone/callerid/util/i1/a;->p(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    new-instance v0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;Z)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/j1/a;->m(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    :goto_0
    return-void
.end method
