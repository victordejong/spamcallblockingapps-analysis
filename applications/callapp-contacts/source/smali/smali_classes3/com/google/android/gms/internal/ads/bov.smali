.class final Lcom/google/android/gms/internal/ads/bov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/cpk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bov;->a:Lcom/google/android/gms/internal/ads/bot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/cpk;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bov;->a:Lcom/google/android/gms/internal/ads/bot;

    .line 1022
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bot;->a:Lcom/google/android/gms/internal/ads/aua;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aua;->a(Lcom/google/android/gms/internal/ads/cpk;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
