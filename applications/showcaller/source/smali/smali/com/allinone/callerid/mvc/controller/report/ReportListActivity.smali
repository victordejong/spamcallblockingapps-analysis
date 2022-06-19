.class public Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "ReportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;,
        Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;
    }
.end annotation


# instance fields
.field private u:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    .line 2
    sget-object v1, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->e:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;->u:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;)[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;->u:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0058

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
