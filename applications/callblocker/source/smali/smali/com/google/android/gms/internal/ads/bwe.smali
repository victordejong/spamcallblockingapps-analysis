.class public final Lcom/google/android/gms/internal/ads/bwe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/ant;

.field private final d:Lcom/google/android/gms/internal/ads/cia;

.field private final e:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bwe;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ant;Lcom/google/android/gms/internal/ads/cia;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwe;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwe;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bwe;->c:Lcom/google/android/gms/internal/ads/ant;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwe;->d:Lcom/google/android/gms/internal/ads/cia;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bwe;->e:Lcom/google/android/gms/internal/ads/chh;

    .line 7
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cA:Lcom/google/android/gms/internal/ads/ect;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwe;->c:Lcom/google/android/gms/internal/ads/ant;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwe;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ant;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwe;->d:Lcom/google/android/gms/internal/ads/cia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cia;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bwd;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bwd;-><init>(Lcom/google/android/gms/internal/ads/bwe;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cA:Lcom/google/android/gms/internal/ads/ect;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string/jumbo v0, "quality_signals"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    :goto_0
    const-string/jumbo v0, "seq_num"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cz:Lcom/google/android/gms/internal/ads/ect;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/bwe;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwe;->c:Lcom/google/android/gms/internal/ads/ant;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwe;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ant;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 24
    const-string/jumbo v0, "quality_signals"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwe;->d:Lcom/google/android/gms/internal/ads/cia;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cia;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwe;->c:Lcom/google/android/gms/internal/ads/ant;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->e:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ant;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 27
    const-string/jumbo v0, "quality_signals"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->d:Lcom/google/android/gms/internal/ads/cia;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cia;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
