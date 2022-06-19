.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/BaseEditText;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;Lcom/allinone/callerid/customview/BaseEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;->d:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;->d:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$"

    .line 4
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->c0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p2}, Lcom/allinone/callerid/util/recorder/b;->n(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
