.class public final enum Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackableEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "creativeView"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v3, "start"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v3, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v5, "firstQuartile"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v5, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v7, "midpoint"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v7, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v9, "thirdQuartile"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v9, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v11, "complete"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v11, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v13, "closeLinear"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v13, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v15, "skip"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    new-instance v15, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v14, "progress"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->$VALUES:[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->$VALUES:[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    return-object v0
.end method
