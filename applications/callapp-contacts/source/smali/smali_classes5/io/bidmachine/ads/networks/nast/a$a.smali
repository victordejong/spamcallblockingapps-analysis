.class final Lio/bidmachine/ads/networks/nast/a$a;
.super Lio/bidmachine/nativead/NativeNetworkAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/nast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final nastParams:Lio/bidmachine/ads/networks/nast/NastParams;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/nast/NastParams;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    return-void
.end method


# virtual methods
.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRating()F
    .locals 1

    .line 54
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->rating:F

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoAdm()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->videoAdm:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/a$a;->nastParams:Lio/bidmachine/ads/networks/nast/NastParams;

    iget-object v0, v0, Lio/bidmachine/ads/networks/nast/NastParams;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final hasVideo()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/nast/a$a;->getVideoAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/nast/a$a;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
