.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder$bind$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder$bind$1;->b:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 53
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder$bind$1;->b:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemType()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    move-result-object v1

    const-string v2, "item.personalStoreItemType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", - Add personal store item to contact from placeholder card"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Personal Store Item"

    const-string v2, "Card clicked"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;->r:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->getItemClickListener()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;->b(I)V

    return-void
.end method
