.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y$a;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y$a;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;->f:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->J0(Landroid/content/Context;)V

    return-void
.end method
