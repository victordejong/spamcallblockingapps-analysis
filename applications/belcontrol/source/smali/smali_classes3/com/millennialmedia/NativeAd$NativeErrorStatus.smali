.class public Lcom/millennialmedia/NativeAd$NativeErrorStatus;
.super Lcom/millennialmedia/internal/ErrorStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeErrorStatus"
.end annotation


# static fields
.field public static final EXPIRED:I = 0x12d


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/ErrorStatus;->errorCodes:Ljava/util/Map;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXPIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
