.class Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f;
.super Ljava/lang/Object;
.source "ReportSubtypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f;->d:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f;->d:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->c0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f;->d:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->c0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
