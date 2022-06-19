.class Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/model/call/CallData;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;II)V

    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter;)V

    return-void
.end method
