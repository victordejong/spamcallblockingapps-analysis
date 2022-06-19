.class Lcom/allinone/callerid/util/g0$a;
.super Ljava/lang/Object;
.source "MobileInfoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/g0;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/allinone/callerid/util/g0;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/g0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/g0$a;->e:Lcom/allinone/callerid/util/g0;

    iput-object p2, p0, Lcom/allinone/callerid/util/g0$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/util/g0$a;->d:Landroid/content/Context;

    const-class v2, Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/util/g0$a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
