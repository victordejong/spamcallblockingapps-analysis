.class public final Lcom/google/android/gms/internal/ads/dcw$c;
.super Lcom/google/android/gms/internal/ads/dbd;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/dcw",
        "<TT;*>;>",
        "Lcom/google/android/gms/internal/ads/dbd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dcw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dcw$c;->a:Lcom/google/android/gms/internal/ads/dcw;

    .line 3
    return-void
.end method
