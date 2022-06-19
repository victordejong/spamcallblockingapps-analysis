.class final Lcom/callapp/contacts/util/ListsUtils$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/view/View;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/view/View;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$14;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/callapp/contacts/util/ListsUtils$14;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$14;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$14;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    const-string v0, "Clicked"

    const-string v1, "Contact List"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 451
    :sswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 407
    :sswitch_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v2, "Block by number series"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/util/ListsUtils$14$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ListsUtils$14$1;-><init>(Lcom/callapp/contacts/util/ListsUtils$14;)V

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;ILjava/lang/String;)V

    return-void

    .line 416
    :sswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v2, "Block an existing contact"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;

    new-instance v1, Lcom/callapp/contacts/util/ListsUtils$14$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ListsUtils$14$2;-><init>(Lcom/callapp/contacts/util/ListsUtils$14;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120108 -> :sswitch_2
        0x7f120109 -> :sswitch_1
        0x7f1202ea -> :sswitch_0
    .end sparse-switch
.end method
