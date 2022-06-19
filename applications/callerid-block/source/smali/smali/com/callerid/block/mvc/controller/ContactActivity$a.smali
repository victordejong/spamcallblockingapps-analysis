.class Lcom/callerid/block/mvc/controller/ContactActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/ContactActivity;->l0()V
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

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    const-string v0, " "

    const v1, 0x7f100075

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->Y(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->Y(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->Y(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->Y(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->Y(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->Y(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$a;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v0

    const-class v1, Lcom/callerid/block/mvc/controller/ContactActivity$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()I

    return-void
.end method
