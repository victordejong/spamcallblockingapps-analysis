.class public final Lcom/google/android/gms/internal/ads/ajr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/google/android/gms/internal/ads/act;

.field private final c:Lcom/google/android/gms/internal/ads/cgq;

.field private final d:I

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgq;IZZ)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajr;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajr;->b:Lcom/google/android/gms/internal/ads/act;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ajr;->c:Lcom/google/android/gms/internal/ads/cgq;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/ajr;->d:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/ajr;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/ajr;->f:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/act;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajr;->b:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajr;->a:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cgq;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajr;->c:Lcom/google/android/gms/internal/ads/cgq;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/ajr;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajr;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajr;->f:Z

    return v0
.end method
