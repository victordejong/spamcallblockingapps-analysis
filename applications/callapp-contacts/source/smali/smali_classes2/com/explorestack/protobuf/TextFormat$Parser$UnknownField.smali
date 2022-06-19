.class final Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnknownField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField$Type;
    }
.end annotation


# instance fields
.field final message:Ljava/lang/String;

.field final type:Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField$Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField$Type;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1526
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField;->message:Ljava/lang/String;

    .line 1527
    iput-object p2, p0, Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField;->type:Lcom/explorestack/protobuf/TextFormat$Parser$UnknownField$Type;

    return-void
.end method
