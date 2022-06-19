.class public final Lcom/google/android/gms/internal/ads/e22;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qw1<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gx;

.field private final b:Lcom/google/android/gms/internal/ads/s03;

.field private final c:Lcom/google/android/gms/internal/ads/yn2;

.field private final d:Lcom/google/android/gms/internal/ads/n22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/n22;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/gx;Lcom/google/android/gms/internal/ads/n22;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yn2;",
            "Lcom/google/android/gms/internal/ads/s03;",
            "Lcom/google/android/gms/internal/ads/gx;",
            "Lcom/google/android/gms/internal/ads/n22;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e22;->c:Lcom/google/android/gms/internal/ads/yn2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e22;->b:Lcom/google/android/gms/internal/ads/s03;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/e22;->a:Lcom/google/android/gms/internal/ads/gx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/e22;->d:Lcom/google/android/gms/internal/ads/n22;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/e22;)Lcom/google/android/gms/internal/ads/n22;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/e22;->d:Lcom/google/android/gms/internal/ads/n22;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/e22;->a:Lcom/google/android/gms/internal/ads/gx;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/j22;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/j22;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/d22;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/d22;-><init>(Lcom/google/android/gms/internal/ads/e22;Lcom/google/android/gms/internal/ads/vi0;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/j22;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/j22;->a(Lcom/google/android/gms/ads/internal/f;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bx;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kj2;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/bx;-><init>(Lcom/google/android/gms/ads/internal/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/e22;->c:Lcom/google/android/gms/internal/ads/yn2;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfem;->t:Lcom/google/android/gms/internal/ads/zzfem;

    new-instance v1, Lcom/google/android/gms/internal/ads/c22;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/c22;-><init>(Lcom/google/android/gms/internal/ads/e22;Lcom/google/android/gms/internal/ads/bx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/e22;->b:Lcom/google/android/gms/internal/ads/s03;

    .line 6
    invoke-static {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/kn2;->d(Lcom/google/android/gms/internal/ads/dn2;Lcom/google/android/gms/internal/ads/s03;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfem;->u:Lcom/google/android/gms/internal/ads/zzfem;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/qn2;->j(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/qn2;->e(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/bx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e22;->a:Lcom/google/android/gms/internal/ads/gx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gx;->C3(Lcom/google/android/gms/internal/ads/dx;)V

    return-void
.end method
