.class public final Lcom/google/android/gms/internal/ads/xj2;
.super Lcom/google/android/gms/internal/ads/ak2;
.source ""


# instance fields
.field private final h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;IILandroid/view/View;)V
    .locals 7

    const-string v2, "/nUAVD6E5149sZYPq78F0SxtCINb4d4P8HJ52kECSRArxECTN1q26bJ2wQ4rH1F5"

    const-string v3, "ToWTu5sR1jYEliR/iVXRogiAAmKJy3kOi4U3O1i9Y2M="

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ak2;-><init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/xj2;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj2;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->G1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si2;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ak2;->e:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/xj2;->h:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/wi2;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/wi2;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/c51;->E()Lcom/google/android/gms/internal/ads/b41;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/wi2;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/b41;->q(J)Lcom/google/android/gms/internal/ads/b41;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/wi2;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/b41;->r(J)Lcom/google/android/gms/internal/ads/b41;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/wi2;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/b41;->s(J)Lcom/google/android/gms/internal/ads/b41;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/wi2;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/b41;->t(J)Lcom/google/android/gms/internal/ads/b41;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/c51;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->J(Lcom/google/android/gms/internal/ads/c51;)Lcom/google/android/gms/internal/ads/ar0;

    :cond_1
    return-void
.end method
