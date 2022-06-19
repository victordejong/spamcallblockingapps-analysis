.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;)V
    .locals 0

    .line 1817
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 14

    .line 1817
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3121
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;Z)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2824
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2825
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2830
    :goto_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "$1 USD"

    :cond_1
    const v1, 0x7f120125

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2834
    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2835
    new-instance v6, Landroid/text/SpannableString;

    const v2, 0x7f120126

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2836
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2838
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2839
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2840
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    if-eq v2, v1, :cond_2

    .line 2842
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v7, v4, v2, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    if-eq v3, v1, :cond_3

    .line 2845
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f333333    # 0.7f

    invoke-direct {p1, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {v7, p1, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2848
    :cond_3
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v5, 0x7f08058a

    const v0, 0x7f120124

    .line 2850
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-instance v10, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$1;

    invoke-direct {v10, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;)V

    const v0, 0x7f120123

    .line 2861
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const v1, 0x7f0600f2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v12

    new-instance v13, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$2;

    invoke-direct {v13, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;)V

    move-object v4, p1

    invoke-direct/range {v4 .. v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 2869
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$3;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 2887
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
