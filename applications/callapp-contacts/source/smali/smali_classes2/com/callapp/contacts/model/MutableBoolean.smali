.class public Lcom/callapp/contacts/model/MutableBoolean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/callapp/contacts/model/MutableBoolean;->value:Z

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/callapp/contacts/model/MutableBoolean;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/callapp/contacts/model/MutableBoolean;->value:Z

    return-void
.end method
