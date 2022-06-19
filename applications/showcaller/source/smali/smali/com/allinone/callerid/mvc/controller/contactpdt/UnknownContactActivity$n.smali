.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/RadioButton;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/allinone/callerid/customview/DeletableEditText;

.field final synthetic g:Landroid/widget/RadioButton;

.field final synthetic h:Landroid/widget/RadioButton;

.field final synthetic i:Landroid/widget/TextView;

.field final synthetic j:Landroid/widget/TextView;

.field final synthetic k:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/TextView;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->k:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->d:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->e:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->f:Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object p5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->g:Landroid/widget/RadioButton;

    iput-object p6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->h:Landroid/widget/RadioButton;

    iput-object p7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->i:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->j:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    const v0, 0x7f060122

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->k:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->f:Lcom/allinone/callerid/customview/DeletableEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->d:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->f:Lcom/allinone/callerid/customview/DeletableEditText;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->k:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->k:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;->k:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
