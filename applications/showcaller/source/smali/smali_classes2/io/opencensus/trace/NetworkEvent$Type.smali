.class public final enum Lio/opencensus/trace/NetworkEvent$Type;
.super Ljava/lang/Enum;
.source "NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/NetworkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/trace/NetworkEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lio/opencensus/trace/NetworkEvent$Type;

.field public static final enum e:Lio/opencensus/trace/NetworkEvent$Type;

.field private static final synthetic f:[Lio/opencensus/trace/NetworkEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/opencensus/trace/NetworkEvent$Type;

    const-string v1, "SENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/opencensus/trace/NetworkEvent$Type;->d:Lio/opencensus/trace/NetworkEvent$Type;

    .line 2
    new-instance v1, Lio/opencensus/trace/NetworkEvent$Type;

    const-string v3, "RECV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/opencensus/trace/NetworkEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/opencensus/trace/NetworkEvent$Type;->e:Lio/opencensus/trace/NetworkEvent$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/opencensus/trace/NetworkEvent$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/opencensus/trace/NetworkEvent$Type;->f:[Lio/opencensus/trace/NetworkEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/trace/NetworkEvent$Type;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/trace/NetworkEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/NetworkEvent$Type;

    return-object p0
.end method

.method public static values()[Lio/opencensus/trace/NetworkEvent$Type;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/NetworkEvent$Type;->f:[Lio/opencensus/trace/NetworkEvent$Type;

    invoke-virtual {v0}, [Lio/opencensus/trace/NetworkEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/trace/NetworkEvent$Type;

    return-object v0
.end method
