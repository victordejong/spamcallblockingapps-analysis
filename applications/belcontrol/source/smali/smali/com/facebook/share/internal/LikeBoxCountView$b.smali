.class public final enum Lcom/facebook/share/internal/LikeBoxCountView$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeBoxCountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/LikeBoxCountView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/share/internal/LikeBoxCountView$b;

.field public static final enum b:Lcom/facebook/share/internal/LikeBoxCountView$b;

.field public static final enum c:Lcom/facebook/share/internal/LikeBoxCountView$b;

.field public static final enum d:Lcom/facebook/share/internal/LikeBoxCountView$b;

.field public static final synthetic f:[Lcom/facebook/share/internal/LikeBoxCountView$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/facebook/share/internal/LikeBoxCountView$b;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/internal/LikeBoxCountView$b;->a:Lcom/facebook/share/internal/LikeBoxCountView$b;

    new-instance v1, Lcom/facebook/share/internal/LikeBoxCountView$b;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/share/internal/LikeBoxCountView$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/internal/LikeBoxCountView$b;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    new-instance v3, Lcom/facebook/share/internal/LikeBoxCountView$b;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/share/internal/LikeBoxCountView$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/share/internal/LikeBoxCountView$b;->c:Lcom/facebook/share/internal/LikeBoxCountView$b;

    new-instance v5, Lcom/facebook/share/internal/LikeBoxCountView$b;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/share/internal/LikeBoxCountView$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/share/internal/LikeBoxCountView$b;->d:Lcom/facebook/share/internal/LikeBoxCountView$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/share/internal/LikeBoxCountView$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/facebook/share/internal/LikeBoxCountView$b;->f:[Lcom/facebook/share/internal/LikeBoxCountView$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/LikeBoxCountView$b;
    .locals 1

    const-class v0, Lcom/facebook/share/internal/LikeBoxCountView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/internal/LikeBoxCountView$b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/internal/LikeBoxCountView$b;
    .locals 1

    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$b;->f:[Lcom/facebook/share/internal/LikeBoxCountView$b;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/LikeBoxCountView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/LikeBoxCountView$b;

    return-object v0
.end method
