.class Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

.field final synthetic b:Lcom/callapp/contacts/action/Action$ContextType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->d:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->b:Lcom/callapp/contacts/action/Action$ContextType;

    iput-object p4, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    .line 210
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 211
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->d:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->b(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->b:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->c:Ljava/lang/String;

    sget-object v4, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->DROPPY:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;->d:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->b(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    return-void
.end method
