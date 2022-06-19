.class public final synthetic Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$Y7AzPS1EIjqHblLaSUSnhCFd9-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/intro/IntroSplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/intro/IntroSplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$Y7AzPS1EIjqHblLaSUSnhCFd9-o;->f$0:Lcom/telguarder/features/intro/IntroSplashActivity;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/intro/-$$Lambda$IntroSplashActivity$Y7AzPS1EIjqHblLaSUSnhCFd9-o;->f$0:Lcom/telguarder/features/intro/IntroSplashActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/telguarder/features/intro/IntroSplashActivity;->lambda$onResume$1$IntroSplashActivity(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
