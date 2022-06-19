.class public final Lcom/google/android/gms/internal/ads/ahx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/ads/internal/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ahv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahx;->a:Lcom/google/android/gms/internal/ads/ahv;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahx;->a:Lcom/google/android/gms/internal/ads/ahv;

    .line 1004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ahv;->a:Lcom/google/android/gms/internal/ads/ahv$a;

    .line 1005
    new-instance v8, Lcom/google/android/gms/ads/internal/zzb;

    .line 1006
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->a()Lcom/google/android/gms/internal/ads/adc;

    move-result-object v2

    .line 1007
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->b()Lcom/google/android/gms/internal/ads/aal;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/vw;

    .line 1008
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->d()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/vw;-><init>(Lcom/google/android/gms/internal/ads/wa;)V

    .line 1009
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->c()Lcom/google/android/gms/internal/ads/ehq;

    move-result-object v5

    .line 1010
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->e()Lcom/google/android/gms/internal/ads/rg;

    move-result-object v6

    .line 1011
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahv$a;->f()Lcom/google/android/gms/internal/ads/bx;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/internal/ads/adc;Lcom/google/android/gms/internal/ads/aal;Lcom/google/android/gms/internal/ads/wb;Lcom/google/android/gms/internal/ads/ehq;Lcom/google/android/gms/internal/ads/rg;Lcom/google/android/gms/internal/ads/bx;)V

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method
