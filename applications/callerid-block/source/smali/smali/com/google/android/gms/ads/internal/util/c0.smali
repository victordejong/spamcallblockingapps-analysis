.class public final Lcom/google/android/gms/ads/internal/util/c0;
.super Lcom/google/android/gms/internal/ads/c1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/c1<",
        "Lcom/google/android/gms/internal/ads/yy2;",
        ">;"
    }
.end annotation


# instance fields
.field private final n:Lcom/google/android/gms/internal/ads/fp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fp<",
            "Lcom/google/android/gms/internal/ads/yy2;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/gms/internal/ads/oo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/fp<",
            "Lcom/google/android/gms/internal/ads/yy2;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/ads/internal/util/b0;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/b0;-><init>(Lcom/google/android/gms/internal/ads/fp;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/c1;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/x4;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/c0;->n:Lcom/google/android/gms/internal/ads/fp;

    new-instance p2, Lcom/google/android/gms/internal/ads/oo;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/oo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/c0;->o:Lcom/google/android/gms/internal/ads/oo;

    const-string v0, "GET"

    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/internal/ads/oo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final w(Lcom/google/android/gms/internal/ads/yy2;)Lcom/google/android/gms/internal/ads/v6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yy2;",
            ")",
            "Lcom/google/android/gms/internal/ads/v6<",
            "Lcom/google/android/gms/internal/ads/yy2;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cm;->a(Lcom/google/android/gms/internal/ads/yy2;)Lcom/google/android/gms/internal/ads/dn2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/v6;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dn2;)Lcom/google/android/gms/internal/ads/v6;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic x(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/yy2;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/c0;->o:Lcom/google/android/gms/internal/ads/oo;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/yy2;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/yy2;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/oo;->d(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/c0;->o:Lcom/google/android/gms/internal/ads/oo;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/yy2;->b:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/oo;->j()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oo;->f([B)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/c0;->n:Lcom/google/android/gms/internal/ads/fp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    return-void
.end method
