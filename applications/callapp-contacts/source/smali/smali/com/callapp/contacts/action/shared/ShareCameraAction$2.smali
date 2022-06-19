.class Lcom/callapp/contacts/action/shared/ShareCameraAction$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/ShareCameraAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/action/shared/ShareCameraAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareCameraAction;Landroid/graphics/Bitmap;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->c:Lcom/callapp/contacts/action/shared/ShareCameraAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->c:Lcom/callapp/contacts/action/shared/ShareCameraAction;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/action/shared/ShareCameraAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120076

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method
