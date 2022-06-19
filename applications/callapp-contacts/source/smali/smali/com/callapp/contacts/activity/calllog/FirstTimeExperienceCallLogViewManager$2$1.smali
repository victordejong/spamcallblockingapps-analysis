.class Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;

    iget-object v2, v2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1449
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 205
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void
.end method
