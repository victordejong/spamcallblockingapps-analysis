.class final Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .locals 0

    .line 1405
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->valueOf(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1406
    sget-object p1, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1402
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$1;->convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object p1

    return-object p1
.end method
