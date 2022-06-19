.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    new-instance p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
