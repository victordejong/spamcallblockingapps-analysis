.class final Lcom/google/android/gms/internal/ads/or0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/to1;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/fs0;

.field private final d:Lcom/google/android/gms/internal/ads/qr0;

.field private final e:Lcom/google/android/gms/internal/ads/or0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/qr0;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/or0;->e:Lcom/google/android/gms/internal/ads/or0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/or0;->c:Lcom/google/android/gms/internal/ads/fs0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/or0;->d:Lcom/google/android/gms/internal/ads/qr0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/or0;->a:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/or0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/hp1;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or0;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or0;->d:Lcom/google/android/gms/internal/ads/qr0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qr0;->a(Lcom/google/android/gms/internal/ads/qr0;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or0;->d:Lcom/google/android/gms/internal/ads/qr0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qr0;->b(Lcom/google/android/gms/internal/ads/qr0;)Lcom/google/android/gms/internal/ads/wo1;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/or0;->c:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/or0;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ip1;->a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/wo1;Lcom/google/android/gms/internal/ads/sp0;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/dp1;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or0;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or0;->d:Lcom/google/android/gms/internal/ads/qr0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qr0;->a(Lcom/google/android/gms/internal/ads/qr0;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or0;->d:Lcom/google/android/gms/internal/ads/qr0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qr0;->b(Lcom/google/android/gms/internal/ads/qr0;)Lcom/google/android/gms/internal/ads/wo1;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/or0;->c:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/or0;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ep1;->a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/wo1;Lcom/google/android/gms/internal/ads/sp0;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dp1;

    move-result-object v0

    return-object v0
.end method
