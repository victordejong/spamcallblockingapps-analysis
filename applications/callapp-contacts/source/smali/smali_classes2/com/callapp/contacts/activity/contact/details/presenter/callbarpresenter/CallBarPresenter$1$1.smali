.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;Landroid/os/Bundle;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->a:Landroid/os/Bundle;

    const-string v1, "RECORDER_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->values()[Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v1

    aget-object v0, v1, v0

    .line 160
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)V

    .line 164
    :cond_0
    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z

    .line 166
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;->get()Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;->b()V

    :cond_1
    return-void
.end method
