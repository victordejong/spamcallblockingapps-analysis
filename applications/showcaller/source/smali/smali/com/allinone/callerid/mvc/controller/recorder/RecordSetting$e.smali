.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/h1;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    sput-boolean p1, Lcom/allinone/callerid/util/h1;->a:Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const-class v2, Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
