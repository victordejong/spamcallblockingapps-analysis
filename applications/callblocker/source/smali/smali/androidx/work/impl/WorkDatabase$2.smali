.class final Landroidx/work/impl/WorkDatabase$2;
.super Landroidx/room/i$b;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->l()Landroidx/room/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Landroidx/room/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/i/a/b;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroidx/room/i$b;->b(Landroidx/i/a/b;)V

    .line 161
    invoke-interface {p1}, Landroidx/i/a/b;->a()V

    .line 165
    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Landroidx/i/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 169
    throw v0
.end method
