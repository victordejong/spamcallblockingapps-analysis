.class Lcom/allinone/callerid/mvc/controller/MainActivity$y;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/bean/EZSimpleContact;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->W0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090185

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/DeletableEditText;

    const v2, 0x7f090186

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/DeletableEditText;

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/EZSimpleContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v3}, Lcom/allinone/callerid/mvc/controller/MainActivity;->X0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/EZSimpleContact;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    .line 9
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1002bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/allinone/callerid/mvc/controller/MainActivity$y$b;

    invoke-direct {v3, p0, v2, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity$y$b;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$y;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText;)V

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$y$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$y$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$y;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Y0(Lcom/allinone/callerid/mvc/controller/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
