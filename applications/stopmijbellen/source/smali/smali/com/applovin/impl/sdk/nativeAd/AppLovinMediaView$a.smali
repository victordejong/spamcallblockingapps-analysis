.class Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$500(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/t;

    move-result-object p1

    const-string v0, "AppLovinMediaView"

    const-string v1, "Video completed"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$100(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/adview/AppLovinVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$100(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/adview/AppLovinVideoView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$700(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video view error ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$500(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/t;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered media error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for ad: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$600(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppLovinMediaView"

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/sdk/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$500(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/t;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer Info: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppLovinMediaView"

    invoke-virtual {p1, p3, p2}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$202(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$300(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$300(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$400(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$500(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/t;

    move-result-object p1

    const-string v0, "MediaPlayer prepared: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    invoke-static {v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->access$200(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinMediaView"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
