.class public final Lorg/mistergroup/shouldianswer/utils/h;
.super Landroidx/c/d;
.source "IterableLongSparseArray.kt"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/utils/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/c/d<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/h$a;

    move-object v1, p0

    check-cast v1, Landroidx/c/d;

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/utils/h$a;-><init>(Landroidx/c/d;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
