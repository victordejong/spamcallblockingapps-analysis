.class public Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INPUT_SHAPE_COUNT:I


# instance fields
.field protected _acceptBlankAsEmpty:Ljava/lang/Boolean;

.field protected final _coercionsByShape:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->values()[Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->INPUT_SHAPE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->INPUT_SHAPE_COUNT:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_coercionsByShape:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_acceptBlankAsEmpty:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_acceptBlankAsEmpty:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_acceptBlankAsEmpty:Ljava/lang/Boolean;

    .line 30
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_coercionsByShape:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_coercionsByShape:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-void
.end method


# virtual methods
.method public findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_coercionsByShape:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAcceptBlankAsEmpty()Ljava/lang/Boolean;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->_acceptBlankAsEmpty:Ljava/lang/Boolean;

    return-object v0
.end method
