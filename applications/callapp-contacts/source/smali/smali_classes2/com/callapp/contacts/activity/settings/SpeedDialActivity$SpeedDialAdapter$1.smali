.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 187
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;)V

    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 203
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method
