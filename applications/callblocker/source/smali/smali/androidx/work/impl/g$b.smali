.class public Landroidx/work/impl/g$b;
.super Landroidx/room/a/a;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 220
    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroidx/room/a/a;-><init>(II)V

    .line 221
    iput-object p1, p0, Landroidx/work/impl/g$b;->c:Landroid/content/Context;

    .line 222
    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroidx/work/impl/g$b;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/utils/e;->a(Landroid/content/Context;Landroidx/i/a/b;)V

    .line 228
    iget-object v0, p0, Landroidx/work/impl/g$b;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/utils/c;->a(Landroid/content/Context;Landroidx/i/a/b;)V

    .line 229
    return-void
.end method
