.class public Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
.super Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 1

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)V

    return-object v0
.end method
