.class public final Lcom/google/android/gms/internal/ads/sf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sg2<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/ql2<",
        "TR;TAdT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/g21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/y03;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sf2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/sf2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/g21;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sf2;->a:Lcom/google/android/gms/internal/ads/g21;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tg2;",
            "Lcom/google/android/gms/internal/ads/rg2<",
            "TR;>;TR;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/tg2;->b:Lcom/google/android/gms/internal/ads/qg2;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/rg2;->a(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/f21;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/yg2;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/yg2;-><init>(Z)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/f21;->s(Lcom/google/android/gms/internal/ads/yg2;)Lcom/google/android/gms/internal/ads/f21;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/f21;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g21;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sf2;->a:Lcom/google/android/gms/internal/ads/g21;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/ql2;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/ql2;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/b01;->c()Lcom/google/android/gms/internal/ads/r03;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/qf2;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/qf2;-><init>(Lcom/google/android/gms/internal/ads/sf2;Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/b01;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sf2;->b:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/ads/rf2;

    .line 8
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/rf2;-><init>(Lcom/google/android/gms/internal/ads/ql2;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sf2;->b:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sf2;->a:Lcom/google/android/gms/internal/ads/g21;

    return-object v0
.end method
