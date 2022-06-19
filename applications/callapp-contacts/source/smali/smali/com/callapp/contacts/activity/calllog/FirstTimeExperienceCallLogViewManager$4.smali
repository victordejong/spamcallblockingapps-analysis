.class Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->getFinishedFirstTimeExperienceListener()Landroid/view/View$OnClickListener;
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

    .line 347
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$4;->a:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 350
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->e()V

    return-void
.end method
