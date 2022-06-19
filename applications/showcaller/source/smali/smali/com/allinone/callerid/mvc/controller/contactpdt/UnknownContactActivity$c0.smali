.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, " "

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10034f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Landroidx/appcompat/app/a$a;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;)V

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
