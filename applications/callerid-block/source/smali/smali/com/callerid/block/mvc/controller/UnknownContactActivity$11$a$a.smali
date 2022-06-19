.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a$a;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a$a;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->g0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a$a;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a$a;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
