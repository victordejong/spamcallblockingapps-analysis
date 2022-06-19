.class final synthetic Lcom/google/android/gms/internal/ads/bpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bpk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bpk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpp;->a:Lcom/google/android/gms/internal/ads/bpk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpp;->a:Lcom/google/android/gms/internal/ads/bpk;

    .line 1148
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bpk;->a:Lcom/google/android/gms/internal/ads/ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ti;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 1149
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zl;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;)V

    return-void
.end method
