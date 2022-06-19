.class final Lcom/explorestack/protobuf/adcom/PlacementPosition$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/PlacementPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/PlacementPosition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/PlacementPosition$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object p1

    return-object p1
.end method

.method public final findValueByNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .locals 0

    .line 118
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->forNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object p1

    return-object p1
.end method
