.class public final Lcom/google/android/exoplayer2/b0;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;)Lcom/google/android/exoplayer2/x0;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/util/h0;->D()Landroid/os/Looper;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/b0;->b(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Landroid/os/Looper;)Lcom/google/android/exoplayer2/x0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Landroid/os/Looper;)Lcom/google/android/exoplayer2/x0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/v0;",
            "Lcom/google/android/exoplayer2/trackselection/h;",
            "Lcom/google/android/exoplayer2/g0;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "Lcom/google/android/exoplayer2/drm/o;",
            ">;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/exoplayer2/x0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v5, Lcom/google/android/exoplayer2/a1/a;

    sget-object v0, Lcom/google/android/exoplayer2/util/f;->a:Lcom/google/android/exoplayer2/util/f;

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/a1/a;-><init>(Lcom/google/android/exoplayer2/util/f;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/b0;->c(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/a1/a;Landroid/os/Looper;)Lcom/google/android/exoplayer2/x0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/a1/a;Landroid/os/Looper;)Lcom/google/android/exoplayer2/x0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/v0;",
            "Lcom/google/android/exoplayer2/trackselection/h;",
            "Lcom/google/android/exoplayer2/g0;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "Lcom/google/android/exoplayer2/drm/o;",
            ">;",
            "Lcom/google/android/exoplayer2/a1/a;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/exoplayer2/x0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/n;->l(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 2
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/b0;->d(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/a1/a;Landroid/os/Looper;)Lcom/google/android/exoplayer2/x0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/a1/a;Landroid/os/Looper;)Lcom/google/android/exoplayer2/x0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/v0;",
            "Lcom/google/android/exoplayer2/trackselection/h;",
            "Lcom/google/android/exoplayer2/g0;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "Lcom/google/android/exoplayer2/drm/o;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/f;",
            "Lcom/google/android/exoplayer2/a1/a;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/exoplayer2/x0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v10, Lcom/google/android/exoplayer2/x0;

    sget-object v8, Lcom/google/android/exoplayer2/util/f;->a:Lcom/google/android/exoplayer2/util/f;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/x0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/a1/a;Lcom/google/android/exoplayer2/util/f;Landroid/os/Looper;)V

    return-object v10
.end method
