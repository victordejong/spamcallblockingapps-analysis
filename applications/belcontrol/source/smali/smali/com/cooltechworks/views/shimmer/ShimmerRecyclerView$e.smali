.class public final enum Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

.field public static final enum b:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

.field public static final enum c:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

.field public static final synthetic d:[Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    const-string v1, "LINEAR_VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->a:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    new-instance v1, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    const-string v3, "LINEAR_HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->b:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    new-instance v3, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    const-string v5, "GRID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->c:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->d:[Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;
    .locals 1

    const-class v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    return-object p0
.end method

.method public static values()[Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;
    .locals 1

    sget-object v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->d:[Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    invoke-virtual {v0}, [Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$e;

    return-object v0
.end method
