.class Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;III)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->b(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->c(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$1;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->d(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void
.end method
