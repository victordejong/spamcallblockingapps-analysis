.class Landroidx/work/impl/h$f;
.super Landroidx/room/p/a;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/p/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lb/r/a/b;)V
    .locals 1

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    .line 1
    invoke-interface {p1, v0}, Lb/r/a/b;->n(Ljava/lang/String;)V

    return-void
.end method
