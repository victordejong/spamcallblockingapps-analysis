.class public final Lcom/google/android/gms/internal/ads/hl;
.super Lcom/google/android/gms/internal/ads/nk;
.source ""


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/hl;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/hl;->c:I

    return v0
.end method
