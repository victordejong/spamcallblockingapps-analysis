.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$b;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/sdk/android/tweetcomposer/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 75
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/a;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_USER_TOKEN"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 46
    new-instance v3, Lcom/twitter/sdk/android/core/t;

    const-wide/16 v1, -0x1

    const-string v4, ""

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/twitter/sdk/android/core/t;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    const-string v0, "EXTRA_IMAGE_URI"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    const-string v0, "EXTRA_TEXT"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "EXTRA_HASHTAGS"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/c$d;->ComposerLight:I

    const-string v1, "EXTRA_THEME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setTheme(I)V

    .line 54
    sget p1, Lcom/twitter/sdk/android/tweetcomposer/c$c;->tw__activity_composer:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setContentView(I)V

    .line 55
    sget p1, Lcom/twitter/sdk/android/tweetcomposer/c$b;->tw__composer_view:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 56
    new-instance p1, Lcom/twitter/sdk/android/tweetcomposer/a;

    new-instance v7, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$b;

    invoke-direct {v7, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$b;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/a;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/t;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    return-void
.end method
