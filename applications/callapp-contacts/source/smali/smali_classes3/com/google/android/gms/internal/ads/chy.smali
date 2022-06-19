.class final synthetic Lcom/google/android/gms/internal/ads/chy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/chv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chy;->a:Lcom/google/android/gms/internal/ads/chv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/chy;->a:Lcom/google/android/gms/internal/ads/chv;

    .line 1012
    new-instance v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/chv;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/chs;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
