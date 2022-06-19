.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source ""


# instance fields
.field public volatile k:Ld70;

.field public volatile l:Lu60;

.field public volatile m:Lg70;

.field public volatile n:Lx60;

.field public volatile o:La70;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method public static synthetic A(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz00;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic B(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz00;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic C(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz00;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic D(Landroidx/work/impl/WorkDatabase_Impl;Ln10;)Ln10;
    .locals 0

    iput-object p1, p0, Lz00;->a:Ln10;

    return-object p1
.end method

.method public static synthetic E(Landroidx/work/impl/WorkDatabase_Impl;Ln10;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz00;->m(Ln10;)V

    return-void
.end method

.method public static synthetic F(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz00;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic G(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz00;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic H(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz00;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public e()Lw00;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Lw00;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lw00;-><init>(Lz00;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public f(Lr00;)Lo10;
    .locals 4

    new-instance v0, Lb10;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$a;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c84d23ade98552f1cec71088c1f0794c"

    const-string v3, "1db8206f0da6aa81bbdd2d99a82d9e14"

    invoke-direct {v0, p1, v1, v2, v3}, Lb10;-><init>(Lr00;Lb10$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lr00;->b:Landroid/content/Context;

    invoke-static {v1}, Lo10$b;->a(Landroid/content/Context;)Lo10$b$a;

    move-result-object v1

    iget-object v2, p1, Lr00;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo10$b$a;->c(Ljava/lang/String;)Lo10$b$a;

    invoke-virtual {v1, v0}, Lo10$b$a;->b(Lo10$a;)Lo10$b$a;

    invoke-virtual {v1}, Lo10$b$a;->a()Lo10$b;

    move-result-object v0

    iget-object p1, p1, Lr00;->a:Lo10$c;

    invoke-interface {p1, v0}, Lo10$c;->a(Lo10$b;)Lo10;

    move-result-object p1

    return-object p1
.end method

.method public s()Lu60;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lu60;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lu60;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lu60;

    if-nez v0, :cond_1

    new-instance v0, Lv60;

    invoke-direct {v0, p0}, Lv60;-><init>(Lz00;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lu60;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Lu60;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w()Lx60;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lx60;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lx60;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lx60;

    if-nez v0, :cond_1

    new-instance v0, Ly60;

    invoke-direct {v0, p0}, Ly60;-><init>(Lz00;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lx60;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lx60;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x()La70;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:La70;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:La70;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:La70;

    if-nez v0, :cond_1

    new-instance v0, Lb70;

    invoke-direct {v0, p0}, Lb70;-><init>(Lz00;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:La70;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:La70;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public y()Ld70;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Ld70;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Ld70;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Ld70;

    if-nez v0, :cond_1

    new-instance v0, Le70;

    invoke-direct {v0, p0}, Le70;-><init>(Lz00;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Ld70;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Ld70;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public z()Lg70;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lg70;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lg70;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lg70;

    if-nez v0, :cond_1

    new-instance v0, Lh70;

    invoke-direct {v0, p0}, Lh70;-><init>(Lz00;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lg70;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lg70;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
