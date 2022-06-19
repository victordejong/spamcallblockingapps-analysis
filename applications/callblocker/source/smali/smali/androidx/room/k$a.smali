.class public abstract Landroidx/room/k$a;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/k;
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

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Landroidx/room/k$a;->a:I

    .line 211
    return-void
.end method


# virtual methods
.method protected abstract a(Landroidx/i/a/b;)V
.end method

.method protected abstract b(Landroidx/i/a/b;)V
.end method

.method protected abstract c(Landroidx/i/a/b;)V
.end method

.method protected abstract d(Landroidx/i/a/b;)V
.end method

.method protected e(Landroidx/i/a/b;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "validateMigration is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f(Landroidx/i/a/b;)Landroidx/room/k$b;
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Landroidx/room/k$a;->e(Landroidx/i/a/b;)V

    .line 242
    new-instance v0, Landroidx/room/k$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/k$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method protected g(Landroidx/i/a/b;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method protected h(Landroidx/i/a/b;)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method
