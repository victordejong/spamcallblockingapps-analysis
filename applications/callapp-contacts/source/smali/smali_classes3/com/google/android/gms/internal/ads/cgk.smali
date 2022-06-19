.class final synthetic Lcom/google/android/gms/internal/ads/cgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgk;->a:Lcom/google/android/gms/internal/ads/cgh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgk;->a:Lcom/google/android/gms/internal/ads/cgh;

    .line 1007
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/wo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgh;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1008
    new-instance v0, Lcom/google/android/gms/internal/ads/cgi;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/cgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    .line 1009
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/wo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgh;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/wo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 1011
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/wo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgh;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/wo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 1013
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/wo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgh;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/wo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v6, v2

    goto :goto_2

    :cond_3
    move-object v6, v1

    .line 1015
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgh;->a:Lcom/google/android/gms/internal/ads/wo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wo;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v7, v2

    goto :goto_3

    :cond_4
    move-object v7, v0

    :goto_3
    const-string v0, "TIME_OUT"

    .line 1017
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1018
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->Y:Lcom/google/android/gms/internal/ads/af;

    .line 1019
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 1020
    check-cast v0, Ljava/lang/Long;

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move-object v8, v0

    .line 1022
    new-instance v0, Lcom/google/android/gms/internal/ads/cgi;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/cgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
