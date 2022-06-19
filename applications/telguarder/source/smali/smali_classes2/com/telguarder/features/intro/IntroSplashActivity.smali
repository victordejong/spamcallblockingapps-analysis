.class public Lcom/telguarder/features/intro/IntroSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IntroSplashActivity.java"


# static fields
.field private static splashLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private startNextActivity(Z)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroSplashActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {p0}, Lcom/telguarder/features/intro/IntroActivity;->openIntroActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p0, p1}, Lcom/telguarder/features/main/MainActivity;->openMainActivity(Landroidx/appcompat/app/AppCompatActivity;Z)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroSplashActivity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$IntroSplashActivity(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/telguarder/features/intro/IntroSplashActivity;->startNextActivity(Z)V

    return-void
.end method

.method public synthetic lambda$onResume$1$IntroSplashActivity(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/telguarder/features/intro/IntroSplashActivity;->startNextActivity(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onResume$2$IntroSplashActivity(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 53
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/telguarder/features/intro/IntroSplashActivity;->startNextActivity(Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0029

    .line 29
    invoke-virtual {p0, p1}, Lcom/telguarder/features/intro/IntroSplashActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    .line 31
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 39
    sget-boolean v1, Lcom/telguarder/features/intro/IntroSplashActivity;->splashLoaded:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const v1, 0x7f0802cf

    .line 40
    invoke-virtual {p0, v1}, Lcom/telguarder/features/intro/IntroSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    .line 41
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 44
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f0001

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 46
    new-instance v3, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$AOnfOyBJpAWwTk8qIAelL1Cques;

    invoke-direct {v3, p0}, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$AOnfOyBJpAWwTk8qIAelL1Cques;-><init>(Lcom/telguarder/features/intro/IntroSplashActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 47
    new-instance v3, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$Y7AzPS1EIjqHblLaSUSnhCFd9-o;

    invoke-direct {v3, p0}, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$Y7AzPS1EIjqHblLaSUSnhCFd9-o;-><init>(Lcom/telguarder/features/intro/IntroSplashActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 51
    new-instance v3, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$kM2ZIRbdOVTf3XlaygW63Hy5U-k;

    invoke-direct {v3, p0}, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$kM2ZIRbdOVTf3XlaygW63Hy5U-k;-><init>(Lcom/telguarder/features/intro/IntroSplashActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 61
    sput-boolean v2, Lcom/telguarder/features/intro/IntroSplashActivity;->splashLoaded:Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0, v2}, Lcom/telguarder/features/intro/IntroSplashActivity;->startNextActivity(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    invoke-direct {p0, v0}, Lcom/telguarder/features/intro/IntroSplashActivity;->startNextActivity(Z)V

    :goto_0
    return-void
.end method
