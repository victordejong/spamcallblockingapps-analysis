.class final Landroidx/work/impl/g$3;
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
    .line 172
    invoke-direct {p0, p1, p2}, Landroidx/room/a/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 177
    return-void
.end method
