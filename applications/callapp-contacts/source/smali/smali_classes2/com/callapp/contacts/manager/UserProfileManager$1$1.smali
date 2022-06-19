.class Lcom/callapp/contacts/manager/UserProfileManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/UserProfileManager$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/manager/UserProfileManager$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/UserProfileManager$1;Ljava/lang/String;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->b:Lcom/callapp/contacts/manager/UserProfileManager$1;

    iput-object p2, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 588
    iget-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->b:Lcom/callapp/contacts/manager/UserProfileManager$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/UserProfileManager$1;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 590
    iget-object v2, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->b:Lcom/callapp/contacts/manager/UserProfileManager$1;

    iget-boolean v2, v2, Lcom/callapp/contacts/manager/UserProfileManager$1;->b:Z

    .line 1413
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    .line 592
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    .line 589
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager$1$1;->b:Lcom/callapp/contacts/manager/UserProfileManager$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/UserProfileManager$1;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setDefaultProfilePic()V

    return-void
.end method
