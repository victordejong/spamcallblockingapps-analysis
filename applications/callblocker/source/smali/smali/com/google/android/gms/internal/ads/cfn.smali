.class final synthetic Lcom/google/android/gms/internal/ads/cfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cek;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/cfn;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cfn;->a:I

    check-cast p1, Lcom/google/android/gms/internal/ads/rb;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(I)V

    .line 3
    return-void
.end method
