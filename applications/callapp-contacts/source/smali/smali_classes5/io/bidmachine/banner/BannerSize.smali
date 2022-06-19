.class public final enum Lio/bidmachine/banner/BannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/banner/BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_300x250:Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_320x50:Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_728x90:Lio/bidmachine/banner/BannerSize;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lio/bidmachine/banner/BannerSize;

    const-string v1, "Size_320x50"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    .line 6
    new-instance v1, Lio/bidmachine/banner/BannerSize;

    const-string v3, "Size_300x250"

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/16 v6, 0xfa

    invoke-direct {v1, v3, v4, v5, v6}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 7
    new-instance v3, Lio/bidmachine/banner/BannerSize;

    const-string v5, "Size_728x90"

    const/4 v6, 0x2

    const/16 v7, 0x2d8

    const/16 v8, 0x5a

    invoke-direct {v3, v5, v6, v7, v8}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/bidmachine/banner/BannerSize;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lio/bidmachine/banner/BannerSize;->$VALUES:[Lio/bidmachine/banner/BannerSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lio/bidmachine/banner/BannerSize;->width:I

    .line 14
    iput p4, p0, Lio/bidmachine/banner/BannerSize;->height:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/banner/BannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/banner/BannerSize;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/banner/BannerSize;->$VALUES:[Lio/bidmachine/banner/BannerSize;

    invoke-virtual {v0}, [Lio/bidmachine/banner/BannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/banner/BannerSize;

    return-object v0
.end method
