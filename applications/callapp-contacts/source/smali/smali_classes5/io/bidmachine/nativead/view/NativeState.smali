.class public final enum Lio/bidmachine/nativead/view/NativeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/nativead/view/NativeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/nativead/view/NativeState;

.field public static final enum IMAGE:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum LOADING:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum PAUSED:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum PLAYING:Lio/bidmachine/nativead/view/NativeState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->IMAGE:Lio/bidmachine/nativead/view/NativeState;

    new-instance v1, Lio/bidmachine/nativead/view/NativeState;

    const-string v3, "PLAYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/nativead/view/NativeState;->PLAYING:Lio/bidmachine/nativead/view/NativeState;

    new-instance v3, Lio/bidmachine/nativead/view/NativeState;

    const-string v5, "LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/nativead/view/NativeState;->LOADING:Lio/bidmachine/nativead/view/NativeState;

    new-instance v5, Lio/bidmachine/nativead/view/NativeState;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/bidmachine/nativead/view/NativeState;->PAUSED:Lio/bidmachine/nativead/view/NativeState;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/bidmachine/nativead/view/NativeState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lio/bidmachine/nativead/view/NativeState;->$VALUES:[Lio/bidmachine/nativead/view/NativeState;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/nativead/view/NativeState;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/nativead/view/NativeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/nativead/view/NativeState;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/nativead/view/NativeState;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->$VALUES:[Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v0}, [Lio/bidmachine/nativead/view/NativeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/nativead/view/NativeState;

    return-object v0
.end method
