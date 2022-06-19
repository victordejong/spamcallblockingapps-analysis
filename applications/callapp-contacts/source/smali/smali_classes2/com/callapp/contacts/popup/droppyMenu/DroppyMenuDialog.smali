.class public Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;


# instance fields
.field private a:Lcom/shehabic/droppy/DroppyMenuPopup;

.field private b:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/model/contact/ContactData;

.field private e:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->e:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->d:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->b:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/shehabic/droppy/DroppyMenuPopup;)Lcom/shehabic/droppy/DroppyMenuPopup;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->b:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;)Lcom/shehabic/droppy/DroppyMenuPopup;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-object p0
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    .line 67
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    iget-object p1, p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;->key:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/action/Action;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Actions"

    const-string v4, "Clicked"

    invoke-virtual {v2, v3, p1, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->d:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->e:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v1, p1, p2, v2}, Lcom/callapp/contacts/action/Action;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Z)V

    :cond_0
    return-void
.end method
