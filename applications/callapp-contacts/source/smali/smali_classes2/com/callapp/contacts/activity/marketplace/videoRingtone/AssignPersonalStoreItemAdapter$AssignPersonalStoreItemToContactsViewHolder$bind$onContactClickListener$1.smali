.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;Landroid/view/View;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 189
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;->r:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->getItemClickListener()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;->b:Landroid/view/View;

    const-string v1, "counterTextContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getNames()Ljava/util/List;

    move-result-object v1

    const-string v2, "item.names"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    invoke-static/range {v3 .. v10}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
