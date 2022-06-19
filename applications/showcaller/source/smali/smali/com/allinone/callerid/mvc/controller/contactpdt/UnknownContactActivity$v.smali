.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a1()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->e0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10034f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080164

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->g0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->a(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->e0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080163

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->g0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
