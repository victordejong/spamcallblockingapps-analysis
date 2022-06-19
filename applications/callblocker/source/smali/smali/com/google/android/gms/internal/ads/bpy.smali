.class final Lcom/google/android/gms/internal/ads/bpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cgr;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/cgs;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/bpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bpv;Ljava/lang/String;JLcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/cgs;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpy;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/bpy;->b:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bpy;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bpy;->d:Lcom/google/android/gms/internal/ads/cgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bpv;->a(Lcom/google/android/gms/internal/ads/bpv;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v8

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpy;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/bpy;->b:J

    sub-long v4, v8, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/cgr;->X:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bpv;->a(Lcom/google/android/gms/internal/ads/bpv;Ljava/lang/String;IJLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bpv;->b(Lcom/google/android/gms/internal/ads/bpv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bpv;->c(Lcom/google/android/gms/internal/ads/bpv;)Lcom/google/android/gms/internal/ads/bpx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpy;->d:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpy;->c:Lcom/google/android/gms/internal/ads/cgr;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/bpy;->b:J

    sub-long v5, v8, v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bpx;->a(Lcom/google/android/gms/internal/ads/cgs;Lcom/google/android/gms/internal/ads/cgr;ILcom/google/android/gms/internal/ads/zzcnn;J)V

    .line 6
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 10

    .prologue
    const/4 v1, 0x6

    const/4 v3, 0x3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bpv;->a(Lcom/google/android/gms/internal/ads/bpv;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v8

    .line 8
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_2

    .line 9
    const/4 v3, 0x2

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpy;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/bpy;->b:J

    sub-long v4, v8, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/cgr;->X:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bpv;->a(Lcom/google/android/gms/internal/ads/bpv;Ljava/lang/String;IJLjava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bpv;->b(Lcom/google/android/gms/internal/ads/bpv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpy;->e:Lcom/google/android/gms/internal/ads/bpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bpv;->c(Lcom/google/android/gms/internal/ads/bpv;)Lcom/google/android/gms/internal/ads/bpx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpy;->d:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpy;->c:Lcom/google/android/gms/internal/ads/cgr;

    .line 26
    instance-of v4, p1, Lcom/google/android/gms/internal/ads/zzcnn;

    if-eqz v4, :cond_7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnn;

    move-object v4, p1

    :goto_1
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/bpy;->b:J

    sub-long v5, v8, v6

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bpx;->a(Lcom/google/android/gms/internal/ads/cgs;Lcom/google/android/gms/internal/ads/cgr;ILcom/google/android/gms/internal/ads/zzcnn;J)V

    .line 28
    :cond_1
    return-void

    .line 10
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcpy;

    if-nez v0, :cond_0

    .line 12
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_3

    .line 13
    const/4 v3, 0x4

    goto :goto_0

    .line 14
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdhk;

    if-eqz v0, :cond_4

    .line 15
    const/4 v3, 0x5

    goto :goto_0

    .line 16
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcjk;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->a()I

    move-result v0

    .line 18
    if-ne v0, v3, :cond_5

    .line 19
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    move v3, v1

    .line 21
    goto :goto_0

    :cond_6
    move v3, v1

    .line 22
    goto :goto_0

    .line 26
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method
