.class public final enum Lio/bidmachine/MediaAssetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/MediaAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/MediaAssetType;

.field public static final enum All:Lio/bidmachine/MediaAssetType;

.field public static final enum Icon:Lio/bidmachine/MediaAssetType;

.field public static final enum Image:Lio/bidmachine/MediaAssetType;

.field public static final enum Video:Lio/bidmachine/MediaAssetType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lio/bidmachine/MediaAssetType;

    const-string v1, "Icon"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    new-instance v1, Lio/bidmachine/MediaAssetType;

    const-string v3, "Image"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    new-instance v3, Lio/bidmachine/MediaAssetType;

    const-string v5, "Video"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    new-instance v5, Lio/bidmachine/MediaAssetType;

    const-string v7, "All"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/bidmachine/MediaAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/bidmachine/MediaAssetType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lio/bidmachine/MediaAssetType;->$VALUES:[Lio/bidmachine/MediaAssetType;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/MediaAssetType;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/MediaAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/MediaAssetType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/MediaAssetType;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/MediaAssetType;->$VALUES:[Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0}, [Lio/bidmachine/MediaAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/MediaAssetType;

    return-object v0
.end method
