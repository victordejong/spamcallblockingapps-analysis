.class public final Lj4/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final a:Lo4/s;

.field public final b:Lo4/s;

.field public final c:Lo4/s;

.field public final d:Lo4/s;

.field public final e:Lo4/s;

.field public final f:Lo4/s;

.field public final g:Lo4/s;

.field public final h:Lo4/s;

.field public final i:Lo4/s;


# direct methods
.method public constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/p0;->a:Lo4/s;

    iput-object p2, p0, Lj4/p0;->b:Lo4/s;

    iput-object p3, p0, Lj4/p0;->c:Lo4/s;

    iput-object p4, p0, Lj4/p0;->d:Lo4/s;

    iput-object p5, p0, Lj4/p0;->e:Lo4/s;

    iput-object p6, p0, Lj4/p0;->f:Lo4/s;

    iput-object p7, p0, Lj4/p0;->g:Lo4/s;

    iput-object p8, p0, Lj4/p0;->h:Lo4/s;

    iput-object p9, p0, Lj4/p0;->i:Lo4/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lj4/p0;->a:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lj4/p0;->b:Lo4/s;

    invoke-static {v2}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v5

    iget-object v2, v0, Lj4/p0;->c:Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lj4/p0;->d:Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lj4/p0;->e:Lo4/s;

    invoke-interface {v4}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lj4/p0;->f:Lo4/s;

    invoke-interface {v6}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Lj4/p0;->g:Lo4/s;

    invoke-interface {v7}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, Lj4/p0;->h:Lo4/s;

    invoke-interface {v8}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v0, Lj4/p0;->i:Lo4/s;

    invoke-interface {v9}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v9

    .line 2
    new-instance v13, Lj4/o0;

    check-cast v1, Lj4/b1;

    check-cast v2, Lj4/k0;

    move-object v10, v3

    check-cast v10, Lj4/d2;

    move-object v11, v4

    check-cast v11, Lj4/n1;

    move-object v12, v6

    check-cast v12, Lj4/q1;

    move-object v14, v7

    check-cast v14, Lj4/v1;

    move-object v15, v8

    check-cast v15, Lj4/x1;

    move-object/from16 v16, v9

    check-cast v16, Lj4/d1;

    move-object v3, v13

    move-object v4, v1

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Lj4/o0;-><init>(Lj4/b1;Lo4/p;Lj4/k0;Lj4/d2;Lj4/n1;Lj4/q1;Lj4/v1;Lj4/x1;Lj4/d1;)V

    return-object v13
.end method
