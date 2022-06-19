.class public Lcom/unknownphone/callblocker/activity/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroidx/appcompat/widget/AppCompatTextView;

.field private c:Landroidx/appcompat/widget/AppCompatImageButton;

.field private d:Landroidx/appcompat/widget/AppCompatImageButton;

.field private e:Landroidx/appcompat/widget/AppCompatImageButton;

.field private f:Lcom/google/android/gms/auth/api/signin/c;

.field private g:Landroidx/appcompat/widget/AppCompatTextView;

.field private h:Landroidx/appcompat/widget/AppCompatTextView;

.field private i:Landroidx/appcompat/widget/AppCompatTextView;

.field private j:Landroidx/appcompat/widget/AppCompatTextView;

.field private k:Lcom/facebook/f;

.field private l:Landroidx/appcompat/widget/AppCompatTextView;

.field private m:Lcom/facebook/login/widget/LoginButton;

.field private n:Lcom/unknownphone/callblocker/d/b;

.field private o:Landroid/content/SharedPreferences;

.field private p:Lcom/unknownphone/callblocker/d/d;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/SettingsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 460
    const-string/jumbo v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroidx/core/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->r:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    const-string/jumbo v1, "No permission!"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 474
    :goto_0
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->f:Lcom/google/android/gms/auth/api/signin/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->a()Landroid/content/Intent;

    move-result-object v0

    .line 472
    const/16 v1, 0x35f

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/login/o;)V
    .locals 6

    .prologue
    .line 401
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/o;->a()Lcom/facebook/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/login/o;->a()Lcom/facebook/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    const v1, 0x7f10002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 456
    :goto_0
    return-void

    .line 404
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/login/o;->a()Lcom/facebook/a;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;)V

    invoke-static {v0, v1}, Lcom/facebook/k;->a(Lcom/facebook/a;Lcom/facebook/k$c;)Lcom/facebook/k;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 421
    const-string/jumbo v2, "fields"

    const-string/jumbo v3, "id,name,email"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, v1}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 423
    invoke-virtual {v0}, Lcom/facebook/k;->j()Lcom/facebook/l;

    .line 425
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_2

    .line 427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    const-string/jumbo v2, "success"

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 429
    const-string/jumbo v2, "method"

    const-string/jumbo v3, "Facebook"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v2, "sign_up"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "linked_to_fb"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 439
    const v0, 0x7f0900ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800fd

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 440
    new-instance v0, Lcom/google/android/material/bottomsheet/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 442
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->show()V

    .line 443
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/unknownphone/callblocker/activity/SettingsActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity$4;-><init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;Lcom/google/android/material/bottomsheet/a;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/gms/tasks/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 352
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :catch_0
    move-exception v0

    .line 393
    sget-object v1, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    const v1, 0x7f10002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 396
    :goto_0
    return-void

    .line 354
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 355
    const-string/jumbo v2, "email"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v2, "_action"

    const-string/jumbo v3, "_link_rss_to_api_key"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v2, "api_key"

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "api_key"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v2, "fullname"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->p:Lcom/unknownphone/callblocker/d/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    .line 362
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_1

    .line 364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    const-string/jumbo v2, "success"

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 366
    const-string/jumbo v2, "method"

    const-string/jumbo v3, "Google"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v2, "sign_up"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "linked_to_google"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 376
    const v0, 0x7f0900ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800fe

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 377
    new-instance v0, Lcom/google/android/material/bottomsheet/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 379
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->show()V

    .line 380
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/unknownphone/callblocker/activity/SettingsActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;Lcom/google/android/material/bottomsheet/a;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/SettingsActivity;Lcom/facebook/login/o;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Lcom/facebook/login/o;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->g:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 346
    return-void

    :cond_0
    move v0, v2

    .line 344
    goto :goto_0

    :cond_1
    move v2, v1

    .line 345
    goto :goto_1
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/activity/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 479
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f100245

    .line 481
    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"

    aput-object v6, v4, v5

    .line 480
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    const v1, 0x7f10023c

    .line 489
    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 488
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/activity/SettingsActivity;)Lcom/unknownphone/callblocker/d/d;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->p:Lcom/unknownphone/callblocker/d/d;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 495
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f100245

    .line 497
    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"

    aput-object v6, v4, v5

    .line 496
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string/jumbo v1, "com.twitter.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    const v1, 0x7f10023d

    .line 504
    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 503
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f100245

    .line 512
    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"

    aput-object v6, v4, v5

    .line 511
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    const v1, 0x7f100247

    .line 520
    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 519
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 526
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f100245

    .line 528
    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"

    aput-object v6, v4, v5

    .line 527
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string/jumbo v1, "Share via:"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 532
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->k:Lcom/facebook/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/f;->a(IILandroid/content/Intent;)Z

    .line 175
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    const/16 v0, 0x35f

    if-ne p1, v0, :cond_1

    .line 181
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Lcom/google/android/gms/tasks/g;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/16 v0, 0xae

    if-ne p1, v0, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 256
    :sswitch_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->finish()V

    goto :goto_0

    .line 260
    :sswitch_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->n:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/d/b;->a()V

    .line 261
    invoke-direct {p0, v4}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Z)V

    goto :goto_0

    .line 265
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/selector/SelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string/jumbo v1, "selector_type"

    const-string/jumbo v2, "selector_type_language"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
    :sswitch_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_feedback_option_in_settings"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 276
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/selector/SelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    const-string/jumbo v1, "selector_type"

    const-string/jumbo v2, "selector_type_region"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 282
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const-string/jumbo v1, "show_premium_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const/16 v1, 0xae

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 288
    :sswitch_6
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a()V

    goto :goto_0

    .line 292
    :sswitch_7
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->m:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->performClick()Z

    goto :goto_0

    .line 296
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/activity/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 300
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/activity/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https://www.unknownphone.com/privacy-policy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 308
    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https://www.unknownphone.com/terms-of-service"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 312
    :sswitch_c
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v0, "mailto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 314
    const-string/jumbo v0, "android.intent.extra.EMAIL"

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "callblocker@unknownphone.com"

    aput-object v3, v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v0, "2.4"

    .line 316
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    const-string/jumbo v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallBlocker Android v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v0, "0.0"

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", build "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "0"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 319
    goto :goto_1

    .line 326
    :sswitch_d
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->b()V

    goto/16 :goto_0

    .line 330
    :sswitch_e
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->c()V

    goto/16 :goto_0

    .line 334
    :sswitch_f
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->d()V

    goto/16 :goto_0

    .line 338
    :sswitch_10
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->e()V

    goto/16 :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x7f09000a -> :sswitch_9
        0x7f090084 -> :sswitch_1
        0x7f090088 -> :sswitch_0
        0x7f090098 -> :sswitch_c
        0x7f0900c5 -> :sswitch_3
        0x7f0900dd -> :sswitch_8
        0x7f0900f7 -> :sswitch_2
        0x7f090108 -> :sswitch_7
        0x7f090109 -> :sswitch_6
        0x7f09015a -> :sswitch_a
        0x7f090164 -> :sswitch_4
        0x7f09018c -> :sswitch_d
        0x7f09018d -> :sswitch_10
        0x7f09018e -> :sswitch_e
        0x7f09018f -> :sswitch_f
        0x7f0901bb -> :sswitch_b
        0x7f0901e7 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v3, 0x7f090084

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->setContentView(I)V

    .line 98
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->p:Lcom/unknownphone/callblocker/d/d;

    .line 99
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->n:Lcom/unknownphone/callblocker/d/b;

    .line 100
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p0, v0, v2}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    .line 102
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 104
    const v0, 0x7f09018f

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 105
    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 106
    const v0, 0x7f0901e8

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->q:Landroid/view/View;

    .line 107
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->m:Lcom/facebook/login/widget/LoginButton;

    .line 108
    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    .line 112
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    const v0, 0x7f0901e7

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->t:Landroid/view/View;

    .line 116
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f09018d

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 141
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->f:Lcom/google/android/gms/auth/api/signin/c;

    .line 145
    invoke-static {}, Lcom/facebook/f$a;->a()Lcom/facebook/f;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->k:Lcom/facebook/f;

    .line 146
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->m:Lcom/facebook/login/widget/LoginButton;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "public_profile"

    aput-object v4, v3, v2

    const-string/jumbo v4, "email"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->m:Lcom/facebook/login/widget/LoginButton;

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->k:Lcom/facebook/f;

    new-instance v4, Lcom/unknownphone/callblocker/activity/SettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/unknownphone/callblocker/activity/SettingsActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/f;Lcom/facebook/h;)V

    .line 165
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->n:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, v2, v1}, Lcom/unknownphone/callblocker/d/b;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Z)V

    .line 166
    return-void

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 193
    const/16 v0, 0x102

    if-ne p1, v0, :cond_0

    .line 194
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->f:Lcom/google/android/gms/auth/api/signin/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->a()Landroid/content/Intent;

    move-result-object v0

    .line 196
    const/16 v1, 0x35f

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string/jumbo v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->r:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "language_code"

    .line 229
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 231
    iget-object v4, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->j:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v5, Ljava/util/Locale;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "region_code"

    .line 234
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "subscription_ends_at"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f10021f

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 246
    :goto_0
    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "show_feedback_option_in_settings"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 248
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f10021e

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 242
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 246
    goto :goto_1
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 209
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_2

    move v0, v1

    .line 213
    :goto_0
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/facebook/a;->o()Z

    move-result v3

    if-nez v3, :cond_3

    .line 216
    :goto_1
    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "linked_to_google"

    .line 217
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "linked_to_fb"

    .line 218
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 219
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity;->s:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void

    :cond_2
    move v0, v2

    .line 210
    goto :goto_0

    :cond_3
    move v1, v2

    .line 214
    goto :goto_1
.end method
