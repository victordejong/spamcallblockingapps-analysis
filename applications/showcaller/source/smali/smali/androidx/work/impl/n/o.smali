.class public final Landroidx/work/impl/n/o;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/n/n;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Landroidx/work/impl/n/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/n;

.field private final d:Landroidx/room/n;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Landroidx/work/impl/n/o$a;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/n/o$a;-><init>(Landroidx/work/impl/n/o;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/n/o;->b:Landroidx/room/b;

    .line 4
    new-instance v0, Landroidx/work/impl/n/o$b;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/n/o$b;-><init>(Landroidx/work/impl/n/o;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/n;

    .line 5
    new-instance v0, Landroidx/work/impl/n/o$c;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/n/o$c;-><init>(Landroidx/work/impl/n/o;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/n/o;->d:Landroidx/room/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/n;

    invoke-virtual {v0}, Landroidx/room/n;->a()Lb/r/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lb/r/a/d;->T(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/r/a/d;->o(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lb/r/a/f;->r()I

    .line 7
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    .line 9
    iget-object p1, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/n;

    invoke-virtual {p1, v0}, Landroidx/room/n;->f(Lb/r/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 11
    iget-object v1, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/n;

    invoke-virtual {v1, v0}, Landroidx/room/n;->f(Lb/r/a/f;)V

    .line 12
    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/o;->d:Landroidx/room/n;

    invoke-virtual {v0}, Landroidx/room/n;->a()Lb/r/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lb/r/a/f;->r()I

    .line 5
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 7
    iget-object v1, p0, Landroidx/work/impl/n/o;->d:Landroidx/room/n;

    invoke-virtual {v1, v0}, Landroidx/room/n;->f(Lb/r/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 9
    iget-object v2, p0, Landroidx/work/impl/n/o;->d:Landroidx/room/n;

    invoke-virtual {v2, v0}, Landroidx/room/n;->f(Lb/r/a/f;)V

    .line 10
    throw v1
.end method

.method public c(Landroidx/work/impl/n/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/n/o;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method
