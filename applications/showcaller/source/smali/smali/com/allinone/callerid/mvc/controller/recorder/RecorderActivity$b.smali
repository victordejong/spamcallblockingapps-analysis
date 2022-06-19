.class Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Dialog;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "record_setting_guide_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;)V

    return-void
.end method
