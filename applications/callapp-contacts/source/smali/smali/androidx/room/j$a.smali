.class public abstract Landroidx/room/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Landroidx/room/j$a;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroidx/sqlite/db/b;)V
.end method

.method protected abstract b(Landroidx/sqlite/db/b;)V
.end method

.method protected abstract c(Landroidx/sqlite/db/b;)V
.end method

.method protected d(Landroidx/sqlite/db/b;)Landroidx/room/j$b;
    .locals 1

    .line 1230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "validateMigration is deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected e(Landroidx/sqlite/db/b;)V
    .locals 0

    return-void
.end method
