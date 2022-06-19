.class public final Lcom/google/android/exoplayer2/source/s;
.super Lcom/google/android/exoplayer2/source/n;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/n<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final i:Lcom/google/android/exoplayer2/source/y;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j$a;Lcom/google/android/exoplayer2/c1/l;Lcom/google/android/exoplayer2/upstream/u;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/n;-><init>()V

    .line 3
    new-instance v9, Lcom/google/android/exoplayer2/source/y;

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/drm/j;->d()Lcom/google/android/exoplayer2/drm/k;

    move-result-object v4

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/y;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j$a;Lcom/google/android/exoplayer2/c1/l;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/s;->i:Lcom/google/android/exoplayer2/source/y;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j$a;Lcom/google/android/exoplayer2/c1/l;Lcom/google/android/exoplayer2/upstream/u;Ljava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/s$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/s;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j$a;Lcom/google/android/exoplayer2/c1/l;Lcom/google/android/exoplayer2/upstream/u;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected B(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/l;->r(Lcom/google/android/exoplayer2/y0;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/upstream/e;J)Lcom/google/android/exoplayer2/source/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s;->i:Lcom/google/android/exoplayer2/source/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/upstream/e;J)Lcom/google/android/exoplayer2/source/u;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/android/exoplayer2/source/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s;->i:Lcom/google/android/exoplayer2/source/y;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/y;->i(Lcom/google/android/exoplayer2/source/u;)V

    return-void
.end method

.method protected q(Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/n;->q(Lcom/google/android/exoplayer2/upstream/x;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/s;->i:Lcom/google/android/exoplayer2/source/y;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/n;->z(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;)V

    return-void
.end method

.method protected bridge synthetic y(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/s;->B(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V

    return-void
.end method
