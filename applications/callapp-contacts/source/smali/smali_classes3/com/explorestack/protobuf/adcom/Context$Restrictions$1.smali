.class final Lcom/explorestack/protobuf/adcom/Context$Restrictions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Restrictions;
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
        "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 0

    .line 26757
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->valueOf(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    .line 26758
    sget-object p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26754
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$1;->convert(Ljava/lang/Integer;)Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object p1

    return-object p1
.end method
