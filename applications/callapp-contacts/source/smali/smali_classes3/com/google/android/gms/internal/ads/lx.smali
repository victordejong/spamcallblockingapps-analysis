.class final synthetic Lcom/google/android/gms/internal/ads/lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/hi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lx;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lx;->b:Lcom/google/android/gms/internal/ads/hi;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lx;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lx;->b:Lcom/google/android/gms/internal/ads/hi;

    check-cast p1, Lcom/google/android/gms/internal/ads/lc;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/lc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
