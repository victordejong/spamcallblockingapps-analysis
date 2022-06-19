.class final Lcom/explorestack/protobuf/NewInstanceSchemaLite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/NewInstanceSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 36
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 37
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
