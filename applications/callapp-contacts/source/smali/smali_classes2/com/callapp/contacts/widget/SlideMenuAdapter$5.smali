.class Lcom/callapp/contacts/widget/SlideMenuAdapter$5;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 304
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 308
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
