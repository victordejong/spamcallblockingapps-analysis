.class public final Ly2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ll9/a;

.field public final c:Ll9/a;

.field public final d:Ll9/a;

.field public final e:Ll9/a;

.field public final f:Ll9/a;

.field public final g:Ll9/a;

.field public final h:Ll9/a;


# direct methods
.method public synthetic constructor <init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;I)V
    .locals 0

    .line 1
    iput p8, p0, Ly2/o;->a:I

    iput-object p1, p0, Ly2/o;->b:Ll9/a;

    iput-object p2, p0, Ly2/o;->c:Ll9/a;

    iput-object p3, p0, Ly2/o;->d:Ll9/a;

    iput-object p4, p0, Ly2/o;->e:Ll9/a;

    iput-object p5, p0, Ly2/o;->f:Ll9/a;

    iput-object p6, p0, Ly2/o;->g:Ll9/a;

    iput-object p7, p0, Ly2/o;->h:Ll9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Ly2/o;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Ly2/o;->b:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ly2/o;->c:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lv2/e;

    iget-object v0, p0, Ly2/o;->d:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lz2/c;

    iget-object v0, p0, Ly2/o;->e:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ly2/t;

    iget-object v0, p0, Ly2/o;->f:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ly2/o;->g:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, La3/a;

    iget-object v0, p0, Ly2/o;->h:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lb3/a;

    .line 2
    new-instance v0, Ly2/n;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ly2/n;-><init>(Landroid/content/Context;Lv2/e;Lz2/c;Ly2/t;Ljava/util/concurrent/Executor;La3/a;Lb3/a;)V

    return-object v0

    .line 3
    :goto_0
    iget-object v0, p0, Ly2/o;->b:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lt4/c;

    iget-object v0, p0, Ly2/o;->c:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lw5/b;

    iget-object v0, p0, Ly2/o;->d:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lx5/e;

    iget-object v0, p0, Ly2/o;->e:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lw5/b;

    iget-object v0, p0, Ly2/o;->f:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/perf/config/RemoteConfigManager;

    iget-object v0, p0, Ly2/o;->g:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le6/a;

    iget-object v0, p0, Ly2/o;->h:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    .line 4
    new-instance v0, Lc6/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lc6/a;-><init>(Lt4/c;Lw5/b;Lx5/e;Lw5/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Le6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
