.class public Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

.field private h:Z

.field private i:Landroid/text/style/ClickableSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->f:I

    .line 63
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->i:Landroid/text/style/ClickableSpan;

    const p1, 0x7f060088

    .line 1103
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const p2, 0x7f0601ec

    .line 1104
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    .line 1106
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0d0139

    invoke-static {p3, v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p3, 0x7f0a0902

    .line 1108
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->b:Landroid/view/View;

    const p3, 0x7f0a0652

    .line 1109
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->e:Landroid/widget/ImageView;

    .line 1110
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 1111
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p3, 0x7f0a050e

    .line 1114
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->c:Landroid/widget/TextView;

    .line 1115
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1116
    new-instance p2, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    invoke-direct {p2}, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;-><init>()V

    .line 1117
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->i:Landroid/text/style/ClickableSpan;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;->setClickListener(Landroid/text/style/ClickableSpan;)V

    .line 1118
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p2, 0x7f0a08f0

    .line 1120
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/MaxHeightScrollView;

    .line 1121
    new-instance p3, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$2;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/MaxHeightScrollView;->setOnSizeChangedListener(Lcom/callapp/contacts/widget/OnSizeChangedListener;)V

    const p2, 0x7f0a0691

    .line 1129
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->d:Landroid/widget/TextView;

    .line 1130
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->f:I

    return p1
.end method

.method private a(Landroid/text/SpannableString;)Landroid/text/SpannableString;
    .locals 7

    .line 168
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 171
    :goto_0
    const-class v1, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 174
    :goto_1
    invoke-virtual {p1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    new-instance v2, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 195
    new-instance v5, Ljava/lang/String;

    const v6, 0x1f4cb

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v0, 0x21

    .line 197
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7f060088

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 203
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->h:Z

    return p1
.end method

.method private static synthetic a(Ljava/lang/String;Landroid/view/View;)Z
    .locals 1

    const p1, 0x7f120669

    .line 150
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 151
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->setPrimaryClip$387437e0(Landroid/content/ClipData;)V

    .line 152
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1206f8

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2111
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;)V
    .locals 1

    .line 3097
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

    if-eqz v0, :cond_0

    .line 3098
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->f:I

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;->onHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bKWkgBVV7pVM99haWfAjVlrYJZI(Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/objectbox/SingleSmsData;I)V
    .locals 5

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->g:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 135
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->e:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getSmsText()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v2, Landroid/text/SpannableString;

    if-nez v0, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xf

    .line 143
    :try_start_0
    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 145
    const-class v4, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    invoke-static {v4, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 148
    :goto_2
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Landroid/text/SpannableString;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->c:Landroid/widget/TextView;

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/overlay/-$$Lambda$SingleSmsItemView$bKWkgBVV7pVM99haWfAjVlrYJZI;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/-$$Lambda$SingleSmsItemView$bKWkgBVV7pVM99haWfAjVlrYJZI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPagePosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->d:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public getTextContainer()Landroid/view/View;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->b:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0652

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1222
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 1223
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Incoming Sms Overlay"

    const-string v1, "Open Sms Button"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->g:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 1225
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;->onOpenSmsClick(Lcom/callapp/framework/phone/Phone;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setOnSinglePageEventListener(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

    return-void
.end method
