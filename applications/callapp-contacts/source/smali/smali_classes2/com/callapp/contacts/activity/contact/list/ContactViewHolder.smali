.class public Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$ContactListAdapterDataLoadTask;
    }
.end annotation


# static fields
.field protected static final u:I


# instance fields
.field private v:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->u:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 4

    .line 53
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0a06ed

    .line 55
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    :cond_0
    const v0, 0x7f0a0614

    .line 59
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f0601ec

    .line 61
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->x:Landroid/widget/TextView;

    const-string v1, "ContactName"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a06ac

    .line 64
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0x7f060113

    .line 66
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v0, 0x7f0a01a0

    .line 68
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a01a3

    .line 69
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 71
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 139
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 135
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 136
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 137
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactViewHolder$226U8X3j3p5ySUV9oIIe0zRebqo;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactViewHolder$226U8X3j3p5ySUV9oIIe0zRebqo;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactViewHolder$ZWKZ3F3JtLoxZHKu-GxBxOOyTlk;

    invoke-direct {v2, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactViewHolder$ZWKZ3F3JtLoxZHKu-GxBxOOyTlk;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-static {p3, v1, v2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {p3, v1, p1, v0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    :goto_0
    return v0
.end method

.method private synthetic b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 138
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public static synthetic lambda$226U8X3j3p5ySUV9oIIe0zRebqo(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$ZWKZ3F3JtLoxZHKu-GxBxOOyTlk(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$_8XAo744M5skHYVMoqIXmbLUwRI(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$3;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
    .locals 7

    .line 182
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getContactId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    if-eqz p2, :cond_1

    .line 1124
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1125
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->z:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->z:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactViewHolder$_8XAo744M5skHYVMoqIXmbLUwRI;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactViewHolder$_8XAo744M5skHYVMoqIXmbLUwRI;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-static {p3, p1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 1150
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;

    invoke-direct {p3, p0, p1, p4}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isChecked()Z

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setViewTexts(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

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

    .line 104
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_LOAD_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public getView()Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 99
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$ContactListAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhone(Ljava/lang/CharSequence;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setPhotoBackgroundAndInitials(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 4

    .line 215
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f060244

    .line 216
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    .line 2082
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v3, 0x7f08037c

    invoke-direct {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2083
    invoke-virtual {v2, p1, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    .line 2084
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2354
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 2491
    iput v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    const/4 v0, 0x1

    .line 3371
    iput-boolean v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2086
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    .line 4307
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 218
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setProfileText(Ljava/lang/String;)V

    return-void
.end method

.method setProfileText(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setViewTexts(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 207
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setPhotoBackgroundAndInitials(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 210
    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    return-void
.end method
