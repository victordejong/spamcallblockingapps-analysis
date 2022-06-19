.class public Lcom/google/android/gms/internal/ads/b20;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s30;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/gms/internal/ads/bl1;

.field private final d:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/s30;Lcom/google/android/gms/internal/ads/bl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b20;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b20;->d:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b20;->a:Lcom/google/android/gms/internal/ads/s30;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/b20;->c:Lcom/google/android/gms/internal/ads/bl1;

    return-void
.end method

.method public static final f(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/ne0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            "Lcom/google/android/gms/internal/ads/al1;",
            "Lcom/google/android/gms/internal/ads/sl1;",
            ")",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/f90;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ne0;

    new-instance v1, Lcom/google/android/gms/internal/ads/z10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/z10;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/sl1;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/ne0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/m30;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/m30;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/f90;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ne0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ne0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/google/android/gms/internal/ads/k30;)Lcom/google/android/gms/internal/ads/ne0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/k30;",
            ")",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/f90;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ne0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ne0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/jt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b20;->d:Lcom/google/android/gms/internal/ads/jt;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b20;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/s30;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b20;->a:Lcom/google/android/gms/internal/ads/s30;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/bl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b20;->c:Lcom/google/android/gms/internal/ads/bl1;

    return-object v0
.end method

.method public e(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/d90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/f90;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/d90;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/d90;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/d90;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
