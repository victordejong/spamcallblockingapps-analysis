.class Landroidx/viewpager2/a/a$1;
.super Ljava/lang/Object;
.source "AnimateLayoutChangeDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/a/a;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/a/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/a;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Landroidx/viewpager2/a/a$1;->a:Landroidx/viewpager2/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([I[I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    aget v0, p1, v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 94
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/a/a$1;->a([I[I)I

    move-result v0

    return v0
.end method
