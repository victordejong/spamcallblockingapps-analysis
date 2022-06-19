.class public final synthetic Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mopub/mobileads/AdAdapter;

.field public final synthetic f$1:Lcom/mopub/common/MoPubReward;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;->f$0:Lcom/mopub/mobileads/AdAdapter;

    iput-object p2, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;->f$1:Lcom/mopub/common/MoPubReward;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;->f$0:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;->f$1:Lcom/mopub/common/MoPubReward;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->lambda$IxAdBRe6pJwuPMtcpKBFsnt97Cs(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method
