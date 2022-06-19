.class public Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x78613d5eb6b75231L


# instance fields
.field private fullName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;->fullName:Ljava/lang/String;

    return-object v0
.end method
