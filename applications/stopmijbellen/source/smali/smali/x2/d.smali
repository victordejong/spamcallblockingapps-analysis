.class public final Lx2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;
.implements Lo4/s;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx2/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Lx2/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lx2/d;->c:Ljava/lang/Object;

    iput-object p4, p0, Lx2/d;->d:Ljava/lang/Object;

    iput-object p5, p0, Lx2/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lx2/d;->a:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lx2/d;->b:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lv2/e;

    iget-object v0, p0, Lx2/d;->c:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ly2/t;

    iget-object v0, p0, Lx2/d;->d:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lz2/c;

    iget-object v0, p0, Lx2/d;->e:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, La3/a;

    .line 2
    new-instance v0, Lx2/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lx2/c;-><init>(Ljava/util/concurrent/Executor;Lv2/e;Ly2/t;Lz2/c;La3/a;)V

    return-object v0
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lx2/d;->a:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lx2/d;->b:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v4

    iget-object v1, p0, Lx2/d;->c:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v5

    iget-object v1, p0, Lx2/d;->d:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lx2/d;->e:Ljava/lang/Object;

    check-cast v2, Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    .line 2
    new-instance v8, Lj4/k0;

    move-object v3, v0

    check-cast v3, Lj4/w;

    move-object v6, v1

    check-cast v6, Lj4/r0;

    move-object v7, v2

    check-cast v7, Lj4/r1;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lj4/k0;-><init>(Lj4/w;Lo4/p;Lo4/p;Lj4/r0;Lj4/r1;)V

    return-object v8
.end method
