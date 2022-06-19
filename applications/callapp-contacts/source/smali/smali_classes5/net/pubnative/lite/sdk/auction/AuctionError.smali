.class public Lnet/pubnative/lite/sdk/auction/AuctionError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adSourceName:Ljava/lang/String;

.field private final error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/AuctionError;->adSourceName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lnet/pubnative/lite/sdk/auction/AuctionError;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getAdSourceName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/AuctionError;->adSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/AuctionError;->error:Ljava/lang/Throwable;

    return-object v0
.end method
