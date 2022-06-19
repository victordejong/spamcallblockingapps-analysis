.class public final Lcom/google/android/gms/internal/ads/q00;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/google/android/gms/internal/ads/jt;

.field private final c:Lcom/google/android/gms/internal/ads/bl1;

.field private final d:I

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/bl1;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q00;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q00;->b:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q00;->c:Lcom/google/android/gms/internal/ads/bl1;

    iput p4, p0, Lcom/google/android/gms/internal/ads/q00;->d:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/q00;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/q00;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/jt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q00;->b:Lcom/google/android/gms/internal/ads/jt;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q00;->a:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/bl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q00;->c:Lcom/google/android/gms/internal/ads/bl1;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/q00;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q00;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q00;->f:Z

    return v0
.end method
