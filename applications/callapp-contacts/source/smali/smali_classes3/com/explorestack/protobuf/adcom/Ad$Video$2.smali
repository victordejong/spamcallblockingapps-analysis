.class final Lcom/explorestack/protobuf/adcom/Ad$Video$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Video;
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
        "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 0

    .line 20804
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->valueOf(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20805
    sget-object p1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20801
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$2;->convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object p1

    return-object p1
.end method
