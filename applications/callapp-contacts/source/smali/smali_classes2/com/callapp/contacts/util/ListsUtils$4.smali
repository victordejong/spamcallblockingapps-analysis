.class final Lcom/callapp/contacts/util/ListsUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/CallAppRow;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    iput-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$4;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/util/ListsUtils$4;->c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ListsUtils$4;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ListsUtils$4;->c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ListsUtils$4;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ListsUtils$4;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 201
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/util/ListsUtils$4;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/util/ListsUtils$4;->c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 200
    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method
