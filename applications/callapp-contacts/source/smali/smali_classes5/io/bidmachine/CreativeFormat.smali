.class public final enum Lio/bidmachine/CreativeFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/CreativeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/CreativeFormat;

.field public static final enum Banner:Lio/bidmachine/CreativeFormat;

.field public static final enum Native:Lio/bidmachine/CreativeFormat;

.field public static final enum Video:Lio/bidmachine/CreativeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lio/bidmachine/CreativeFormat;

    const-string v1, "Banner"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/CreativeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/CreativeFormat;->Banner:Lio/bidmachine/CreativeFormat;

    new-instance v1, Lio/bidmachine/CreativeFormat;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/CreativeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    new-instance v3, Lio/bidmachine/CreativeFormat;

    const-string v5, "Native"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/CreativeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/CreativeFormat;->Native:Lio/bidmachine/CreativeFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/bidmachine/CreativeFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lio/bidmachine/CreativeFormat;->$VALUES:[Lio/bidmachine/CreativeFormat;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/CreativeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/CreativeFormat;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/CreativeFormat;->$VALUES:[Lio/bidmachine/CreativeFormat;

    invoke-virtual {v0}, [Lio/bidmachine/CreativeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/CreativeFormat;

    return-object v0
.end method
