.class Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$i;
.super Ljava/lang/Object;
.source "DisturbCustomActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/l/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->j0(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.allinone.callerid.WHITE_DATE_UPDATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
