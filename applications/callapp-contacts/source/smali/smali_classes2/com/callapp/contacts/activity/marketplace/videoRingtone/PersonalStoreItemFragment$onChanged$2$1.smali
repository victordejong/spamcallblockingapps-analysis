.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->run()V
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;

.field final synthetic b:I

.field final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;

    iput p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;->b:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getAssignPersonalStoreItemAdapter()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;->b:I

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2$1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->setPersonalStoreItemDetailsData(ILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method
