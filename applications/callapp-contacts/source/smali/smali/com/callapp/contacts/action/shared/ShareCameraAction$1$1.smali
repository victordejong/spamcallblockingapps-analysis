.class Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->a(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareCameraAction$1;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->c:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 100
    iget-object p4, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p4, p4, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->d:Ljava/lang/String;

    aput-object p4, p2, p3

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->e:Lcom/callapp/contacts/action/shared/ShareCameraAction;

    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p2, p2, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p3, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p3, p3, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->d:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/action/shared/ShareCameraAction;->a(Lcom/callapp/contacts/action/shared/ShareCameraAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->b:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 108
    iget-object p3, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p3, p3, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->e:Lcom/callapp/contacts/action/shared/ShareCameraAction;

    invoke-static {p3}, Lcom/callapp/contacts/action/shared/ShareCameraAction;->a(Lcom/callapp/contacts/action/shared/ShareCameraAction;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    iget-object p3, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    iget-object p3, p3, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;->e:Lcom/callapp/contacts/action/shared/ShareCameraAction;

    invoke-static {p3}, Lcom/callapp/contacts/action/shared/ShareCameraAction;->b(Lcom/callapp/contacts/action/shared/ShareCameraAction;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
