.class public Lcom/unknownphone/callblocker/h/a;
.super Landroidx/fragment/app/Fragment;
.source "ProtectionFragment.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/d;


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatTextView;

.field private ae:Landroidx/appcompat/widget/AppCompatTextView;

.field private af:Landroidx/appcompat/widget/AppCompatTextView;

.field private ag:Lcom/unknownphone/callblocker/f/a;

.field private ah:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private ai:Landroidx/appcompat/widget/AppCompatButton;

.field private aj:Lcom/google/android/gms/ads/reward/c;

.field private ak:Landroid/content/SharedPreferences;

.field private al:Lcom/unknownphone/callblocker/d/b;

.field private am:Lcom/unknownphone/callblocker/d/d;

.field private an:Landroid/view/View;

.field private ao:Landroid/view/View;

.field private ap:Landroid/view/View;

.field private aq:Landroid/view/View;

.field private ar:Landroid/view/View;

.field private as:Landroid/view/View;

.field private at:Landroid/view/View;

.field private au:Landroid/view/View;

.field private av:Lretrofit2/b;

.field private b:Landroidx/appcompat/widget/AppCompatTextView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:Landroidx/appcompat/widget/AppCompatTextView;

.field private f:Landroidx/appcompat/widget/AppCompatImageButton;

.field private g:Landroidx/appcompat/widget/AppCompatImageButton;

.field private h:Landroidx/appcompat/widget/AppCompatTextView;

.field private i:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/h/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/unknownphone/callblocker/h/a;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/h/a;-><init>()V

    .line 103
    iput-object p0, v0, Lcom/unknownphone/callblocker/h/a;->ag:Lcom/unknownphone/callblocker/f/a;

    .line 104
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/h/a;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/unknownphone/callblocker/h/a;->g()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/h/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/h/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/h/a;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/h/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    const-string/jumbo v1, "show_premium_tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    const/16 v1, 0xae

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/h/a;->startActivityForResult(Landroid/content/Intent;I)V

    .line 382
    return-void
.end method

.method private as()V
    .locals 5

    .prologue
    .line 390
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->au:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 393
    const-string/jumbo v0, "_action"

    const-string/jumbo v2, "_get_dangerous_phones_list"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v0, "api_key"

    iget-object v2, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "api_key"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v0, "region"

    iget-object v2, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "region_code"

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v2, "lang"

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "language_code"

    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v2, "user_type"

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "subscription_ends_at"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "premium"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v0, "device"

    const-string/jumbo v2, "Android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v0, "country_code"

    iget-object v2, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "region_code"

    .line 402
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "O1"

    invoke-static {v2, v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->am:Lcom/unknownphone/callblocker/d/d;

    new-instance v2, Lcom/unknownphone/callblocker/h/a$4;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/h/a$4;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->av:Lretrofit2/b;

    .line 432
    const-string/jumbo v0, "Dangerous phone list manually updated by user."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 433
    return-void

    .line 398
    :cond_0
    const-string/jumbo v0, "free"

    goto :goto_0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x42100000    # 36.0f

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 283
    if-eqz v5, :cond_2

    .line 286
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->at:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 292
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "subscription_ends_at"

    invoke-interface {v1, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 293
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    .line 294
    iget-object v6, p0, Lcom/unknownphone/callblocker/h/a;->ae:Landroidx/appcompat/widget/AppCompatTextView;

    const v7, 0x7f1001b5

    new-array v8, v4, [Ljava/lang/Object;

    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_1

    .line 295
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v3

    .line 294
    invoke-static {p1, v7, v8}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ao:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10017b

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/unknownphone/callblocker/h/a;->al:Lcom/unknownphone/callblocker/d/b;

    const-string/jumbo v8, "spam_number"

    .line 331
    invoke-virtual {v7, v8}, Lcom/unknownphone/callblocker/d/b;->c(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 330
    invoke-static {p1, v1, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100180

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "spam_numbers_last_update"

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 335
    invoke-static {p1, v7}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 334
    invoke-static {p1, v1, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "identify_spam_calls"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 341
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "block_spam_calls"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 344
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const v7, 0x7f100195

    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/h/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const v7, 0x7f100194

    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/h/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const v7, 0x7f100192

    invoke-virtual {p0, v7}, Lcom/unknownphone/callblocker/h/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v7, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingLeft()I

    move-result v8

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingTop()I

    move-result v9

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 350
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingLeft()I

    move-result v10

    if-eqz v1, :cond_7

    move v0, v3

    :goto_2
    add-int/2addr v0, v10

    iget-object v10, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 351
    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingBottom()I

    move-result v10

    .line 349
    invoke-virtual {v7, v8, v9, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 352
    iget-object v7, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingLeft()I

    move-result v8

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingTop()I

    move-result v9

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 353
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingLeft()I

    move-result v10

    if-eqz v6, :cond_8

    move v0, v3

    :goto_3
    add-int/2addr v0, v10

    iget-object v10, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 354
    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatTextView;->getPaddingBottom()I

    move-result v10

    .line 352
    invoke-virtual {v7, v8, v9, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 357
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 358
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 359
    iget-object v9, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    aget-object v10, v7, v3

    aget-object v11, v7, v4

    if-eqz v1, :cond_9

    const v0, 0x7f0800b6

    .line 360
    invoke-static {p1, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4
    aget-object v1, v7, v13

    .line 359
    invoke-virtual {v9, v10, v11, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    aget-object v7, v8, v3

    aget-object v9, v8, v4

    if-eqz v6, :cond_a

    const v0, 0x7f0800b6

    .line 362
    invoke-static {p1, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_5
    aget-object v6, v8, v13

    .line 361
    invoke-virtual {v1, v7, v9, v0, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    move v0, v4

    .line 366
    :goto_6
    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    .line 367
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 375
    :goto_7
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->as:Landroid/view/View;

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    :goto_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 376
    return-void

    .line 294
    :cond_1
    const-wide/16 v0, 0x1

    goto/16 :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->at:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ap:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "credits"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 310
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->af:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v6, p0, Lcom/unknownphone/callblocker/h/a;->aq:Landroid/view/View;

    if-nez v1, :cond_3

    move v0, v2

    :goto_9
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v6, p0, Lcom/unknownphone/callblocker/h/a;->ar:Landroid/view/View;

    if-nez v1, :cond_4

    move v0, v3

    :goto_a
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ao:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    if-nez v1, :cond_6

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 321
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 322
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 323
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    .line 324
    iget-object v6, p0, Lcom/unknownphone/callblocker/h/a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v7, 0x7f100189

    new-array v8, v4, [Ljava/lang/Object;

    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_5

    .line 325
    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v3

    .line 324
    invoke-static {p1, v7, v8}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move v0, v3

    .line 313
    goto :goto_9

    :cond_4
    move v0, v2

    .line 314
    goto :goto_a

    .line 324
    :cond_5
    const-wide/16 v0, 0x7

    goto :goto_b

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100188

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto/16 :goto_1

    .line 350
    :cond_7
    invoke-static {p1, v12}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    goto/16 :goto_2

    .line 353
    :cond_8
    invoke-static {p1, v12}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    goto/16 :goto_3

    .line 360
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 362
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_b
    move v0, v3

    .line 364
    goto/16 :goto_6

    .line 370
    :cond_c
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    move v3, v2

    .line 375
    goto/16 :goto_8
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/h/a;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/unknownphone/callblocker/h/a;->as()V

    return-void
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/h/a;)Lcom/google/android/gms/ads/reward/c;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aj:Lcom/google/android/gms/ads/reward/c;

    return-object v0
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/h/a;)Lcom/unknownphone/callblocker/d/b;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->al:Lcom/unknownphone/callblocker/d/b;

    return-object v0
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/h/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->au:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/CreditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/h/a;->a(Landroid/content/Intent;)V

    .line 386
    return-void
.end method


# virtual methods
.method public D_()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public E_()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public F_()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public K()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->av:Lretrofit2/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->av:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    .line 276
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 277
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0c0051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    const v0, 0x7f0900e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    const v0, 0x7f0900d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    const v0, 0x7f0901f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    const v0, 0x7f0900e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    const v0, 0x7f090140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    const v0, 0x7f0901e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->an:Landroid/view/View;

    .line 116
    const v0, 0x7f09005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    const v0, 0x7f0900d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->f:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 118
    const v0, 0x7f0901f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->g:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 119
    const v0, 0x7f0900fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    const v0, 0x7f0900c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ae:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    const v0, 0x7f090158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ao:Landroid/view/View;

    .line 122
    const v0, 0x7f090151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ai:Landroidx/appcompat/widget/AppCompatButton;

    .line 123
    const v0, 0x7f0901eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ah:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 124
    const v0, 0x7f09009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->af:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    const v0, 0x7f090159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ap:Landroid/view/View;

    .line 126
    const v0, 0x7f090152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->as:Landroid/view/View;

    .line 127
    const v0, 0x7f0900d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aq:Landroid/view/View;

    .line 128
    const v0, 0x7f0901f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ar:Landroid/view/View;

    .line 129
    const v0, 0x7f0900d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->at:Landroid/view/View;

    .line 130
    const v0, 0x7f09015c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->au:Landroid/view/View;

    .line 131
    return-object v1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 250
    const/16 v0, 0xae

    if-ne p1, v0, :cond_1

    .line 251
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string/jumbo v1, "purchase_source"

    const-string/jumbo v2, "purchase_source_protection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/h/a;->a(Landroid/content/Intent;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/h/a;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 266
    const/16 v0, 0x2fb

    if-ne p1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ah:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->al:Lcom/unknownphone/callblocker/d/b;

    .line 139
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->am:Lcom/unknownphone/callblocker/d/d;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ak:Landroid/content/SharedPreferences;

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/k;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aj:Lcom/google/android/gms/ads/reward/c;

    .line 144
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aj:Lcom/google/android/gms/ads/reward/c;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/c;->a(Lcom/google/android/gms/ads/reward/d;)V

    .line 145
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aj:Lcom/google/android/gms/ads/reward/c;

    const-string/jumbo v1, "ca-app-pub-4660838923216567/8186769912"

    new-instance v2, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/d$a;-><init>()V

    .line 146
    invoke-virtual {v2}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v2

    .line 145
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/c;->a(Ljava/lang/String;Lcom/google/android/gms/ads/d;)V

    .line 149
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->at:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$1;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aq:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$5;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$5;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ar:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$6;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$6;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ap:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$7;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$7;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->f:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$8;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$8;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->g:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$9;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$9;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$10;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$10;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$11;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$11;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->an:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$12;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$12;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->a:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$2;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ai:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/h/a$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/h/a$3;-><init>(Lcom/unknownphone/callblocker/h/a;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->au:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/h/a;->b(Landroid/content/Context;)V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->ah:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v3}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/reward/b;)V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/unknownphone/callblocker/h/a;->as()V

    .line 464
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/h/a;->b(Landroid/content/Context;)V

    .line 466
    :cond_0
    return-void
.end method

.method public b_(I)V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a;->aj:Lcom/google/android/gms/ads/reward/c;

    const-string/jumbo v1, "ca-app-pub-4660838923216567/8186769912"

    new-instance v2, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/d$a;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/c;->a(Ljava/lang/String;Lcom/google/android/gms/ads/d;)V

    .line 459
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method
