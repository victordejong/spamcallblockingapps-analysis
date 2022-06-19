.class public final Lcom/google/android/gms/internal/ads/dnh$a;
.super Lcom/google/android/gms/internal/ads/dlo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/dnh<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/ads/dlo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dnh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dnh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dlo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dnh$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    return-void
.end method
