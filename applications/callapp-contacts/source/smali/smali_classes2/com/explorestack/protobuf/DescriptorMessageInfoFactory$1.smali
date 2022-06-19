.class final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fd:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;->val$fd:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;->val$fd:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
