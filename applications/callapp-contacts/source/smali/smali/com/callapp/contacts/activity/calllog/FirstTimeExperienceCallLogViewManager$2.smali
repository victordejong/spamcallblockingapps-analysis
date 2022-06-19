.class Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->setContactProfilePicture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/ProfilePictureView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;Lcom/callapp/contacts/widget/ProfilePictureView;Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;->c:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2$1;-><init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
