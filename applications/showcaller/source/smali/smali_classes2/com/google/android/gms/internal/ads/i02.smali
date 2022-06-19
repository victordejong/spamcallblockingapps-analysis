.class public final Lcom/google/android/gms/internal/ads/i02;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uz2<",
        "Lcom/google/android/gms/internal/ads/rj2;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yn2;

.field private final b:Lcom/google/android/gms/internal/ads/a31;

.field private final c:Lcom/google/android/gms/internal/ads/yo2;

.field private final d:Lcom/google/android/gms/internal/ads/bp2;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Lcom/google/android/gms/internal/ads/az0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/az0<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/e02;

.field private final i:Lcom/google/android/gms/internal/ads/uw1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/e02;Lcom/google/android/gms/internal/ads/a31;Lcom/google/android/gms/internal/ads/yo2;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/az0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/uw1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yn2;",
            "Lcom/google/android/gms/internal/ads/e02;",
            "Lcom/google/android/gms/internal/ads/a31;",
            "Lcom/google/android/gms/internal/ads/yo2;",
            "Lcom/google/android/gms/internal/ads/bp2;",
            "Lcom/google/android/gms/internal/ads/az0<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/uw1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i02;->a:Lcom/google/android/gms/internal/ads/yn2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i02;->h:Lcom/google/android/gms/internal/ads/e02;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i02;->b:Lcom/google/android/gms/internal/ads/a31;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i02;->c:Lcom/google/android/gms/internal/ads/yo2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i02;->d:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/i02;->g:Lcom/google/android/gms/internal/ads/az0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/i02;->e:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/i02;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/i02;->i:Lcom/google/android/gms/internal/ads/uw1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/rj2;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/jj2;->e:I

    const/16 v1, 0xc8

    const/16 v2, 0x12c

    if-eqz v0, :cond_2

    if-lt v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->N3:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "No fill."

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    const/16 v3, 0x190

    if-ge v0, v3, :cond_1

    const-string v0, "No location header to follow redirect or too many redirects."

    goto :goto_0

    .line 6
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    .line 7
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "No ad config."

    .line 8
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/jj2;->i:Lcom/google/android/gms/internal/ads/ij2;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ij2;->a()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i02;->i:Lcom/google/android/gms/internal/ads/uw1;

    .line 9
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/uw1;->a(Lcom/google/android/gms/internal/ads/jj2;)V

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->W5:Lcom/google/android/gms/internal/ads/cw;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 13
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget v3, v3, Lcom/google/android/gms/internal/ads/jj2;->e:I

    if-eqz v3, :cond_5

    if-lt v3, v1, :cond_4

    if-lt v3, v2, :cond_5

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    .line 14
    invoke-direct {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i02;->a:Lcom/google/android/gms/internal/ads/yn2;

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->o:Lcom/google/android/gms/internal/ads/zzfem;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzehs;

    .line 16
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 18
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/kn2;->a(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i02;->b:Lcom/google/android/gms/internal/ads/a31;

    new-instance v2, Lcom/google/android/gms/internal/ads/ku0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i02;->d:Lcom/google/android/gms/internal/ads/bp2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/i02;->c:Lcom/google/android/gms/internal/ads/yo2;

    .line 20
    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/ku0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/yo2;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i02;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->X5:Lcom/google/android/gms/internal/ads/cw;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qj2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ej2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i02;->i:Lcom/google/android/gms/internal/ads/uw1;

    .line 24
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/uw1;->b(Lcom/google/android/gms/internal/ads/ej2;)V

    .line 25
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ej2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/i02;->g:Lcom/google/android/gms/internal/ads/az0;

    .line 26
    iget v6, v2, Lcom/google/android/gms/internal/ads/ej2;->b:I

    .line 27
    invoke-interface {v5, v6, v4}, Lcom/google/android/gms/internal/ads/az0;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/qw1;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 28
    invoke-interface {v4, p1, v2}, Lcom/google/android/gms/internal/ads/qw1;->a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i02;->i:Lcom/google/android/gms/internal/ads/uw1;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 29
    invoke-static {v6, v7, v7}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v6

    .line 30
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/uw1;->c(Lcom/google/android/gms/internal/ads/ej2;JLcom/google/android/gms/internal/ads/zzbcz;)V

    goto :goto_1

    .line 31
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qj2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ej2;

    .line 32
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/ej2;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/i02;->g:Lcom/google/android/gms/internal/ads/az0;

    .line 33
    iget v7, v3, Lcom/google/android/gms/internal/ads/ej2;->b:I

    .line 34
    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/az0;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/qw1;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 35
    invoke-interface {v6, p1, v3}, Lcom/google/android/gms/internal/ads/qw1;->a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/i02;->a:Lcom/google/android/gms/internal/ads/yn2;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfem;->p:Lcom/google/android/gms/internal/ads/zzfem;

    .line 36
    invoke-virtual {v4, v7, v0}, Lcom/google/android/gms/internal/ads/rn2;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "render-config-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/qn2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/h02;

    .line 37
    invoke-direct {v4, p0, p1, v3, v6}, Lcom/google/android/gms/internal/ads/h02;-><init>(Lcom/google/android/gms/internal/ads/i02;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/qw1;)V

    const-class v3, Ljava/lang/Throwable;

    .line 38
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/qn2;->g(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object v0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/qw1;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/i02;->h:Lcom/google/android/gms/internal/ads/e02;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/qw1;->b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iget p3, p2, Lcom/google/android/gms/internal/ads/ej2;->N:I

    int-to-long v1, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i02;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {p1, v1, v2, p3, v3}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 4
    invoke-virtual {p4, v0, p2, p1}, Lcom/google/android/gms/internal/ads/e02;->e(Lcom/google/android/gms/internal/ads/jj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    return-object p1
.end method
