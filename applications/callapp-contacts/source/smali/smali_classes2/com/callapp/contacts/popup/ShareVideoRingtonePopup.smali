.class public final Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001QB#\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010:\u001a\u00020\tH\u0005J\u0008\u0010;\u001a\u00020<H\u0016J\u000e\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0012\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010)H\u0016J\u0012\u0010A\u001a\u00020?2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0014J\u0012\u0010D\u001a\u00020?2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0014J\u001a\u0010E\u001a\u00020)2\u0006\u0010F\u001a\u00020G2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u00020)H\u0002J\u0018\u0010O\u001a\u00020?2\u0006\u0010N\u001a\u00020)2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010P\u001a\u00020?2\u0006\u0010N\u001a\u00020)H\u0002R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020)X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006R"
    }
    d2 = {
        "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;",
        "Lcom/callapp/contacts/manager/popup/DialogPopup;",
        "Landroid/view/View$OnClickListener;",
        "videoUrlDetailsData",
        "",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
        "shareVideoRingtonePopUpInterface",
        "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;",
        "type",
        "",
        "(Ljava/util/List;Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;I)V",
        "carouselRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getCarouselRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setCarouselRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "itemAdapter",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;",
        "getItemAdapter",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;",
        "itemAdapter$delegate",
        "Lkotlin/Lazy;",
        "multiTaskRunner",
        "Lcom/callapp/contacts/framework/util/MultiTaskRunner;",
        "getMultiTaskRunner",
        "()Lcom/callapp/contacts/framework/util/MultiTaskRunner;",
        "setMultiTaskRunner",
        "(Lcom/callapp/contacts/framework/util/MultiTaskRunner;)V",
        "personalStoreItemDetailsData",
        "getPersonalStoreItemDetailsData",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
        "setPersonalStoreItemDetailsData",
        "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V",
        "progress",
        "Landroid/widget/ProgressBar;",
        "getProgress",
        "()Landroid/widget/ProgressBar;",
        "setProgress",
        "(Landroid/widget/ProgressBar;)V",
        "rightShareButtonFrame",
        "Landroid/view/View;",
        "getRightShareButtonFrame",
        "()Landroid/view/View;",
        "setRightShareButtonFrame",
        "(Landroid/view/View;)V",
        "getShareVideoRingtonePopUpInterface",
        "()Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;",
        "setShareVideoRingtonePopUpInterface",
        "(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getVideoUrlDetailsData",
        "()Ljava/util/List;",
        "setVideoUrlDetailsData",
        "(Ljava/util/List;)V",
        "getLayoutResource",
        "getPopupType",
        "Lcom/callapp/contacts/manager/popup/Popup$DialogType;",
        "initShareData",
        "onClick",
        "",
        "v",
        "onDialogCancelled",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onDialogDismissed",
        "ovViewCreated",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setDialogWindowSize",
        "window",
        "Landroid/view/Window;",
        "setupCommonViews",
        "itemView",
        "setupMultiContactsViews",
        "setupSingleContactViews",
        "ShareVideoRingtonePopUpInterface",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/ProgressBar;

.field public c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

.field public d:Landroid/view/View;

.field private e:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

.field private final f:Lkotlin/Lazy;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;

.field private i:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;",
            "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;",
            "I)V"
        }
    .end annotation

    const-string v0, "videoUrlDetailsData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareVideoRingtonePopUpInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->h:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;

    iput p3, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->i:I

    .line 55
    new-instance p1, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;-><init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getItemAdapter()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 12

    .line 3237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3238
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v1

    const-string v2, "callLogData"

    .line 3239
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 3287
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 3240
    instance-of v3, v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    if-eqz v3, :cond_0

    .line 3241
    iget-object v2, v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3245
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3246
    new-instance v2, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 3247
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 3248
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v4

    .line 3249
    new-instance v5, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    sget-object v10, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v10, v6, v7

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v5

    .line 3250
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    const-string v7, "mci"

    .line 3251
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    const-string v10, "mci.phone"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v7

    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v7, v10, :cond_2

    iget-boolean v7, v6, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    if-nez v7, :cond_3

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    new-array v10, v9, [Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v7, v10}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3252
    :cond_3
    new-instance v7, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;

    invoke-direct {v7, v5, v6, v3, v1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$2;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;)V

    check-cast v7, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v2, v7}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_1

    .line 3265
    :cond_4
    invoke-virtual {v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 3266
    check-cast v1, Ljava/lang/Iterable;

    .line 3289
    new-instance v0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$initShareData$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v1, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final a(Landroid/view/View;I)V
    .locals 9

    const v0, 0x7f0a060a

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a080e

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a080b

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01f8

    .line 176
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a080d

    .line 177
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0336

    .line 178
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0334

    .line 179
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "multiContactShareFrame"

    .line 181
    invoke-static {v0, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "shareVideoBodyImage"

    .line 182
    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a01f7

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "itemView.findViewById(R.id.carouselRecyclerView)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a06f7

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "itemView.findViewById(R.id.progressBar)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->b:Landroid/widget/ProgressBar;

    .line 186
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;-><init>()V

    .line 187
    iget-object v4, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v8, "carouselRecyclerView"

    if-nez v4, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v4}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    const-string v0, "shareVideoTitle"

    .line 189
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1201a8

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "shareVideoBody"

    .line 190
    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1201a6

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "carouselTitle"

    .line 192
    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1200be

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 195
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0600f3

    .line 197
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f060088

    .line 200
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v7, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 203
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getItemAdapter()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 206
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->isHighLight()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    if-eqz v0, :cond_6

    .line 208
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_8

    .line 212
    iget-object p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->b:Landroid/widget/ProgressBar;

    if-nez p2, :cond_7

    const-string v0, "progress"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    new-instance p2, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;-><init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;I)V

    .line 228
    invoke-virtual {p2}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 230
    :cond_8
    iget-object p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    .line 231
    invoke-direct {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getItemAdapter()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a(Ljava/util/List;Ljava/lang/Integer;)V

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->d:Landroid/view/View;

    if-nez p1, :cond_9

    const-string p2, "rightShareButtonFrame"

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final getItemAdapter()Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    return-object v0
.end method

.method private final setupCommonViews(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0765

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.rightShareButtonFrame)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->d:Landroid/view/View;

    const v0, 0x7f0a0571

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0764

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0570

    .line 104
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0311

    .line 105
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "rightShareButton"

    .line 107
    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f120629

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "leftShareButton"

    .line 108
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1204d2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0601ec

    .line 110
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->d:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v3, "rightShareButtonFrame"

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    move-object v3, p0

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060026

    .line 115
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 116
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080487

    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f060244

    .line 117
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    const/4 v0, 0x0

    .line 118
    invoke-virtual {v1, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupSingleContactViews(Landroid/view/View;)V
    .locals 14

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    iput-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    const v0, 0x7f0a0311

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0822

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a080e

    .line 133
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a080b

    .line 134
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a028e

    .line 135
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0821

    .line 136
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/widget/ProfilePictureView;

    const v7, 0x7f0a051a

    .line 137
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v7, "singleContactShareFrame"

    .line 139
    invoke-static {v2, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    new-instance v2, Landroidx/constraintlayout/widget/c;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 142
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-string v7, "dialogFrame"

    .line 143
    invoke-static {v0, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v11

    const v9, 0x7f0a080e

    const/4 v10, 0x7

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    .line 144
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v11

    const v9, 0x7f0a080c

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    .line 145
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-string v0, "shareVideoTitle"

    .line 147
    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120634

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 148
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    const-string v2, "shareVideoBody"

    .line 149
    invoke-static {v4, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f12062a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120873

    .line 151
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    const-string v9, "personalStoreItemDetailsData"

    if-nez v8, :cond_0

    invoke-static {v9}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    new-instance v8, Landroid/text/SpannableString;

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    invoke-direct {v8, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v11, 0x21

    invoke-virtual {v8, v10, v2, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v2, "contactNameToShare"

    .line 157
    invoke-static {v5, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    if-nez v2, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v7, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    if-nez v7, :cond_2

    invoke-static {v9}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 1449
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 2371
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 159
    invoke-virtual {v6, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 160
    invoke-virtual {v6, v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    const-string v0, "infoTexSingle"

    .line 161
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1201a7

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 163
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->d:Landroid/view/View;

    if-nez p1, :cond_3

    const-string v0, "rightShareButtonFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final getLayoutResource()I
    .locals 1

    const v0, 0x7f0d026c

    return v0
.end method

.method public final getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 85
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->roundedCenter:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public final getProgress()Landroid/widget/ProgressBar;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progress"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRightShareButtonFrame()Landroid/view/View;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "rightShareButtonFrame"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVideoUrlDetailsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a0765

    if-ne v0, v1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->h:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;

    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    if-nez v0, :cond_2

    const-string v1, "personalStoreItemDetailsData"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V

    .line 92
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->dismiss()V

    return-void

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    return-void

    .line 94
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0a0571

    if-ne p1, v0, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->dismiss()V

    :cond_5
    return-void
.end method

.method public final onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 123
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->dismiss()V

    return-void
.end method

.method public final onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->e:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d()V

    .line 278
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogDismissed(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->setupCommonViews(Landroid/view/View;)V

    .line 69
    iget p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->i:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v0, :cond_2

    .line 73
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->setupSingleContactViews(Landroid/view/View;)V

    goto :goto_0

    .line 75
    :cond_2
    iget p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->i:I

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a(Landroid/view/View;I)V

    :goto_0
    return-object p1
.end method

.method public final setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public final setPersonalStoreItemDetailsData(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    return-void
.end method

.method public final setVideoUrlDetailsData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->g:Ljava/util/List;

    return-void
.end method
