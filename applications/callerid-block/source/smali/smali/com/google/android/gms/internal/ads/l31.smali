.class public final Lcom/google/android/gms/internal/ads/l31;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/common/util/f;

.field private final b:Lcom/google/android/gms/internal/ads/m31;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/google/android/gms/internal/ads/a01;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/f;Lcom/google/android/gms/internal/ads/m31;Lcom/google/android/gms/internal/ads/a01;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/l31;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l31;->a:Lcom/google/android/gms/common/util/f;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l31;->b:Lcom/google/android/gms/internal/ads/m31;

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->q4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/l31;->d:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l31;->e:Lcom/google/android/gms/internal/ads/a01;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/l31;)Lcom/google/android/gms/common/util/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/l31;->a:Lcom/google/android/gms/common/util/f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/l31;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x21

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p3, p4

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/l31;->c:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/l31;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/l31;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/l31;)Lcom/google/android/gms/internal/ads/m31;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/l31;->b:Lcom/google/android/gms/internal/ads/m31;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/l31;)Lcom/google/android/gms/internal/ads/a01;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/l31;->e:Lcom/google/android/gms/internal/ads/a01;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/dl1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dl1;",
            "Lcom/google/android/gms/internal/ads/al1;",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l31;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v3

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/al1;->v:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/k31;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/k31;-><init>(Lcom/google/android/gms/internal/ads/l31;JLjava/lang/String;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p3
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l31;->c:Ljava/util/List;

    const-string v1, "_"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
