.class public final enum Lio/opencensus/trace/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/trace/m$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/trace/m$b;

.field public static final enum RECEIVED:Lio/opencensus/trace/m$b;

.field public static final enum SENT:Lio/opencensus/trace/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lio/opencensus/trace/m$b;

    const-string v1, "SENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/opencensus/trace/m$b;->SENT:Lio/opencensus/trace/m$b;

    .line 54
    new-instance v1, Lio/opencensus/trace/m$b;

    const-string v3, "RECEIVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/opencensus/trace/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/opencensus/trace/m$b;->RECEIVED:Lio/opencensus/trace/m$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/opencensus/trace/m$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 42
    sput-object v3, Lio/opencensus/trace/m$b;->$VALUES:[Lio/opencensus/trace/m$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/trace/m$b;
    .locals 1

    .line 42
    const-class v0, Lio/opencensus/trace/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/m$b;

    return-object p0
.end method

.method public static values()[Lio/opencensus/trace/m$b;
    .locals 1

    .line 42
    sget-object v0, Lio/opencensus/trace/m$b;->$VALUES:[Lio/opencensus/trace/m$b;

    invoke-virtual {v0}, [Lio/opencensus/trace/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/trace/m$b;

    return-object v0
.end method
