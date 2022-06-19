.class public Lcom/unknownphone/callblocker/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SplashActivity;->setContentView(I)V

    .line 34
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "language_code"

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/google/firebase/dynamiclinks/a;->a()Lcom/google/firebase/dynamiclinks/a;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/dynamiclinks/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    new-instance v3, Lcom/unknownphone/callblocker/activity/SplashActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/unknownphone/callblocker/activity/SplashActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/SplashActivity;Landroid/content/SharedPreferences;)V

    .line 40
    invoke-virtual {v1, p0, v3}, Lcom/google/android/gms/tasks/g;->a(Landroid/app/Activity;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    .line 72
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    sget-object v1, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/app/Activity;)Lcom/bumptech/glide/i;

    move-result-object v1

    const v2, 0x7f080132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/i;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;

    .line 80
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/unknownphone/callblocker/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/SplashActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/app/Activity;)Lcom/bumptech/glide/i;

    move-result-object v1

    const v2, 0x7f080131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/i;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;

    goto :goto_0
.end method
