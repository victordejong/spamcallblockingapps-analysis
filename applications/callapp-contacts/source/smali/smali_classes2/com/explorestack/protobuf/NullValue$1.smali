.class final Lcom/explorestack/protobuf/NullValue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/NullValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/NullValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/NullValue$1;->findValueByNumber(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object p1

    return-object p1
.end method

.method public final findValueByNumber(I)Lcom/explorestack/protobuf/NullValue;
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/explorestack/protobuf/NullValue;->forNumber(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object p1

    return-object p1
.end method
