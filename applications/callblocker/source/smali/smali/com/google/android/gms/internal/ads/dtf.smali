.class final Lcom/google/android/gms/internal/ads/dtf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:J

.field private final synthetic d:Lcom/google/android/gms/internal/ads/dtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtd;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtf;->d:Lcom/google/android/gms/internal/ads/dtd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dtf;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dtf;->b:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/dtf;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtf;->d:Lcom/google/android/gms/internal/ads/dtd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dtd;)Lcom/google/android/gms/internal/ads/dte;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtf;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dtf;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dtf;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dte;->a(Ljava/lang/String;JJ)V

    .line 3
    return-void
.end method
