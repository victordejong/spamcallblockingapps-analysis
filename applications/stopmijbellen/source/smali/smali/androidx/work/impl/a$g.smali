.class public Landroidx/work/impl/a$g;
.super Le1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le1/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lg1/a;)V
    .locals 1

    .line 1
    check-cast p1, Lh1/a;

    .line 2
    iget-object p1, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
