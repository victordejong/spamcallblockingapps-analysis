.class public Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;
.super Lcom/explorestack/protobuf/TextFormat$ParseException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownFieldParseException"
.end annotation


# instance fields
.field private final unknownField:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1, p2, p4}, Lcom/explorestack/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    .line 1266
    iput-object p3, p0, Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;->unknownField:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, ""

    .line 1253
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUnknownField()Ljava/lang/String;
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;->unknownField:Ljava/lang/String;

    return-object v0
.end method
