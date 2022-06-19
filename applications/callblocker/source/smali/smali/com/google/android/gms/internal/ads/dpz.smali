.class final Lcom/google/android/gms/internal/ads/dpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqo;


# instance fields
.field private final a:I

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dpt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dpt;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpz;->b:Lcom/google/android/gms/internal/ads/dpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/dpz;->a:I

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dpz;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpz;->a:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpz;->b:Lcom/google/android/gms/internal/ads/dpt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpz;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dpt;->a(ILcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I

    move-result v0

    return v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpz;->b:Lcom/google/android/gms/internal/ads/dpt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpz;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/dpt;->a(IJ)V

    .line 9
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpz;->b:Lcom/google/android/gms/internal/ads/dpt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dpz;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dpt;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpz;->b:Lcom/google/android/gms/internal/ads/dpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dpt;->g()V

    .line 6
    return-void
.end method
