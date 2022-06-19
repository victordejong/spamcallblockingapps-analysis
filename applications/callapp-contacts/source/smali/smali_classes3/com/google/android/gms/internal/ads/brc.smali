.class public final Lcom/google/android/gms/internal/ads/brc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cto;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V
    .locals 2

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/ctj;->zzhtm:Lcom/google/android/gms/internal/ads/ctj;

    if-ne p2, p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/brb;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/ctj;->zzhtm:Lcom/google/android/gms/internal/ads/ctj;

    if-ne p2, p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/brb;->c()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/brb;->c()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/brb;->b(J)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V
    .locals 4

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/aq;->dM:Lcom/google/android/gms/internal/ads/af;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/ctj;->zzhtm:Lcom/google/android/gms/internal/ads/ctj;

    if-ne p2, p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/brb;->c()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/brb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/brb;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/brb;->b(J)V

    :cond_0
    return-void
.end method
