.class public final Lcom/google/android/gms/internal/ads/ql3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xk3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/y6;

.field private final b:Lcom/google/android/gms/internal/ads/cl3;

.field private c:I

.field private final d:Lcom/google/android/gms/internal/ads/zn3;

.field private final e:Lcom/google/android/gms/internal/ads/dg2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/y6;Lcom/google/android/gms/internal/ads/br3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/pl3;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/pl3;-><init>(Lcom/google/android/gms/internal/ads/br3;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ql3;->a:Lcom/google/android/gms/internal/ads/y6;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ql3;->b:Lcom/google/android/gms/internal/ads/cl3;

    new-instance p1, Lcom/google/android/gms/internal/ads/dg2;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dg2;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ql3;->e:Lcom/google/android/gms/internal/ads/dg2;

    new-instance p1, Lcom/google/android/gms/internal/ads/zn3;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zn3;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ql3;->d:Lcom/google/android/gms/internal/ads/zn3;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/ql3;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/ql3;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ql3;->c:I

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/j5;)Lcom/google/android/gms/internal/ads/sl3;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/j5;->d:Lcom/google/android/gms/internal/ads/i5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/sl3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ql3;->a:Lcom/google/android/gms/internal/ads/y6;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ql3;->b:Lcom/google/android/gms/internal/ads/cl3;

    sget-object v5, Lcom/google/android/gms/internal/ads/go2;->a:Lcom/google/android/gms/internal/ads/go2;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ql3;->d:Lcom/google/android/gms/internal/ads/zn3;

    iget v7, p0, Lcom/google/android/gms/internal/ads/ql3;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 2
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/sl3;-><init>(Lcom/google/android/gms/internal/ads/j5;Lcom/google/android/gms/internal/ads/y6;Lcom/google/android/gms/internal/ads/cl3;Lcom/google/android/gms/internal/ads/go2;Lcom/google/android/gms/internal/ads/zn3;ILcom/google/android/gms/internal/ads/rl3;[B)V

    return-object v0
.end method
