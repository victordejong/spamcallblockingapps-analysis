.class Lcom/allinone/callerid/util/recorder/f$p;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->y(Landroid/app/Activity;Lcom/allinone/callerid/bean/recorder/RecordCall;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/allinone/callerid/customview/BaseEditText;

.field final synthetic f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/allinone/callerid/customview/BaseEditText;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$p;->d:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/allinone/callerid/util/recorder/f$p;->e:Lcom/allinone/callerid/customview/BaseEditText;

    iput-object p3, p0, Lcom/allinone/callerid/util/recorder/f$p;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$p;->d:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/allinone/callerid/util/recorder/f$p;->e:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/200"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$p;->e:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    const/16 p2, 0xc8

    if-le p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$p;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$p;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06010b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$p;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$p;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600fc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
