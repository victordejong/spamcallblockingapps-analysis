.class final Lcom/explorestack/iab/mraid/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/explorestack/iab/mraid/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a()Z
    .locals 2

    const-string v0, "MRAIDNativeFeatureManager"

    const-string v1, "isCalendarSupported: false (deprecated)"

    .line 26
    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "MRAIDNativeFeatureManager"

    const-string v1, "isSmsSupported: false (deprecated)"

    .line 40
    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "MRAIDNativeFeatureManager"

    const-string v1, "isStorePictureSupported: false (deprecated)"

    .line 45
    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .locals 2

    const-string v0, "MRAIDNativeFeatureManager"

    const-string v1, "isTelSupported: false (deprecated)"

    .line 50
    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/explorestack/iab/mraid/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "inlineVideo"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isInlineVideoSupported "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MRAIDNativeFeatureManager"

    invoke-static {v2, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
