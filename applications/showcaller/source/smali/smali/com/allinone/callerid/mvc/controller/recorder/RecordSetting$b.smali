.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$"

    if-eqz p1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->c0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "X"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->c0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method
