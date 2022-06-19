.class public final Lcom/google/android/gms/internal/ads/bj2;
.super Lcom/google/android/gms/internal/ads/ak2;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V
    .locals 7

    const-string v2, "p3Z3ZqZKo17onS4HiiEtpoGwRIBviLad/ZdN5J9oBr9KBduQsBv0bePYyi9xIk1Y"

    const-string v3, "iFXNP6ElZKxf5HXZJFDnSU66PfDdP3IuIwL5oCTFkB0="

    const/16 v6, 0x31

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ak2;-><init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdm;->d:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->w(Lcom/google/android/gms/internal/ads/zzdm;)Lcom/google/android/gms/internal/ads/ar0;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/si2;->b()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdm;->c:Lcom/google/android/gms/internal/ads/zzdm;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdm;->b:Lcom/google/android/gms/internal/ads/zzdm;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ar0;->w(Lcom/google/android/gms/internal/ads/zzdm;)Lcom/google/android/gms/internal/ads/ar0;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/provider/Settings$SettingNotFoundException;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    throw v0
.end method
