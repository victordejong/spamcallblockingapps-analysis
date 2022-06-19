.class final Lcom/google/android/gms/internal/ads/dlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:J

.field private final synthetic d:Lcom/google/android/gms/internal/ads/dlt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dlt;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dlv;->d:Lcom/google/android/gms/internal/ads/dlt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dlv;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dlv;->b:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/dlv;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlv;->d:Lcom/google/android/gms/internal/ads/dlt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dlt;->a(Lcom/google/android/gms/internal/ads/dlt;)Lcom/google/android/gms/internal/ads/dlu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlv;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dlv;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dlv;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dlu;->a(Ljava/lang/String;JJ)V

    .line 3
    return-void
.end method
