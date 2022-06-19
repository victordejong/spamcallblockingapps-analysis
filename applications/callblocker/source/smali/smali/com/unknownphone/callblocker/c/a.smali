.class public Lcom/unknownphone/callblocker/c/a;
.super Landroidx/fragment/app/Fragment;
.source "GlobalFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/c/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/unknownphone/callblocker/f/a;

.field private d:Lcom/unknownphone/callblocker/c/a$a;

.field private e:Lcom/unknownphone/callblocker/c/a$a;

.field private f:Lcom/unknownphone/callblocker/c/a$a;

.field private g:Lcom/unknownphone/callblocker/c/a$a;

.field private h:Landroid/os/Handler;

.field private i:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->g:Lcom/unknownphone/callblocker/c/a$a;

    return-object v0
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/c/a;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/unknownphone/callblocker/c/a;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/c/a;-><init>()V

    .line 99
    iput-object p0, v0, Lcom/unknownphone/callblocker/c/a;->c:Lcom/unknownphone/callblocker/f/a;

    .line 100
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 320
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 323
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 324
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_strange_calls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    const-string/jumbo v0, "\"Block calls not from contacts\" was activated by user."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method private a(Lcom/unknownphone/callblocker/c/a$a;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 422
    const-string/jumbo v0, "#ededed"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 423
    const-string/jumbo v1, "#ababab"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 424
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 425
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 426
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->c(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 427
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 428
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->d(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->e(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 430
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->f(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 431
    return-void
.end method

.method private a(Lcom/unknownphone/callblocker/c/a$a;Z)V
    .locals 2

    .prologue
    .line 412
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/c/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/unknownphone/callblocker/c/a$2;-><init>(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->post(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/c/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/c/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    return-void
.end method

.method private as()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return v2

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-static {v0, v3}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 478
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "asked_for_read_contacts_permission"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 483
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x109

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a([Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 475
    goto :goto_1

    :cond_3
    move v2, v1

    .line 486
    goto :goto_0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 463
    if-nez v1, :cond_1

    move v0, v6

    .line 465
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v1}, Lcom/unknownphone/callblocker/c/a$a;->c(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f1000c0

    .line 468
    invoke-virtual {p0, v5}, Lcom/unknownphone/callblocker/c/a;->b(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 467
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    return-void

    .line 463
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/unknownphone/callblocker/c/a$a;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 435
    const/4 v1, -0x1

    .line 436
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0600cc

    invoke-static {v0, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    .line 438
    :goto_0
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 439
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 440
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->c(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 441
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 442
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->d(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 443
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->e(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 444
    invoke-static {p1}, Lcom/unknownphone/callblocker/c/a$a;->f(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 445
    return-void

    .line 436
    :cond_0
    const-string/jumbo v0, "#004f4d"

    .line 437
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/c/a;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "block_international_calls"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 332
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v3}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 334
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_strange_calls"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v3}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 340
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_unknown_calls"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 345
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 346
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 347
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "block_strange_calls"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "block_unknown_calls"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/c/a;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->f()V

    return-void
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    return-object v0
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 356
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 357
    const v0, 0x7f0c0045

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 359
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_1
    const v0, 0x7f0901c5

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 364
    const v1, 0x7f0900ec

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 366
    const v2, 0x7f090136

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 367
    const v3, 0x7f090157

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 368
    const v4, 0x7f090088

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 370
    const v6, 0x7f100094

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/c/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const v0, 0x7f0800c0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 374
    const v0, 0x7f100121

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 375
    new-instance v0, Lcom/unknownphone/callblocker/c/a$8;

    invoke-direct {v0, p0, v5}, Lcom/unknownphone/callblocker/c/a$8;-><init>(Lcom/unknownphone/callblocker/c/a;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v0, 0x7f100261

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 383
    new-instance v0, Lcom/unknownphone/callblocker/c/a$9;

    invoke-direct {v0, p0, v5}, Lcom/unknownphone/callblocker/c/a$9;-><init>(Lcom/unknownphone/callblocker/c/a;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v0, Lcom/unknownphone/callblocker/c/a$10;

    invoke-direct {v0, p0, v5}, Lcom/unknownphone/callblocker/c/a$10;-><init>(Lcom/unknownphone/callblocker/c/a;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 449
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 450
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 451
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 452
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 453
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;)V

    .line 454
    return-void
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/c/a;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->a()V

    return-void
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    return-object v0
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/c/a;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->g()V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 316
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 317
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 105
    const v0, 0x7f0c004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 106
    new-instance v0, Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v2, 0x7f090058

    .line 107
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v3, 0x7f090059

    .line 108
    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v4, 0x7f09005d

    .line 109
    invoke-virtual {v3, v4}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v5, 0x7f09005a

    .line 110
    invoke-virtual {v4, v5}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v6, 0x7f09005c

    .line 111
    invoke-virtual {v5, v6}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v6, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v7, 0x7f09005b

    .line 112
    invoke-virtual {v6, v7}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v6}, Lcom/unknownphone/callblocker/c/a$a;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    .line 113
    new-instance v0, Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v2, 0x7f09005f

    .line 114
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v3, 0x7f090060

    .line 115
    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v4, 0x7f090064

    .line 116
    invoke-virtual {v3, v4}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v5, 0x7f090061

    .line 117
    invoke-virtual {v4, v5}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v6, 0x7f090063

    .line 118
    invoke-virtual {v5, v6}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v6, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v7, 0x7f090062

    .line 119
    invoke-virtual {v6, v7}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v6}, Lcom/unknownphone/callblocker/c/a$a;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    .line 120
    new-instance v0, Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v2, 0x7f090065

    .line 121
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v3, 0x7f090066

    .line 122
    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v4, 0x7f09006a

    .line 123
    invoke-virtual {v3, v4}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v5, 0x7f090067

    .line 124
    invoke-virtual {v4, v5}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v6, 0x7f090069

    .line 125
    invoke-virtual {v5, v6}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v6, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v7, 0x7f090068

    .line 126
    invoke-virtual {v6, v7}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v6}, Lcom/unknownphone/callblocker/c/a$a;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    .line 127
    new-instance v0, Lcom/unknownphone/callblocker/c/a$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v2, 0x7f090051

    .line 128
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v3, 0x7f090052

    .line 129
    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v4, 0x7f090056

    .line 130
    invoke-virtual {v3, v4}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v5, 0x7f090053

    .line 131
    invoke-virtual {v4, v5}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v5, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v6, 0x7f090055

    .line 132
    invoke-virtual {v5, v6}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v6, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v7, 0x7f090054

    .line 133
    invoke-virtual {v6, v7}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v6}, Lcom/unknownphone/callblocker/c/a$a;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->g:Lcom/unknownphone/callblocker/c/a$a;

    .line 134
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->i:Lcom/google/android/gms/ads/AdView;

    .line 135
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 299
    const/16 v0, 0xae

    if-ne p1, v0, :cond_1

    .line 300
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_unknown_calls"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    const-string/jumbo v0, "\"Block hidden calls\" was activated by user."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string/jumbo v1, "purchase_source"

    const-string/jumbo v2, "purchase_source_global"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/c/a;->a(Landroid/content/Intent;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 265
    const/16 v1, 0x2fb

    if-ne p1, v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/16 v1, 0x109

    if-ne p1, v1, :cond_4

    .line 269
    array-length v2, p3

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, p3, v1

    .line 270
    if-eqz v3, :cond_3

    .line 271
    const/4 v0, 0x1

    .line 274
    :cond_2
    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->a()V

    .line 276
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/unknownphone/callblocker/c/a$7;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/c/a$7;-><init>(Lcom/unknownphone/callblocker/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->c:Lcom/unknownphone/callblocker/f/a;

    const v1, 0x7f090112

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a;->c:Lcom/unknownphone/callblocker/f/a;

    .line 288
    invoke-static {v2}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/e/c;

    move-result-object v2

    const/4 v3, 0x0

    .line 287
    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 269
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    .line 144
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 147
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->g:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 151
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->g:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    new-instance v3, Lcom/unknownphone/callblocker/c/a$1;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/c/a$1;-><init>(Lcom/unknownphone/callblocker/c/a;)V

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    new-instance v3, Lcom/unknownphone/callblocker/c/a$3;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/c/a$3;-><init>(Lcom/unknownphone/callblocker/c/a;)V

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    new-instance v3, Lcom/unknownphone/callblocker/c/a$4;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/c/a$4;-><init>(Lcom/unknownphone/callblocker/c/a;)V

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->b(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    new-instance v3, Lcom/unknownphone/callblocker/c/a$5;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/c/a$5;-><init>(Lcom/unknownphone/callblocker/c/a;)V

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/c/a;->h:Landroid/os/Handler;

    .line 217
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->h:Landroid/os/Handler;

    new-instance v3, Lcom/unknownphone/callblocker/c/a$6;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/c/a$6;-><init>(Lcom/unknownphone/callblocker/c/a;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "block_all_calls"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 231
    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->g:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v3, v0}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 233
    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "block_unknown_calls"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 236
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->d:Lcom/unknownphone/callblocker/c/a$a;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "block_international_calls"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-static {v0, v3}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v0, v2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 240
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "block_strange_calls"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "subscription_ends_at"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 249
    :goto_1
    if-nez v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->f:Lcom/unknownphone/callblocker/c/a$a;

    invoke-direct {p0, v3, v2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 251
    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "block_unknown_calls"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    :cond_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->i:Lcom/google/android/gms/ads/AdView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 259
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->a:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 261
    :cond_2
    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->e:Lcom/unknownphone/callblocker/c/a$a;

    iget-object v3, p0, Lcom/unknownphone/callblocker/c/a;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "block_strange_calls"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a$a;Z)V

    goto :goto_0

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/unknownphone/callblocker/c/a;->g()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 248
    goto :goto_1

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a;->i:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/d$a;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/d;)V

    goto :goto_2
.end method
