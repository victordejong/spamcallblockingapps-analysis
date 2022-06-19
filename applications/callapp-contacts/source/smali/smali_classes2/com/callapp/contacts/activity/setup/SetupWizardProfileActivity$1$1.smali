.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 186
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 188
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    .line 1386
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d:Landroid/widget/ViewSwitcher;

    .line 188
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
