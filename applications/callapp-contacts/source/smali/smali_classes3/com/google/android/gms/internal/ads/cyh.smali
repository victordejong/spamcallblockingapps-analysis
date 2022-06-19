.class final Lcom/google/android/gms/internal/ads/cyh;
.super Lcom/google/android/gms/internal/ads/cyj;
.source "SourceFile"


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/cyi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cyi;Lcom/google/android/gms/internal/ads/cyf;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cyh;->b:Lcom/google/android/gms/internal/ads/cyi;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/cyj;-><init>(Lcom/google/android/gms/internal/ads/cyf;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyh;->b:Lcom/google/android/gms/internal/ads/cyi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cyi;->a:Lcom/google/android/gms/internal/ads/cxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cyh;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cxp;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method final b(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
