.class public final Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;,
        Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 #2\u001a\u0012\n\u0012\u0008\u0018\u00010\u0002R\u00020\u0000\u0012\n\u0012\u0008\u0018\u00010\u0003R\u00020\u00000\u0001:\u0003#$%B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0008H\u0016J\u0016\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0014J\u001e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0018\u0010\u001c\u001a\u0008\u0018\u00010\u0002R\u00020\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\nH\u0016J\u001e\u0010 \u001a\u00020\u00162\u000c\u0010!\u001a\u0008\u0018\u00010\u0003R\u00020\u00002\u0006\u0010\"\u001a\u00020\nH\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006&"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
        "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;",
        "presentersContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V",
        "cardPriority",
        "",
        "shouldShowCard",
        "",
        "getShouldShowCard",
        "()Z",
        "setShouldShowCard",
        "(Z)V",
        "getHeaderTitle",
        "",
        "getListenFields",
        "",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getPriority",
        "onBindViewHolder",
        "",
        "cardViewHolder",
        "onContactChanged",
        "contact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "changedFields",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "showShouldExpandButton",
        "updateCardData",
        "data",
        "forceRefresh",
        "Companion",
        "ShareAppCViewHolder",
        "ShareAppObject",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion;

.field public static final NUMBER_OF_CALLS_TO_CHANGE_PRIORITY:I = 0x4b


# instance fields
.field private cardPriority:I

.field private shouldShowCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->Companion:Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const-string v0, "presentersContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0265

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/16 p1, 0xc

    .line 37
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->cardPriority:I

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v0, "ReferAndEarnFeature"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    sget-object p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->shouldShowCard:Z

    return-void
.end method

.method public static final synthetic access$getCardPriority$p(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->cardPriority:I

    return p0
.end method

.method public static final synthetic access$getPresentersContainer$p(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method public static final synthetic access$setCardPriority$p(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->cardPriority:I

    return-void
.end method


# virtual methods
.method public final getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListenFields()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    check-cast v0, Ljava/lang/Enum;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getPriority()I
    .locals 2

    .line 88
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.isPremium.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc3

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hv:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4b

    if-nez v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/16 v0, 0xaf

    .line 88
    :goto_0
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->cardPriority:I

    return v0
.end method

.method public final getShouldShowCard()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->shouldShowCard:Z

    return v0
.end method

.method protected final onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f0601ec

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 122
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardDescription()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1205ae

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardDescription()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardName()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getDivider()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    sget-object v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardButton()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x7f060051

    .line 128
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v2, 0x7f060244

    .line 129
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 130
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 132
    new-instance v7, Landroid/text/SpannableString;

    const v0, 0x7f1205aa

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f08058d

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    .line 137
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const-string v2, "presentersContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const-string v3, "presentersContainer.contact"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1371
    iput-boolean v4, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1449
    iput-boolean v4, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 138
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 139
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardName()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1203d9

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;->getShareCardButton()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;)V

    return-void
.end method

.method public final onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changedFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->hideCard()V

    .line 74
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.alwaysShowReferAndEarnCard.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->showCard(Z)V

    return-void

    .line 77
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isInstalledApp()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 78
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->shouldShowCard:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "contact.phone.asGlobalNumber()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->isContactInvited(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 79
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hv:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1039
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 80
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->showCard(Z)V

    :cond_2
    return-void
.end method

.method protected final onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final setShouldShowCard(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->shouldShowCard:Z

    return-void
.end method

.method public final showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final updateCardData(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;Z)V

    return-void
.end method
