.class public final enum Lio/bidmachine/AdContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdContentType;

.field public static final enum All:Lio/bidmachine/AdContentType;

.field public static final enum Static:Lio/bidmachine/AdContentType;

.field public static final enum Video:Lio/bidmachine/AdContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lio/bidmachine/AdContentType;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/AdContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    new-instance v1, Lio/bidmachine/AdContentType;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/AdContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    new-instance v3, Lio/bidmachine/AdContentType;

    const-string v5, "Static"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/AdContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/bidmachine/AdContentType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lio/bidmachine/AdContentType;->$VALUES:[Lio/bidmachine/AdContentType;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdContentType;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/AdContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdContentType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdContentType;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/AdContentType;->$VALUES:[Lio/bidmachine/AdContentType;

    invoke-virtual {v0}, [Lio/bidmachine/AdContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdContentType;

    return-object v0
.end method
