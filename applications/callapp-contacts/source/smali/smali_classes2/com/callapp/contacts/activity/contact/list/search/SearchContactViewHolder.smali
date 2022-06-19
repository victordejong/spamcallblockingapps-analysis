.class public Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;
.super Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;
.source "SourceFile"


# instance fields
.field private v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    const v0, 0x7f0a02f9

    .line 27
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->v:Landroid/widget/TextView;

    const v0, 0x7f0601ec

    .line 28
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 49
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->v:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->v:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->v:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    .line 34
    instance-of p2, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p2, :cond_1

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 36
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionHighlights:Landroid/util/SparseIntArray;

    .line 37
    iget-object p3, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionHighlights:Landroid/util/SparseIntArray;

    sget p2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->u:I

    invoke-static {p3, p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object p3

    .line 44
    :goto_0
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->setDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setViewTexts(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 5

    .line 61
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    sget v3, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->u:I

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->setPhotoBackgroundAndInitials(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 71
    iget v2, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 72
    iget p1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    if-ltz v2, :cond_1

    if-ltz p1, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 75
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->u:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x12

    invoke-virtual {v0, v3, v2, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 79
    :cond_1
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    return-void
.end method
