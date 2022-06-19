.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->y0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/view/recorder/b;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;Lcom/allinone/callerid/mvc/view/recorder/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->d:Lcom/allinone/callerid/mvc/view/recorder/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090457

    if-eq p1, v0, :cond_2

    const v0, 0x7f090459

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "auto_record_all"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->t(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->h0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->i0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->i0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->d:Lcom/allinone/callerid/mvc/view/recorder/b;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->t(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->h0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->i0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f()V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;->d:Lcom/allinone/callerid/mvc/view/recorder/b;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
