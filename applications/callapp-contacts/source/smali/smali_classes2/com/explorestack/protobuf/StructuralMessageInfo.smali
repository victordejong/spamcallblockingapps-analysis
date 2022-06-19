.class final Lcom/explorestack/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/explorestack/protobuf/MessageLite;

.field private final fields:[Lcom/explorestack/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/explorestack/protobuf/ProtoSyntax;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/ProtoSyntax;Z[I[Lcom/explorestack/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 64
    iput-boolean p2, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    .line 65
    iput-object p3, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->checkInitialized:[I

    .line 66
    iput-object p4, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->fields:[Lcom/explorestack/protobuf/FieldInfo;

    const-string p1, "defaultInstance"

    .line 67
    invoke-static {p5, p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    .line 102
    new-instance v0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    .line 107
    new-instance v0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final getCheckInitialized()[I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public final getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method public final getFields()[Lcom/explorestack/protobuf/FieldInfo;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->fields:[Lcom/explorestack/protobuf/FieldInfo;

    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public final isMessageSetWireFormat()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
