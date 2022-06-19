.class final Lio/bidmachine/protobuf/analytics/PlacementTag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/PlacementTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/analytics/PlacementTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/PlacementTag$1;->findValueByNumber(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object p1

    return-object p1
.end method

.method public final findValueByNumber(I)Lio/bidmachine/protobuf/analytics/PlacementTag;
    .locals 0

    .line 100
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/PlacementTag;->forNumber(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object p1

    return-object p1
.end method
