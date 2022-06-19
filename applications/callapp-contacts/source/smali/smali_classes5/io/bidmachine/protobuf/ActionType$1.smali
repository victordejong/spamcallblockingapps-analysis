.class final Lio/bidmachine/protobuf/ActionType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/ActionType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ActionType$1;->findValueByNumber(I)Lio/bidmachine/protobuf/ActionType;

    move-result-object p1

    return-object p1
.end method

.method public final findValueByNumber(I)Lio/bidmachine/protobuf/ActionType;
    .locals 0

    .line 175
    invoke-static {p1}, Lio/bidmachine/protobuf/ActionType;->forNumber(I)Lio/bidmachine/protobuf/ActionType;

    move-result-object p1

    return-object p1
.end method
