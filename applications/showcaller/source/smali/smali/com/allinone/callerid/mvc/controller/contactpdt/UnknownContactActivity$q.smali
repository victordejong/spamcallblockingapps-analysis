.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Lcom/allinone/callerid/customview/DeletableEditText;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->g:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->b:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->c:Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object p5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const p1, 0x7f060122

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->a:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->b:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->c:Lcom/allinone/callerid/customview/DeletableEditText;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->g:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->g:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->g:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->g:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;->c:Lcom/allinone/callerid/customview/DeletableEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
