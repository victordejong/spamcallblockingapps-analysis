.class Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;
.super Ljava/lang/Object;
.source "MissedCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->X(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->Y(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/a;->a(Landroid/app/Activity;)V

    return-void
.end method
