.class final Lcom/callapp/contacts/util/ListsUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/CallAppRow;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$5;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    iput-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$5;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iput-object p3, p0, Lcom/callapp/contacts/util/ListsUtils$5;->c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$5;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$5;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ListsUtils$5;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-object v2, p0, Lcom/callapp/contacts/util/ListsUtils$5;->c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$5;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$5;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ListsUtils$5;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 220
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ListsUtils$5;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-wide v3, v3, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ListsUtils$5;->c:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 219
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method
