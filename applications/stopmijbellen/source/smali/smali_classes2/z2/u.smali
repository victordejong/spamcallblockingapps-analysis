.class public final synthetic Lz2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/w$a;


# static fields
.field public static final synthetic a:Lz2/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/u;

    invoke-direct {v0}, Lz2/u;-><init>()V

    sput-object v0, Lz2/u;->a:Lz2/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lz2/w;->c:Ljava/util/List;

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
