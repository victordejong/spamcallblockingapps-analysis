.class final Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContactListAdapterDataLoadTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask;",
        "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;",
        "Lcom/callapp/contacts/activity/base/BaseContactHolder;",
        "(Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;)V",
        "addContactLoaderStack",
        "",
        "contactLoader",
        "Lcom/callapp/contacts/loader/api/ContactLoader;",
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
.field final synthetic d:Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 1

    const-string v0, "contactLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method
