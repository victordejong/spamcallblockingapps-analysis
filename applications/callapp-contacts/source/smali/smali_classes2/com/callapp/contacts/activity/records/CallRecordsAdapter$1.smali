.class Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->a:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->isInMultiSelectMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 75
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->a:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getCallAppRow()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v4

    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->REGULAR:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    :cond_0
    return v1
.end method
