.class final synthetic Lcom/google/android/gms/internal/ads/btf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/anq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btf;->a:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/emk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btf;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/emk;

    return-object v0
.end method
