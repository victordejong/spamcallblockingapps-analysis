.class public final enum Lio/bidmachine/Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/Orientation;

.field public static final enum Landscape:Lio/bidmachine/Orientation;

.field public static final enum Portrait:Lio/bidmachine/Orientation;

.field public static final enum Undefined:Lio/bidmachine/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lio/bidmachine/Orientation;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/Orientation;->Undefined:Lio/bidmachine/Orientation;

    new-instance v1, Lio/bidmachine/Orientation;

    const-string v3, "Portrait"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/Orientation;->Portrait:Lio/bidmachine/Orientation;

    new-instance v3, Lio/bidmachine/Orientation;

    const-string v5, "Landscape"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/Orientation;->Landscape:Lio/bidmachine/Orientation;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/bidmachine/Orientation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lio/bidmachine/Orientation;->$VALUES:[Lio/bidmachine/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/Orientation;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/Orientation;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/Orientation;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/Orientation;->$VALUES:[Lio/bidmachine/Orientation;

    invoke-virtual {v0}, [Lio/bidmachine/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/Orientation;

    return-object v0
.end method
