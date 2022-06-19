.class final Lcom/explorestack/protobuf/adcom/Ad$Display$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display;
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
        "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;
    .locals 0

    .line 17213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 17214
    sget-object p1, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17210
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$2;->convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    move-result-object p1

    return-object p1
.end method
