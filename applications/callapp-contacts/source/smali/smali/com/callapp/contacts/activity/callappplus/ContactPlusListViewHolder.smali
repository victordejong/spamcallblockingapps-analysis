.class public Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;,
        Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;
    }
.end annotation


# static fields
.field private static final F:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:I


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/FrameLayout;

.field private v:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->u:I

    .line 69
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->F:Landroidx/b/e;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;II)V
    .locals 4

    .line 81
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f060088

    .line 83
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0a06ed

    .line 84
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    const v1, 0x7f0a0614

    .line 86
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->x:Landroid/widget/TextView;

    const v1, 0x7f0a06ac

    .line 87
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->y:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->z:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->A:Landroid/widget/FrameLayout;

    .line 91
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->z:Landroid/widget/ImageView;

    const p3, 0x7f080427

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, p3, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    :cond_1
    const p2, 0x7f0a091a

    .line 94
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->B:Landroid/widget/TextView;

    const p3, 0x7f0601cc

    .line 95
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a0a75

    .line 96
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->C:Landroid/widget/ImageView;

    const p2, 0x7f0a0575

    .line 97
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->D:Landroid/widget/ImageView;

    const p2, 0x7f0a0576

    .line 98
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->E:Landroid/widget/FrameLayout;

    .line 99
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->D:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->E:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 198
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setTextColors(Z)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 194
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 195
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 196
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$R5PwF3Kjh6ieaWYFpOirF32DOhc;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$R5PwF3Kjh6ieaWYFpOirF32DOhc;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    new-instance v2, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;

    invoke-direct {v2, p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-static {p3, v1, v2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

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

    .line 197
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public static synthetic lambda$R5PwF3Kjh6ieaWYFpOirF32DOhc(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$UQcg-sTASlDKWlglBvbwa_99gQ8(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$q-rSN_ZvrLMpSWKgAj95bmDGQMw(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic n()Landroidx/b/e;
    .locals 1

    .line 54
    sget-object v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->F:Landroidx/b/e;

    return-object v0
.end method

.method private setComIcon(II)V
    .locals 2

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->C:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private setProfileText(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextColors(Z)V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->x:Landroid/widget/TextView;

    const v1, 0x7f0601db

    if-eqz p1, :cond_0

    const v2, 0x7f0601db

    goto :goto_0

    :cond_0
    const v2, 0x7f0601ec

    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v2, 0x7f0601db

    goto :goto_1

    :cond_1
    const v2, 0x7f0601cc

    :goto_1
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->z:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f060088

    if-eqz p1, :cond_2

    const v4, 0x7f0601db

    goto :goto_2

    :cond_2
    const v4, 0x7f060088

    :goto_2
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 357
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const v1, 0x7f060088

    :goto_3
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$3;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p2

    if-nez p2, :cond_0

    .line 193
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->A:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$UQcg-sTASlDKWlglBvbwa_99gQ8;

    invoke-direct {p3, p0, p1, p4}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$UQcg-sTASlDKWlglBvbwa_99gQ8;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 7

    .line 246
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getContactId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 1170
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1171
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->A:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_0
    sget-object p3, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    const-string v0, "CallAppPlus"

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 249
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-static {p3, p1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 2143
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance p3, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$1;

    const/4 v0, 0x5

    invoke-direct {p3, p0, v0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$1;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;ILcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;

    invoke-direct {p3, p0, v0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;ILcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    .line 266
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 269
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 272
    iget-object v1, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const v0, 0x7f1203a4

    new-array v1, v2, [Ljava/lang/Object;

    .line 273
    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    aput-object v3, v1, p3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 279
    :goto_0
    sget v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->u:I

    .line 2310
    iget-object v1, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2312
    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_1

    .line 2315
    :cond_2
    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-static {v1, v3, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object v3

    .line 2318
    :goto_1
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 2319
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setProfileText(Ljava/lang/String;)V

    .line 283
    iget-object v1, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 286
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    .line 288
    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-static {p2, v3, v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;II)Landroid/text/SpannableString;

    move-result-object p2

    goto :goto_3

    .line 284
    :cond_4
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    :goto_3
    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->normalNumbers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 293
    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    if-ltz v3, :cond_5

    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    if-ltz v3, :cond_5

    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-gt v3, v4, :cond_5

    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    .line 294
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 295
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    iget v4, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    const/16 v5, 0x12

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 300
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadgeColor()I

    move-result v0

    .line 301
    iget-object v3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 302
    iget-object v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setComIcon(II)V

    .line 304
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setTimeText(Ljava/lang/CharSequence;)V

    .line 306
    sget-object p2, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->F:Landroidx/b/e;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p3, 0x1

    :cond_6
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->setTextColors(Z)V

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

    .line 135
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 130
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhone(Ljava/lang/CharSequence;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTimeText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
