.class Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic b:Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;->b:Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/theartofdev/edmodo/cropper/CropImageView$a;)V
    .locals 2

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "EXTRA_RESULT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;->b:Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 158
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;->b:Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->finish()V

    return-void
.end method
