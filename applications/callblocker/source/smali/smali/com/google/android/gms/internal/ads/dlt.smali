.class public final Lcom/google/android/gms/internal/ads/dlt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cnz;

.field private final b:Lcom/google/android/gms/internal/ads/dlu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dlu;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cnz;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    .line 4
    return-void

    .line 2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dlt;)Lcom/google/android/gms/internal/ads/dlu;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dma;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dma;-><init>(Lcom/google/android/gms/internal/ads/dlt;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 8

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dly;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dly;-><init>(Lcom/google/android/gms/internal/ads/dlt;IJJ)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dlz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dlz;-><init>(Lcom/google/android/gms/internal/ads/dlt;Lcom/google/android/gms/internal/ads/dlf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dmt;)V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dlw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dlw;-><init>(Lcom/google/android/gms/internal/ads/dlt;Lcom/google/android/gms/internal/ads/dmt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dlv;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dlv;-><init>(Lcom/google/android/gms/internal/ads/dlt;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dmt;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->b:Lcom/google/android/gms/internal/ads/dlu;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlt;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dmb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dmb;-><init>(Lcom/google/android/gms/internal/ads/dlt;Lcom/google/android/gms/internal/ads/dmt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_0
    return-void
.end method
