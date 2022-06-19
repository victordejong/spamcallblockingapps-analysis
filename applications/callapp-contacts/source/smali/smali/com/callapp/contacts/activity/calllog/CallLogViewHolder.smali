.class public Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;
    }
.end annotation


# static fields
.field private static final B:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:I

.field private D:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private E:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/FrameLayout;

.field private L:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

.field private M:Landroid/widget/ImageView;

.field private N:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

.field private O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private final y:Ljava/lang/String;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->B:Landroidx/b/e;

    .line 74
    new-instance v0, Landroidx/b/e;

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->C:Landroidx/b/e;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->z:I

    const v0, 0x7f120198

    .line 99
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->y:Ljava/lang/String;

    const v0, 0x7f0601cc

    .line 100
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->A:I

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v1, 0x7f0a06ed

    .line 102
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    const v1, 0x7f0a0614

    .line 104
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    const-string v2, "rowCallLogName"

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a06ac

    .line 106
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    .line 107
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a01a0

    .line 108
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->J:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a01a3

    .line 110
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->K:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0431

    .line 112
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->L:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    const v0, 0x7f0a091a

    .line 113
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->H:Landroid/widget/TextView;

    const v0, 0x7f0a0438

    .line 114
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->I:Landroid/widget/TextView;

    const v0, 0x7f0a081a

    .line 115
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->M:Landroid/widget/ImageView;

    .line 116
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f0601ec

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->u:I

    .line 117
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f060088

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->v:I

    .line 118
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f060113

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->w:I

    .line 119
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f0601db

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 239
    iget-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V
    .locals 2

    .line 305
    invoke-static {p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 306
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    if-nez p1, :cond_0

    .line 307
    new-instance p1, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Z)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    .line 316
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 318
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->setFirstRowTextStyle(I)V

    .line 319
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->v:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->v:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->H:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->v:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 323
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    if-eqz p1, :cond_5

    .line 324
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 325
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->O:Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    :cond_5
    const/4 p1, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->setFirstRowTextStyle(I)V

    .line 328
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->u:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->w:I

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->H:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->x:I

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->w:I

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    :goto_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->J:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p2, :cond_9

    const p2, 0x7f0601db

    goto :goto_7

    :cond_9
    const p2, 0x7f060088

    :goto_7
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V
    .locals 8

    .line 269
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->normalNumbers:Ljava/util/List;

    invoke-static {v1, p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    iget v1, p3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->numberMatchIndexStart:I

    .line 271
    iget v2, p3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->numberMatchIndexEnd:I

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 274
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->v:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x12

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 280
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 287
    :goto_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object v4, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    iget-object v5, p3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->textHighlights:Landroid/util/SparseIntArray;

    iget v6, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->v:I

    const/16 v7, 0x2d

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {p1, v5, v6, v7}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/Character;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_1
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_2
    sget-object p1, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->C:Landroidx/b/e;

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, p3, v2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 235
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 236
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 237
    iget-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Lcom/callapp/contacts/activity/calllog/-$$Lambda$CallLogViewHolder$fFzbVZ9SSnoFsJP1czzdrrB62Ws;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/-$$Lambda$CallLogViewHolder$fFzbVZ9SSnoFsJP1czzdrrB62Ws;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    new-instance v2, Lcom/callapp/contacts/activity/calllog/-$$Lambda$CallLogViewHolder$LAMkhKYEk_Po9n1XWXhBLjJr4Ts;

    invoke-direct {v2, p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/-$$Lambda$CallLogViewHolder$LAMkhKYEk_Po9n1XWXhBLjJr4Ts;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-static {p3, v1, v2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {p3, v1, p1, v0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 245
    :goto_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 246
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object p3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return v0
.end method

.method private static a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)Z
    .locals 6

    .line 337
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 338
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x5

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    return v2

    .line 342
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 343
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getAggregateSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->N:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    return-object p0
.end method

.method private synthetic b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 238
    iget-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public static synthetic lambda$7EexOTPFl-VtwLIE11l0faWwbN8(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$LAMkhKYEk_Po9n1XWXhBLjJr4Ts(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$fFzbVZ9SSnoFsJP1czzdrrB62Ws(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static n()V
    .locals 1

    .line 93
    sget-object v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->B:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    return-void
.end method

.method static synthetic o()Landroidx/b/e;
    .locals 1

    .line 62
    sget-object v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->B:Landroidx/b/e;

    return-object v0
.end method

.method static synthetic p()Landroidx/b/e;
    .locals 1

    .line 62
    sget-object v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->C:Landroidx/b/e;

    return-object v0
.end method

.method private setFirstRowTextStyle(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Date;I)Ljava/lang/CharSequence;
    .locals 0

    .line 213
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/Date;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v1, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$1;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 233
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p2

    if-nez p2, :cond_0

    .line 234
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->K:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/callapp/contacts/activity/calllog/-$$Lambda$CallLogViewHolder$7EexOTPFl-VtwLIE11l0faWwbN8;

    invoke-direct {p3, p0, p1, p4}, Lcom/callapp/contacts/activity/calllog/-$$Lambda$CallLogViewHolder$7EexOTPFl-VtwLIE11l0faWwbN8;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 7

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->N:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 140
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 1253
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1254
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->K:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-static {p2, p1, p3}, Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 147
    iget-object p2, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    .line 148
    sget-object p3, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->C:Landroidx/b/e;

    invoke-virtual {p3, p2}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 149
    :goto_0
    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f060244

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    .line 150
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->y:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v5, 0x7f08037a

    invoke-direct {v2, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 1371
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 153
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->z:I

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2354
    iput-object v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 2449
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 3307
    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 155
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    iget-object v5, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 159
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getVoiceMailName()Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_3
    iget-object v5, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->G:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v5, 0x7f08037c

    invoke-direct {v2, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 3371
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 165
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->z:I

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4354
    iput-object v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 4449
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 5307
    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 167
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V

    goto :goto_1

    .line 169
    :cond_4
    sget-object p3, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->B:Landroidx/b/e;

    invoke-virtual {p3, p2}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 170
    iget-object p3, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0, p2, p3, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V

    .line 173
    :goto_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isChecked()Z

    move-result p3

    invoke-virtual {p2, p3, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 176
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCallLogs()Ljava/util/List;

    move-result-object p2

    .line 177
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    .line 179
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_5
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_DATE:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 183
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->L:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    invoke-static {p3, p2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/List;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V

    goto :goto_3

    .line 188
    :cond_6
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_FREQ:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    if-ne p2, p3, :cond_8

    .line 189
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTotalInteractionCount()I

    move-result p2

    if-lez p2, :cond_7

    .line 191
    iget-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->I:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->I:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->L:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    invoke-virtual {p2, v4}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setVisibility(I)V

    .line 194
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->H:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 196
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->L:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setVisibility(I)V

    .line 197
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->H:Landroid/widget/TextView;

    iget-object p3, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getDateType()I

    move-result v2

    invoke-virtual {p0, p3, v2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Ljava/util/Date;I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->H:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->I:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6218
    :cond_8
    :goto_4
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 204
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq p2, p3, :cond_a

    .line 205
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->M:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->M:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result p1

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->A:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, p1, p3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void

    .line 208
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->M:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final a(ZLcom/callapp/framework/phone/Phone;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 371
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(ZLcom/callapp/framework/phone/Phone;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;)Z
    .locals 2

    .line 361
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->N:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->N:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
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

    .line 129
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->E:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public getView()Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 124
    new-instance v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$1;)V

    return-object v0
.end method
