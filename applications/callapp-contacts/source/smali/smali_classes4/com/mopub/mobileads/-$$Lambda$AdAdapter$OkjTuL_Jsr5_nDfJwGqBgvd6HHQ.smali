.class public final synthetic Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mopub/mobileads/AdAdapter;

.field public final synthetic f$1:Lcom/mopub/mobileads/MoPubErrorCode;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;->f$0:Lcom/mopub/mobileads/AdAdapter;

    iput-object p2, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;->f$1:Lcom/mopub/mobileads/MoPubErrorCode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;->f$0:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, p0, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;->f$1:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->lambda$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
