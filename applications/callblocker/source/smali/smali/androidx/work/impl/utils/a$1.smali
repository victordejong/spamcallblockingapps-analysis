.class final Landroidx/work/impl/utils/a$1;
.super Landroidx/work/impl/utils/a;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/a;->a(Ljava/util/UUID;Landroidx/work/impl/i;)Landroidx/work/impl/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/i;

.field final synthetic b:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/work/impl/i;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroidx/work/impl/utils/a$1;->a:Landroidx/work/impl/i;

    iput-object p2, p0, Landroidx/work/impl/utils/a$1;->b:Ljava/util/UUID;

    invoke-direct {p0}, Landroidx/work/impl/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Landroidx/work/impl/utils/a$1;->a:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 123
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/a$1;->a:Landroidx/work/impl/i;

    iget-object v2, p0, Landroidx/work/impl/utils/a$1;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/work/impl/utils/a$1;->a(Landroidx/work/impl/i;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 128
    iget-object v0, p0, Landroidx/work/impl/utils/a$1;->a:Landroidx/work/impl/i;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/a$1;->a(Landroidx/work/impl/i;)V

    .line 129
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 127
    throw v0
.end method
