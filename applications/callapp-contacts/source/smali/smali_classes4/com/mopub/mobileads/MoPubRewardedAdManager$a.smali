.class abstract Lcom/mopub/mobileads/MoPubRewardedAdManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mopub/mobileads/AdAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 979
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;->a:Lcom/mopub/mobileads/AdAdapter;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 2

    .line 986
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 987
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/d;->a(Lcom/mopub/mobileads/AdAdapter;)Ljava/util/Set;

    move-result-object v0

    .line 988
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 989
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
