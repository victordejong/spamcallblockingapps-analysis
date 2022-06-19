.class public final Lcom/google/android/gms/internal/ads/djq;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djq;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/djq;->a:Lcom/google/android/gms/internal/ads/din;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djq;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 6
    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bce;

    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->d(Lcom/google/android/gms/internal/ads/bce;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 11
    :goto_1
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bce;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djq;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/bce;->c:Lcom/google/android/gms/internal/ads/bce;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->d(Lcom/google/android/gms/internal/ads/bce;)Lcom/google/android/gms/internal/ads/atw$a$a;

    goto :goto_1
.end method
