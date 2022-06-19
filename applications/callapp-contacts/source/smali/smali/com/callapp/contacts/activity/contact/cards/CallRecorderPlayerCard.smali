.class public Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/PauseListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;,
        Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;",
        ">;",
        "Lcom/callapp/contacts/event/listener/PauseListener;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;"
    }
.end annotation


# static fields
.field private static final THRESHOLD_LAST_CALL_SECONDS:J = 0x78L


# instance fields
.field private currentCallState:Lcom/callapp/contacts/model/call/CallState;

.field private droppyMenuPopup:Lcom/shehabic/droppy/DroppyMenuPopup;

.field private hasRecording:Z

.field private itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

.field private recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field private seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0143

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 66
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hasRecording:Z

    .line 71
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addPauseListener(Lcom/callapp/contacts/event/listener/PauseListener;)V

    .line 72
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Landroid/view/View;)Lcom/shehabic/droppy/DroppyMenuPopup;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->getDropDownMenu(Landroid/view/View;)Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/shehabic/droppy/DroppyMenuPopup;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->droppyMenuPopup:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Lcom/callapp/contacts/model/objectbox/CallRecorder;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Ljava/io/File;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->setInitialCardDetails(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Z)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hideCard()V

    return-void
.end method

.method private addItemWithoutArrow(Lcom/shehabic/droppy/DroppyMenuPopup$a;I)V
    .locals 2

    .line 222
    new-instance v0, Lcom/shehabic/droppy/b;

    const v1, 0x7f0d01f0

    invoke-direct {v0, v1}, Lcom/shehabic/droppy/b;-><init>(I)V

    .line 223
    invoke-direct {p0, v0, p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->setViewTextAndColor(Lcom/shehabic/droppy/b;I)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;

    return-void
.end method

.method private getDropDownMenu(Landroid/view/View;)Lcom/shehabic/droppy/DroppyMenuPopup;
    .locals 2

    .line 205
    new-instance v0, Lcom/shehabic/droppy/DroppyMenuPopup$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f120629

    .line 206
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->addItemWithoutArrow(Lcom/shehabic/droppy/DroppyMenuPopup$a;I)V

    .line 207
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getStarred()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120057

    .line 208
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->addItemWithoutArrow(Lcom/shehabic/droppy/DroppyMenuPopup$a;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f12003c

    .line 210
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->addItemWithoutArrow(Lcom/shehabic/droppy/DroppyMenuPopup$a;I)V

    :goto_0
    const p1, 0x7f120049

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->addItemWithoutArrow(Lcom/shehabic/droppy/DroppyMenuPopup$a;I)V

    .line 213
    invoke-virtual {v0}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a()Lcom/shehabic/droppy/DroppyMenuPopup$a;

    .line 215
    new-instance p1, Lcom/shehabic/droppy/b;

    const v1, 0x7f0d01ef

    invoke-direct {p1, v1}, Lcom/shehabic/droppy/b;-><init>(I)V

    const v1, 0x7f120157

    .line 216
    invoke-direct {p0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->setViewTextAndColor(Lcom/shehabic/droppy/b;I)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c()Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->droppyMenuPopup:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-object p1
.end method

.method private setInitialCardDetails(Ljava/io/File;)V
    .locals 8

    .line 179
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;-><init>()V

    .line 180
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/lang/String;)J

    move-result-wide v1

    const v3, 0x7f060088

    .line 182
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v4, 0x7f0601cc

    .line 183
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    .line 185
    new-instance v5, Ljava/util/Date;

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/callapp/contacts/util/date/DateUtils;->c(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1626
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->a:Ljava/lang/String;

    const p1, 0x7f130114

    .line 1627
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->b:I

    .line 1638
    iput v4, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->c:I

    .line 1643
    iput v4, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->f:I

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 189
    invoke-static {v4, v1, v2}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->a(IJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 2632
    :goto_0
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->d:Ljava/lang/String;

    .line 2633
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->e:I

    const p1, 0x7f080461

    .line 2654
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->i:I

    .line 2655
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->j:Ljava/lang/Integer;

    const p1, 0x7f080345

    .line 3648
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->g:I

    .line 3649
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->h:Ljava/lang/Integer;

    .line 191
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V

    .line 3660
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 199
    invoke-virtual {p0, v0, v4}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;Z)V

    return-void
.end method

.method private setViewTextAndColor(Lcom/shehabic/droppy/b;I)V
    .locals 4

    .line 228
    invoke-virtual {p1, p2}, Lcom/shehabic/droppy/b;->a(I)Lcom/shehabic/droppy/d;

    .line 229
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shehabic/droppy/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a05c4

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a00ed

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const v0, 0x7f0a08e7

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 238
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 239
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v0, 0x7f0a02a2

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 244
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private updateCard()Z
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getRecords()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 159
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 161
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDate()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 162
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v2, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 165
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 166
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->setInitialCardDetails(Ljava/io/File;)V

    .line 167
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->showCard(Z)V

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_2

    .line 170
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    :cond_2
    return v6

    :cond_3
    return v1
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 97
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->records:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;)V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getDateTitle()Ljava/lang/String;

    move-result-object v0

    .line 4431
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4432
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getDateStyle()I

    move-result v0

    .line 4437
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4438
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4439
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/callapp/contacts/util/ThemeUtils;->d(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4440
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;I)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getDateTitleColor()I

    move-result v0

    .line 4445
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 4446
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getDurationTitle()Ljava/lang/String;

    move-result-object v0

    .line 4451
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 4452
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getDurationStyle()I

    move-result v0

    .line 4457
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 4458
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 4459
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->d(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4460
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;I)V

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getDurationTitleColor()I

    move-result v0

    .line 4465
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 4466
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getLeftIconResId()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getLeftIconTintColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(ILjava/lang/Integer;)V

    .line 338
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getRightIconResId()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getRightIconTintColor()Ljava/lang/Integer;

    move-result-object v1

    .line 5407
    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;)V

    .line 339
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;->getRightIconClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 5471
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    .line 104
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 106
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hasRecording:Z

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hideCard()V

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz p1, :cond_1

    .line 110
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 117
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hasRecording:Z

    if-eqz p1, :cond_1

    .line 118
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hasRecording:Z

    .line 119
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->updateCard()Z

    :cond_1
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hasRecording:Z

    .line 127
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hideCard()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hideCard()V

    return-void

    .line 135
    :cond_1
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->records:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    sget-object p2, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, p2, :cond_3

    .line 137
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    .line 138
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->updateCard()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hideCard()V

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->hasRecording:Z

    :cond_4
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;
    .locals 4

    .line 320
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Landroid/view/View;)V

    .line 321
    new-instance p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->recorder:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    const-string v3, "From CD"

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/callapp/contacts/recorder/SeekBarManager;-><init>(Landroid/widget/SeekBar;Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;Lcom/callapp/contacts/model/objectbox/CallRecorder;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 360
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->onPausePlayerCard()V

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 375
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->onPausePlayerCard()V

    return-void
.end method

.method public onPausePlayerCard()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    :cond_0
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;Z)V
    .locals 1

    .line 5665
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$1;)V

    .line 344
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->itemObject:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject;

    .line 346
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz p1, :cond_0

    .line 347
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 59
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerCardListObject$Builder;Z)V

    return-void
.end method
