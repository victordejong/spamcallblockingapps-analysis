.class final synthetic Lcom/google/android/gms/internal/ads/coi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cog;

.field private final b:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cog;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/coi;->a:Lcom/google/android/gms/internal/ads/cog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/coi;->b:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coi;->a:Lcom/google/android/gms/internal/ads/cog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/coi;->b:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 1051
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coa;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
