.class final Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;->onKeyResult(Lcom/callapp/common/model/json/JSONInviteReferer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;

.field final synthetic b:Lcom/callapp/common/model/json/JSONInviteReferer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;Lcom/callapp/common/model/json/JSONInviteReferer;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;->a:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;->b:Lcom/callapp/common/model/json/JSONInviteReferer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;->b:Lcom/callapp/common/model/json/JSONInviteReferer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;->a:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;->this$0:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;->a:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;->this$0:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setVisibility(I)V

    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1207eb

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method
