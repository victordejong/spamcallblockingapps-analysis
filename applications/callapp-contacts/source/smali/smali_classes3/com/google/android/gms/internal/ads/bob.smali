.class final Lcom/google/android/gms/internal/ads/bob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/cpk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bnw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bnw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bob;->a:Lcom/google/android/gms/internal/ads/bnw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/cpk;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bob;->a:Lcom/google/android/gms/internal/ads/bnw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bnw;->a(Lcom/google/android/gms/internal/ads/bnw;)Lcom/google/android/gms/internal/ads/brb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget v1, v1, Lcom/google/android/gms/internal/ads/coz;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/brb;->a(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bob;->a:Lcom/google/android/gms/internal/ads/bnw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bnw;->a(Lcom/google/android/gms/internal/ads/bnw;)Lcom/google/android/gms/internal/ads/brb;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/coz;->f:J

    .line 1017
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/brb;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 1018
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/brb;->a:J

    .line 1019
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/bnw;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bob;->a:Lcom/google/android/gms/internal/ads/bnw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bnw;->a(Lcom/google/android/gms/internal/ads/bnw;)Lcom/google/android/gms/internal/ads/brb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/brb;->a(I)V

    :cond_0
    return-void
.end method
