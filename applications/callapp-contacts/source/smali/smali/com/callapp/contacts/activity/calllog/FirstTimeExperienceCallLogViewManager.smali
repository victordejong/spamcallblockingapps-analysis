.class public Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-static {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;IIZ)V
    .locals 1

    .line 256
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 258
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    new-array v0, p2, [C

    .line 259
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 263
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 266
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/widget/TextView;FFFIIZ)V
    .locals 0

    .line 301
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 302
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int p1, p1

    .line 303
    iput p1, p5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    float-to-int p1, p2

    .line 304
    iput p1, p5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 306
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 309
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p5, 0x1

    .line 310
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p5, 0x3

    .line 313
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p5, 0x0

    .line 314
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 316
    invoke-static {p0, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;FF)Ljava/lang/String;

    move-result-object p2

    .line 317
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    new-instance p5, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p5, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p4, 0x21

    invoke-interface {p3, p5, p1, p2, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 319
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;IIFII)V
    .locals 7

    int-to-float p1, p1

    .line 295
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    float-to-int p1, p1

    int-to-float p2, p2

    .line 296
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    float-to-int p2, p2

    int-to-float v1, p2

    int-to-float v2, p1

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 297
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/widget/TextView;FFFIIZ)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private getRealContactView(I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->j:Landroid/view/View;

    return-object p1

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->i:Landroid/view/View;

    return-object p1

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->h:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;III)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/View;F)V
    .locals 8

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600f2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0a06ed

    .line 275
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 276
    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v4, 0x7f08058f

    invoke-direct {v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 v4, 0x1

    .line 1371
    iput-boolean v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const v4, 0x7f060244

    .line 277
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v3

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2354
    iput-object v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 3307
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    const/4 v3, 0x0

    .line 280
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    const v2, 0x7f0a0614

    .line 282
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a06ac

    .line 283
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const/16 v3, 0x74

    const/16 v4, 0xc

    move v5, p2

    move v6, v0

    move v7, v1

    .line 286
    invoke-static/range {v2 .. v7}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/widget/TextView;IIFII)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 v3, 0x58

    const/16 v4, 0x8

    move-object v2, p1

    move v5, p2

    move v6, v0

    move v7, v1

    .line 290
    invoke-static/range {v2 .. v7}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/widget/TextView;IIFII)V

    :cond_1
    return-void
.end method

.method getFinishedFirstTimeExperienceListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 347
    new-instance v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$4;-><init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;)V

    return-object v0
.end method

.method public getFirstTimeExperienceContainerView()Landroid/view/View;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    return-object v0
.end method

.method setCallTypeIcon(II)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->j:Landroid/view/View;

    goto :goto_0

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->i:Landroid/view/View;

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->h:Landroid/view/View;

    :goto_0
    if-eqz p1, :cond_3

    const v0, 0x7f0a01a8

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 186
    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->getCallHistoryIcon(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    :cond_3
    return-void
.end method

.method setContactProfilePicture(I)V
    .locals 5

    .line 192
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->getRealContactView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a06ed

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v1, :cond_1

    .line 196
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eu:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ez:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 199
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$2;-><init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;Lcom/callapp/contacts/widget/ProfilePictureView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    .line 212
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eu:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_0
    new-instance v1, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager$3;-><init>(Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method setContactRowData(I)V
    .locals 7

    .line 235
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->getRealContactView(I)Landroid/view/View;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eu:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0601ec

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f0a0614

    invoke-static {v0, v1, v3, v2}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;Ljava/lang/String;II)V

    .line 237
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ev:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v4, 0x7f0a06ac

    invoke-static {v0, v1, v4, v3}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;Ljava/lang/String;II)V

    .line 240
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ex:[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    .line 242
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, " "

    :goto_0
    const v1, 0x7f0a091a

    .line 248
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;Ljava/lang/String;IIZ)V

    return-void
.end method
