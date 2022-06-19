.class final Lcom/google/android/gms/internal/ads/dwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dts;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwp;->c:Lcom/google/android/gms/internal/ads/dts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dwp;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dwp;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwp;->c:Lcom/google/android/gms/internal/ads/dts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/ez$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwp;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dwp;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ez$a;->a(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwp;->c:Lcom/google/android/gms/internal/ads/dts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/ez$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwp;->c:Lcom/google/android/gms/internal/ads/dts;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dts;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ez$a;->a(Ljava/lang/String;)V

    .line 4
    return-void
.end method
