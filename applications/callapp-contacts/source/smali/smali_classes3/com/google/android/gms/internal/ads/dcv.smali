.class final Lcom/google/android/gms/internal/ads/dcv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/ads/dot;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/dot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dcx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dcx<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dcx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dcx<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dcv;->a:Lcom/google/android/gms/internal/ads/dcx;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dlw;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcv;->a:Lcom/google/android/gms/internal/ads/dcx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dcx;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcv;->a:Lcom/google/android/gms/internal/ads/dcx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dcx;->a(Lcom/google/android/gms/internal/ads/dot;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcv;->a:Lcom/google/android/gms/internal/ads/dcx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dcx;->b(Lcom/google/android/gms/internal/ads/dot;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dot;

    return-object p1
.end method
