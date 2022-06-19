.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->b0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->n(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const p2, 0x7f1002df

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "$$"

    const-string v0, "X"

    .line 4
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->c0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
