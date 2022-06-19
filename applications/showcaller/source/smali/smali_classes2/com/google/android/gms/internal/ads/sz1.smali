.class public final Lcom/google/android/gms/internal/ads/sz1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/xw1<",
        "Lcom/google/android/gms/internal/ads/me1;",
        "Lcom/google/android/gms/internal/ads/r90;",
        "Lcom/google/android/gms/internal/ads/my1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/fd1;

.field private c:Lcom/google/android/gms/internal/ads/h80;

.field private final d:Lcom/google/android/gms/internal/ads/zzcgz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fd1;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sz1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sz1;->b:Lcom/google/android/gms/internal/ads/fd1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sz1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/h80;)Lcom/google/android/gms/internal/ads/h80;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sz1;->c:Lcom/google/android/gms/internal/ads/h80;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/tw1<",
            "Lcom/google/android/gms/internal/ads/r90;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/r90;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/ej2;->V:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/r90;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sz1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->f:I

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->d1:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 5
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/r90;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/ej2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sz1;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/qz1;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/qz1;-><init>(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/tw1;Lcom/google/android/gms/internal/ads/rz1;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/y70;

    .line 8
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/r90;->j3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/y70;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 9
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/r90;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/ej2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sz1;->a:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/qz1;

    .line 13
    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/qz1;-><init>(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/tw1;Lcom/google/android/gms/internal/ads/rz1;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    move-object v9, p2

    check-cast v9, Lcom/google/android/gms/internal/ads/y70;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/xj2;->i:Lcom/google/android/gms/internal/ads/zzblv;

    .line 14
    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/r90;->Y4(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/y70;Lcom/google/android/gms/internal/ads/zzblv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 16
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sz1;->c:Lcom/google/android/gms/internal/ads/h80;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/re1;->B(Lcom/google/android/gms/internal/ads/h80;)Lcom/google/android/gms/internal/ads/re1;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xj2;->g:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->d0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sz1;->b:Lcom/google/android/gms/internal/ads/fd1;

    new-instance v2, Lcom/google/android/gms/internal/ads/mz0;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/tw1;->a:Ljava/lang/String;

    .line 8
    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/df1;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/df1;-><init>(Lcom/google/android/gms/internal/ads/re1;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/sg1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sz1;->c:Lcom/google/android/gms/internal/ads/h80;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0, v3}, Lcom/google/android/gms/internal/ads/sg1;-><init>(Lcom/google/android/gms/internal/ads/e80;Lcom/google/android/gms/internal/ads/d80;Lcom/google/android/gms/internal/ads/h80;[B)V

    .line 9
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/fd1;->d(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/df1;Lcom/google/android/gms/internal/ads/sg1;)Lcom/google/android/gms/internal/ads/te1;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    .line 10
    check-cast p2, Lcom/google/android/gms/internal/ads/my1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yy0;->g()Lcom/google/android/gms/internal/ads/n12;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/my1;->F6(Lcom/google/android/gms/internal/ads/y70;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ue1;->h()Lcom/google/android/gms/internal/ads/me1;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 p2, 0x1

    const-string p3, "No corresponding native ad listener"

    .line 13
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 p2, 0x2

    const-string p3, "Unified must be used for RTB."

    .line 15
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1
.end method
