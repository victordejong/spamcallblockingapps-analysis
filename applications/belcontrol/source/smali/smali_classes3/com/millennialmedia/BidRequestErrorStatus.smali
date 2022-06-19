.class public Lcom/millennialmedia/BidRequestErrorStatus;
.super Lcom/millennialmedia/internal/ErrorStatus;
.source ""


# static fields
.field public static final INVALID_BID_PRICE:I = 0x191


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/ErrorStatus;->errorCodes:Ljava/util/Map;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INVALID_BID_PRICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(ILjava/lang/String;)V

    return-void
.end method
