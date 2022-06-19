.class public final Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;",
        "onKeyResult",
        "",
        "jsonInviteReferer",
        "Lcom/callapp/common/model/json/JSONInviteReferer;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;->this$0:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyResult(Lcom/callapp/common/model/json/JSONInviteReferer;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2$onKeyResult$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;Lcom/callapp/common/model/json/JSONInviteReferer;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
