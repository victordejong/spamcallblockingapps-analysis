.class Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Lcom/callapp/contacts/action/Action$ContextType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->d:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->b:Lcom/callapp/contacts/action/Action$ContextType;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x1

    .line 169
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->d:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->b:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;->c:Ljava/lang/String;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->REGULAR:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    return v0
.end method
