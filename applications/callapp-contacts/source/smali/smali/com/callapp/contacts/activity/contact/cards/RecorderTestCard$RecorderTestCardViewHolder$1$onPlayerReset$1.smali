.class final Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerReset$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;->onPlayerReset()V
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerReset$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1$onPlayerReset$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecorderTestPlayButton()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080461

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
