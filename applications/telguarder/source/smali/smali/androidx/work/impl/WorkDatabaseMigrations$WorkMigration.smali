.class public Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;
.super Landroidx/room/migration/Migration;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkMigration"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 98
    invoke-direct {p0, p2, p3}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 99
    iput-object p1, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 104
    new-instance p1, Landroidx/work/impl/utils/Preferences;

    iget-object v0, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/work/impl/utils/Preferences;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/Preferences;->setNeedsReschedule(Z)V

    return-void
.end method
