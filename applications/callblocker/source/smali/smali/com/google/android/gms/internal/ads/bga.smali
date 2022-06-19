.class public final Lcom/google/android/gms/internal/ads/bga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/atb;
.implements Lcom/google/android/gms/internal/ads/dxs;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dwi;

.field private b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/cfc;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/cfc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bga;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bga;->c:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a$a;->a:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 6
    if-eqz p2, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a$a;->F:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->b:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 13
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->p:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 30
    :goto_0
    return-void

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->r:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 17
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->s:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->q:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 21
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->t:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->u:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 25
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->v:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 27
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->w:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/bgd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bgd;-><init>(Lcom/google/android/gms/internal/ads/chd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 11
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwv$g;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/bgc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bgc;-><init>(Lcom/google/android/gms/internal/ads/dwv$g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->H:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 40
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    .line 48
    if-eqz p1, :cond_0

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a$a;->J:Lcom/google/android/gms/internal/ads/dwk$a$a;

    .line 51
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 52
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a$a;->K:Lcom/google/android/gms/internal/ads/dwk$a$a;

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->c:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dwv$g;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/bgf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bgf;-><init>(Lcom/google/android/gms/internal/ads/dwv$g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->G:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 43
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a$a;->L:Lcom/google/android/gms/internal/ads/dwk$a$a;

    .line 57
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 58
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a$a;->M:Lcom/google/android/gms/internal/ads/dwk$a$a;

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/dwv$g;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/bge;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bge;-><init>(Lcom/google/android/gms/internal/ads/dwv$g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->I:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 46
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bga;->c:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->d:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bga;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->e:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i_()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->N:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 60
    return-void
.end method
