.class public final Lcom/google/android/gms/internal/ads/v02;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/b82;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/b82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v02;->a:Lcom/google/android/gms/internal/ads/b82;

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/ads/b82;)Lcom/google/android/gms/internal/ads/v02;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/b82;->G()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/v02;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/v02;-><init>(Lcom/google/android/gms/internal/ads/b82;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m12;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v02;->a:Lcom/google/android/gms/internal/ads/b82;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/n12;->b(Lcom/google/android/gms/internal/ads/b82;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d12;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/d12;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v02;->a:Lcom/google/android/gms/internal/ads/b82;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/b82;->F()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/a82;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/a82;->G()Lcom/google/android/gms/internal/ads/zzeoa;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzeoa;->c:Lcom/google/android/gms/internal/ads/zzeoa;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/a82;->F()Lcom/google/android/gms/internal/ads/p72;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/m12;->k(Lcom/google/android/gms/internal/ads/p72;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/d12;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/a82;)Lcom/google/android/gms/internal/ads/b12;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/a82;->H()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/v02;->a:Lcom/google/android/gms/internal/ads/b82;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/b82;->E()I

    move-result v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/d12;->c(Lcom/google/android/gms/internal/ads/b12;)V

    goto :goto_1

    :cond_3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/m12;->l(Lcom/google/android/gms/internal/ads/d12;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v02;->a:Lcom/google/android/gms/internal/ads/b82;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/n12;->a(Lcom/google/android/gms/internal/ads/b82;)Lcom/google/android/gms/internal/ads/g82;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
