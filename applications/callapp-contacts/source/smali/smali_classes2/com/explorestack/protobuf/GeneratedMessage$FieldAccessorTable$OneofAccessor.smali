.class Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OneofAccessor"
.end annotation


# instance fields
.field private final caseMethod:Ljava/lang/reflect/Method;

.field private final caseMethodBuilder:Ljava/lang/reflect/Method;

.field private final clearMethod:Ljava/lang/reflect/Method;

.field private final descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    .line 2195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2196
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2197
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Case"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2198
    invoke-static {p3, p1, v3}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->caseMethod:Ljava/lang/reflect/Method;

    .line 2199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Class;

    .line 2200
    invoke-static {p4, p1, p3}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->caseMethodBuilder:Ljava/lang/reflect/Method;

    .line 2201
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clear"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {p4, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->clearMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public clear(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V
    .locals 2

    .line 2240
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->clearMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 2232
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->caseMethodBuilder:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    if-lez p1, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 2224
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->caseMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    if-lez p1, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public has(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Z
    .locals 3

    .line 2217
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->caseMethodBuilder:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public has(Lcom/explorestack/protobuf/GeneratedMessage;)Z
    .locals 3

    .line 2210
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->caseMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
