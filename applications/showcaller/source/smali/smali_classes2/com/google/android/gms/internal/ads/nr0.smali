.class final Lcom/google/android/gms/internal/ads/nr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/so1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fs0;

.field private final b:Lcom/google/android/gms/internal/ads/qr0;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/qr0;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nr0;->b:Lcom/google/android/gms/internal/ads/qr0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)Lcom/google/android/gms/internal/ads/so1;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nr0;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final bridge synthetic r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/so1;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nr0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/to1;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nr0;->c:Ljava/lang/Long;

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nr0;->d:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/or0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/nr0;->b:Lcom/google/android/gms/internal/ads/qr0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/nr0;->c:Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/nr0;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/or0;-><init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/qr0;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v0
.end method
