.class public Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$ContactListAdapterDataLoadTask;
    }
.end annotation


# static fields
.field private static final u:I

.field private static final v:Ljava/lang/String;


# instance fields
.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->u:I

    const-string v0, "line.separator"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a06ed

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a028d

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->x:Landroid/widget/TextView;

    const v0, 0x7f0601cc

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 7

    .line 62
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getContactId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 65
    iget-object p3, p1, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->displayName:Ljava/lang/String;

    const-string v0, "\\s+"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v4, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p3, p1, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    sget v1, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->u:I

    invoke-static {p3, v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object p3

    .line 75
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object p3, p1, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 81
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getBadgeResId()I

    move-result p3

    if-eqz p3, :cond_2

    .line 82
    iget-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getBadgeResId()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isShouldGrey()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 86
    iget-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setAlpha(F)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setAlpha(F)V

    .line 91
    :goto_1
    iget-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;-><init>(Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;)V

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLoaderLoadFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_LOAD_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 40
    new-instance v0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$ContactListAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;)V

    return-object v0
.end method
