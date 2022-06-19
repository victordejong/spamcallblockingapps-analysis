.class public final Landroidx/work/impl/utils/a/c;
.super Landroidx/work/impl/utils/a/a;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/work/impl/utils/a/a",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroidx/work/impl/utils/a/a;-><init>()V

    .line 65
    return-void
.end method

.method public static d()Landroidx/work/impl/utils/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/work/impl/utils/a/c",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Landroidx/work/impl/utils/a/c;

    invoke-direct {v0}, Landroidx/work/impl/utils/a/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/a/a/a/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/a/a",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroidx/work/impl/utils/a/a;->a(Lcom/google/a/a/a/a;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroidx/work/impl/utils/a/a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroidx/work/impl/utils/a/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
