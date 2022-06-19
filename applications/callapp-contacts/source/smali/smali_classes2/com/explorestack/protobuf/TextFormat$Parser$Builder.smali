.class public Lcom/explorestack/protobuf/TextFormat$Parser$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowUnknownEnumValues:Z

.field private allowUnknownExtensions:Z

.field private allowUnknownFields:Z

.field private parseInfoTreeBuilder:Lcom/explorestack/protobuf/TextFormatParseInfoTree$Builder;

.field private singularOverwritePolicy:Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1411
    iput-boolean v0, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    .line 1412
    iput-boolean v0, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownEnumValues:Z

    .line 1413
    iput-boolean v0, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownExtensions:Z

    .line 1414
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v0, 0x0

    .line 1416
    iput-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->parseInfoTreeBuilder:Lcom/explorestack/protobuf/TextFormatParseInfoTree$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/explorestack/protobuf/TextFormat$Parser;
    .locals 8

    .line 1454
    new-instance v7, Lcom/explorestack/protobuf/TextFormat$Parser;

    iget-boolean v1, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    iget-boolean v2, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownEnumValues:Z

    iget-boolean v3, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownExtensions:Z

    iget-object v4, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iget-object v5, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->parseInfoTreeBuilder:Lcom/explorestack/protobuf/TextFormatParseInfoTree$Builder;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/TextFormat$Parser;-><init>(ZZZLcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/explorestack/protobuf/TextFormatParseInfoTree$Builder;Lcom/explorestack/protobuf/TextFormat$1;)V

    return-object v7
.end method

.method public setAllowUnknownExtensions(Z)Lcom/explorestack/protobuf/TextFormat$Parser$Builder;
    .locals 0

    .line 1438
    iput-boolean p1, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownExtensions:Z

    return-object p0
.end method

.method public setAllowUnknownFields(Z)Lcom/explorestack/protobuf/TextFormat$Parser$Builder;
    .locals 0

    .line 1427
    iput-boolean p1, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    return-object p0
.end method

.method public setParseInfoTreeBuilder(Lcom/explorestack/protobuf/TextFormatParseInfoTree$Builder;)Lcom/explorestack/protobuf/TextFormat$Parser$Builder;
    .locals 0

    .line 1449
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->parseInfoTreeBuilder:Lcom/explorestack/protobuf/TextFormatParseInfoTree$Builder;

    return-object p0
.end method

.method public setSingularOverwritePolicy(Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;)Lcom/explorestack/protobuf/TextFormat$Parser$Builder;
    .locals 0

    .line 1444
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/explorestack/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object p0
.end method
