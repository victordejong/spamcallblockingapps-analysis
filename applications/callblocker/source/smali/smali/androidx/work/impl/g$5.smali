.class final Landroidx/work/impl/g$5;
.super Landroidx/room/a/a;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Landroidx/room/a/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 1

    .prologue
    .line 198
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 199
    return-void
.end method
