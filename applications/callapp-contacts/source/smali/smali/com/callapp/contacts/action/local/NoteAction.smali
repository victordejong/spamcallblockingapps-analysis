.class public Lcom/callapp/contacts/action/local/NoteAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/callapp/contacts/action/local/NoteAction;->c(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/callapp/contacts/action/local/NoteAction$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/action/local/NoteAction$2;-><init>(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 90
    invoke-virtual {v0}, Lcom/callapp/contacts/action/local/NoteAction$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 103
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/NoteAction$3;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return p3

    :cond_1
    return p2
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 29
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Actions"

    const-string v1, "Note action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p3

    if-nez p3, :cond_0

    .line 32
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p3

    new-instance v0, Lcom/callapp/contacts/action/local/NoteAction$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/action/local/NoteAction$1;-><init>(Lcom/callapp/contacts/action/local/NoteAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V

    invoke-virtual {p3, p1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void

    .line 43
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/action/local/NoteAction;->c(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204dc

    .line 95
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
