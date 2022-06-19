.class Landroidx/core/f/e$e;
.super Landroidx/core/f/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Landroidx/core/f/e$c;Z)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroidx/core/f/e$d;-><init>(Landroidx/core/f/e$c;)V

    .line 157
    iput-boolean p2, p0, Landroidx/core/f/e$e;->a:Z

    .line 158
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Landroidx/core/f/e$e;->a:Z

    return v0
.end method
