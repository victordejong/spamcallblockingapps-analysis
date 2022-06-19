.class Lcom/callapp/contacts/manager/UserProfileManager$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/widget/ProfilePictureView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/ProfilePictureView;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/manager/UserProfileManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/UserProfileManager;Lcom/callapp/contacts/widget/ProfilePictureView;Z)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/callapp/contacts/manager/UserProfileManager$1;->c:Lcom/callapp/contacts/manager/UserProfileManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/UserProfileManager$1;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-boolean p3, p0, Lcom/callapp/contacts/manager/UserProfileManager$1;->b:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 584
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/UserProfileManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/manager/UserProfileManager$1$1;-><init>(Lcom/callapp/contacts/manager/UserProfileManager$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
