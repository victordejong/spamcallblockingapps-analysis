.class public final Lth0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lth0;->c(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lx81;

.field public final synthetic c:Lcom/kedlin/cca/ui/CCAFragmentActivity;


# direct methods
.method public constructor <init>(ZLx81;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V
    .locals 0

    iput-boolean p1, p0, Lth0$a;->a:Z

    iput-object p2, p0, Lth0$a;->b:Lx81;

    iput-object p3, p0, Lth0$a;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean p2, p0, Lth0$a;->a:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lth0$a;->b:Lx81;

    invoke-virtual {p2}, Lx81;->d()Z

    iget-object p2, p0, Lth0$a;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const v0, 0x7f110241

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lth0$a;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
