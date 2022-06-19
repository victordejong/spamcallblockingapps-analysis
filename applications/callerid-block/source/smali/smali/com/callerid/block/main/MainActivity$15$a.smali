.class Lcom/callerid/block/main/MainActivity$15$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$15;->i(Lcom/rey/material/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/rey/material/app/Dialog;

.field final synthetic c:Lcom/callerid/block/main/MainActivity$15;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$15;Lcom/rey/material/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$15$a;->c:Lcom/callerid/block/main/MainActivity$15;

    iput-object p2, p0, Lcom/callerid/block/main/MainActivity$15$a;->b:Lcom/rey/material/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "dialog_share"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$15$a;->c:Lcom/callerid/block/main/MainActivity$15;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$15;->n:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$15$a;->c:Lcom/callerid/block/main/MainActivity$15;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$15;->n:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$15$a;->c:Lcom/callerid/block/main/MainActivity$15;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$15;->n:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f10007d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$15$a;->c:Lcom/callerid/block/main/MainActivity$15;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$15;->n:Lcom/callerid/block/main/MainActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$15$a;->b:Lcom/rey/material/app/Dialog;

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    return-void
.end method
