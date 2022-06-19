.class public final Lcom/google/android/gms/internal/ads/eis;
.super Lcom/google/android/gms/internal/ads/ekg;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eir;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ekg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eis;->a:Lcom/google/android/gms/internal/ads/eir;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eis;->a:Lcom/google/android/gms/internal/ads/eir;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eir;->onAdClicked()V

    return-void
.end method
