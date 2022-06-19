.class final synthetic Lcom/google/android/gms/internal/ads/bpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bpg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpd;->a:Lcom/google/android/gms/internal/ads/bon;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpd;->a:Lcom/google/android/gms/internal/ads/bon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bon;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
