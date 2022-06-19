.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;Landroid/view/View;)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1",
        "Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;",
        "onPlayerPaused",
        "",
        "onPlayerReset",
        "onPlayerStarted",
        "seekBarUpdated",
        "currentPosition",
        "",
        "duration",
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlayerPaused()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerPaused$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerPaused$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPlayerReset()V
    .locals 2

    .line 107
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerReset$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerReset$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPlayerStarted()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerStarted$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerStarted$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final seekBarUpdated(II)V
    .locals 0

    return-void
.end method
