.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$a;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$a;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$a;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->H0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$a;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$a;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
