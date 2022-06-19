.class public Landroidx/work/impl/g;
.super Ljava/lang/Object;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/g$b;,
        Landroidx/work/impl/g$a;
    }
.end annotation


# static fields
.field public static a:Landroidx/room/a/a;

.field public static b:Landroidx/room/a/a;

.field public static c:Landroidx/room/a/a;

.field public static d:Landroidx/room/a/a;

.field public static e:Landroidx/room/a/a;

.field public static f:Landroidx/room/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 115
    new-instance v0, Landroidx/work/impl/g$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/g$1;-><init>(II)V

    sput-object v0, Landroidx/work/impl/g;->a:Landroidx/room/a/a;

    .line 159
    new-instance v0, Landroidx/work/impl/g$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3}, Landroidx/work/impl/g$2;-><init>(II)V

    sput-object v0, Landroidx/work/impl/g;->b:Landroidx/room/a/a;

    .line 172
    new-instance v0, Landroidx/work/impl/g$3;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v1}, Landroidx/work/impl/g$3;-><init>(II)V

    sput-object v0, Landroidx/work/impl/g;->c:Landroidx/room/a/a;

    .line 184
    new-instance v0, Landroidx/work/impl/g$4;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v4}, Landroidx/work/impl/g$4;-><init>(II)V

    sput-object v0, Landroidx/work/impl/g;->d:Landroidx/room/a/a;

    .line 195
    new-instance v0, Landroidx/work/impl/g$5;

    invoke-direct {v0, v4, v5}, Landroidx/work/impl/g$5;-><init>(II)V

    sput-object v0, Landroidx/work/impl/g;->e:Landroidx/room/a/a;

    .line 206
    new-instance v0, Landroidx/work/impl/g$6;

    const/16 v1, 0x9

    invoke-direct {v0, v5, v1}, Landroidx/work/impl/g$6;-><init>(II)V

    sput-object v0, Landroidx/work/impl/g;->f:Landroidx/room/a/a;

    return-void
.end method
