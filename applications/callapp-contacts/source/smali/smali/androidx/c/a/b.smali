.class public final Landroidx/c/a/b;
.super Landroidx/c/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/c/a/a<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/c/a/a;-><init>()V

    return-void
.end method

.method public static a()Landroidx/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/c/a/b<",
            "TV;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Landroidx/c/a/b;

    invoke-direct {v0}, Landroidx/c/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroidx/c/a/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroidx/c/a/a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
