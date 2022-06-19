.class final enum Lio/bidmachine/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/h;

.field public static final enum Init:Lio/bidmachine/h;

.field public static final enum Publisher:Lio/bidmachine/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lio/bidmachine/h;

    const-string v1, "Publisher"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/h;->Publisher:Lio/bidmachine/h;

    new-instance v1, Lio/bidmachine/h;

    const-string v3, "Init"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/h;->Init:Lio/bidmachine/h;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/bidmachine/h;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/bidmachine/h;->$VALUES:[Lio/bidmachine/h;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/h;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/h;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/h;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/h;->$VALUES:[Lio/bidmachine/h;

    invoke-virtual {v0}, [Lio/bidmachine/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/h;

    return-object v0
.end method
