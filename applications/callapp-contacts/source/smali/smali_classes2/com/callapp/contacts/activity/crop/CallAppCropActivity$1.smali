.class Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/crop/CallAppCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01c7

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a033c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0780

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Lcom/theartofdev/edmodo/cropper/CropImageView;

    move-result-object p1

    const/16 v0, -0x5a

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(I)V

    return-void

    .line 143
    :cond_1
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    const v1, 0x7f1206f9

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 147
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Lcom/theartofdev/edmodo/cropper/CropImageView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1$1;-><init>(Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V

    .line 162
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->b(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->c(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->d(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;JLjava/lang/String;)V

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Lcom/theartofdev/edmodo/cropper/CropImageView;

    move-result-object v0

    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->e(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Landroid/net/Uri;

    move-result-object v1

    .line 1855
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$i;)V

    return-void

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->f(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)V

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->setResult(I)V

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;->a:Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->finish()V

    :goto_0
    return-void
.end method
