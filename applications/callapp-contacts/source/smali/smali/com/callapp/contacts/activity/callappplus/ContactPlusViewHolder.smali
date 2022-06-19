.class public Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;,
        Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;,
        Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;
    }
.end annotation


# static fields
.field private static final M:Landroidx/b/e;
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

.field private D:Landroid/widget/FrameLayout;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/TextView;

.field private N:Z

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/view/View;

.field private final R:Z

.field private v:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->u:I

    .line 79
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->M:Landroidx/b/e;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;II)V
    .locals 3

    .line 96
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->R:Z

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0a01c0

    .line 98
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f060088

    .line 99
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0a06ed

    .line 100
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v2, 0x1

    .line 101
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    const v1, 0x7f0a0614

    .line 102
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->x:Landroid/widget/TextView;

    const v1, 0x7f0a06ac

    .line 103
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->y:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->z:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->A:Landroid/widget/FrameLayout;

    .line 107
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->z:Landroid/widget/ImageView;

    const p3, 0x7f080427

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, p3, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    :cond_0
    const p2, 0x7f0a091a

    .line 109
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->B:Landroid/widget/TextView;

    const p3, 0x7f0601cc

    .line 110
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a0a75

    .line 111
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->C:Landroid/widget/ImageView;

    const p2, 0x7f0a05eb

    .line 112
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->D:Landroid/widget/FrameLayout;

    const p2, 0x7f0a05ea

    .line 113
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->E:Landroid/widget/ImageView;

    const p2, 0x7f0a086e

    .line 114
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->F:Landroid/widget/ImageView;

    const p2, 0x7f0a043f

    .line 115
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->P:Landroid/widget/TextView;

    const p3, 0x7f12034f

    .line 116
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00c2

    .line 117
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->O:Landroid/widget/TextView;

    const p3, 0x7f120085

    .line 118
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0811

    .line 119
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->L:Landroid/widget/TextView;

    const p2, 0x7f0a00c6

    .line 120
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->G:Landroid/widget/LinearLayout;

    const p2, 0x7f0a00c1

    .line 121
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->H:Landroid/widget/ImageView;

    const p2, 0x7f0a0810

    .line 122
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->I:Landroid/widget/LinearLayout;

    const p2, 0x7f0a080f

    .line 123
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->J:Landroid/widget/ImageView;

    const p2, 0x7f0a0333

    .line 124
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->Q:Landroid/view/View;

    .line 126
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 223
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setTextColors(Z)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 219
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 220
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 221
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusViewHolder$8L6n8jHENAJOyhEY9qIhxOca2RQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusViewHolder$8L6n8jHENAJOyhEY9qIhxOca2RQ;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    new-instance v2, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusViewHolder$ngRZoMiIOMZPNLcirI1FMal8PUU;

    invoke-direct {v2, p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusViewHolder$ngRZoMiIOMZPNLcirI1FMal8PUU;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-static {p3, v1, v2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {p3, v1, p1, v0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->D:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private synthetic b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 222
    iget-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public static synthetic lambda$8L6n8jHENAJOyhEY9qIhxOca2RQ(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$fIRii1fJQ9TI5RM92d-KrghbVCA(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ngRZoMiIOMZPNLcirI1FMal8PUU(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic n()Landroidx/b/e;
    .locals 1

    .line 57
    sget-object v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->M:Landroidx/b/e;

    return-object v0
.end method

.method private setComIcon(II)V
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->C:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private setProfileText(Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextColors(Z)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->x:Landroid/widget/TextView;

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

    .line 407
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v2, 0x7f0601db

    goto :goto_1

    :cond_1
    const v2, 0x7f0601cc

    :goto_1
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->z:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f060088

    :goto_2
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
    .locals 7

    .line 264
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getContactId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 1193
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1194
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->A:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$2;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->D:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$3;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1218
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->A:Landroid/widget/FrameLayout;

    new-instance p4, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusViewHolder$fIRii1fJQ9TI5RM92d-KrghbVCA;

    invoke-direct {p4, p0, p1, v0}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusViewHolder$fIRii1fJQ9TI5RM92d-KrghbVCA;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1233
    :cond_1
    iget-object p2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->isStarred()Z

    move-result p2

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->N:Z

    .line 1234
    iget-object p4, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->L:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const p2, 0x7f1205d4

    goto :goto_0

    :cond_2
    const p2, 0x7f120638

    :goto_0
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->I:Landroid/widget/LinearLayout;

    new-instance p4, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$4;

    invoke-direct {p4, p0, p3, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$4;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->H:Landroid/widget/ImageView;

    const p4, 0x7f080462

    invoke-static {p2, p4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 1247
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->G:Landroid/widget/LinearLayout;

    new-instance p5, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;

    invoke-direct {p5, p0, p3, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 2164
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance p3, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;

    const/4 p5, 0x6

    invoke-direct {p3, p0, p5, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;ILcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;

    invoke-direct {p3, p0, p5, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;ILcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    .line 285
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 287
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    .line 288
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 290
    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const p5, 0x7f1203a4

    new-array v0, v1, [Ljava/lang/Object;

    .line 291
    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v2, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    aput-object v2, v0, p3

    invoke-static {p5, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 293
    :cond_3
    invoke-static {p5}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    :goto_1
    sget p5, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->u:I

    .line 2364
    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2366
    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    goto :goto_2

    .line 2369
    :cond_4
    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p5}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 2372
    :goto_2
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 2373
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setProfileText(Ljava/lang/String;)V

    .line 301
    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 304
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v2, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    .line 306
    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-static {p2, v2, v0, p5}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;II)Landroid/text/SpannableString;

    move-result-object p2

    goto :goto_4

    .line 302
    :cond_6
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 310
    :goto_4
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->normalNumbers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 311
    iget v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    if-ltz v2, :cond_7

    iget v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    if-ltz v2, :cond_7

    iget v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v2, v3, :cond_7

    iget v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    .line 312
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v2, v3, :cond_7

    .line 313
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget p5, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexStart:I

    iget v3, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->numberMatchIndexEnd:I

    const/16 v4, 0x12

    invoke-virtual {v0, v2, p5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 318
    :cond_7
    new-instance p5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->F:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->F:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p5, v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p5, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p5

    .line 319
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    .line 2466
    iput v3, p5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    .line 320
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadgeColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3354
    iput-object v3, p5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 3371
    iput-boolean v1, p5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 320
    invoke-virtual {p5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 321
    iget-object p5, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object p5, p5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-static {p5}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;)I

    move-result p5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadgeColor()I

    move-result v3

    invoke-direct {p0, p5, v3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setComIcon(II)V

    .line 322
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setTimeText(Ljava/lang/CharSequence;)V

    .line 324
    sget-object p2, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->M:Landroidx/b/e;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->setTextColors(Z)V

    .line 325
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->K:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p5, 0x7f07017a

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 4344
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->x:Landroid/widget/TextView;

    const p2, 0x7f0601ec

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4345
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->L:Landroid/widget/TextView;

    const p2, 0x7f0601cc

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4346
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->O:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4347
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->P:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4348
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->y:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4349
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->Q:Landroid/view/View;

    const p5, 0x7f0600f3

    invoke-static {p5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4350
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->H:Landroid/widget/ImageView;

    invoke-static {p1, p4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 4351
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->H:Landroid/widget/ImageView;

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4352
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->E:Landroid/widget/ImageView;

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p2, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4353
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    const p2, 0x7f0800af

    if-eqz p1, :cond_a

    .line 4354
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->K:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p4

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-static {p1, p2, p4, p5, p3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 4355
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->J:Landroid/widget/ImageView;

    iget-boolean p4, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->N:Z

    if-eqz p4, :cond_9

    const p4, 0x7f080464

    goto :goto_6

    :cond_9
    const p4, 0x7f080463

    :goto_6
    invoke-static {p1, p4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    goto :goto_8

    .line 4358
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->K:Landroid/widget/LinearLayout;

    const p4, 0x7f06010e

    invoke-static {p4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p5

    invoke-static {p4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p4

    invoke-static {p1, p2, p5, p4, p3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 4359
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->J:Landroid/widget/ImageView;

    iget-boolean p4, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->N:Z

    if-eqz p4, :cond_b

    const p4, 0x7f080465

    goto :goto_7

    :cond_b
    const p4, 0x7f080466

    :goto_7
    invoke-static {p1, p4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 5331
    :goto_8
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gv:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->R:Z

    if-eqz p1, :cond_f

    .line 5332
    :cond_c
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    check-cast p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 5333
    iget-object p4, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object p4, p4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget p4, p4, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->index:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 5334
    iget-boolean p5, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->R:Z

    if-eqz p5, :cond_d

    sget-object p5, Lcom/callapp/contacts/manager/preferences/Prefs;->gv:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget-object p5, p5, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->defaultValue:Ljava/lang/Object;

    goto :goto_9

    :cond_d
    sget-object p5, Lcom/callapp/contacts/manager/preferences/Prefs;->gv:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p5

    :goto_9
    check-cast p5, Ljava/lang/String;

    invoke-static {p5, p4}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_f

    .line 5335
    iget-object p5, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->K:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    iget-object p1, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-eqz v0, :cond_e

    iget p1, p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->colorLight:I

    goto :goto_a

    :cond_e
    iget p1, p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->colorDark:I

    :goto_a
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {p5, p2, p1, p3, p3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 5336
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->R:Z

    if-nez p1, :cond_f

    .line 5337
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gv:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, ""

    invoke-static {p2, p4, p3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_f
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

    .line 156
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 1

    .line 151
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)V

    return-object v0
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhone(Ljava/lang/CharSequence;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTimeText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
