.class Lcom/callerid/block/mvc/controller/ContactActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/ContactActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/ContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->a0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->b0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->c0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->d0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800ef

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->a0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->b0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->c0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$d;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->d0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800a3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
