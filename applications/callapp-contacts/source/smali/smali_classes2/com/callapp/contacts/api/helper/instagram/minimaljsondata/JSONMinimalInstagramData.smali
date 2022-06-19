.class public Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x365cf1b78fae2b3fL


# instance fields
.field private data:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;->data:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;

    return-object v0
.end method

.method public setData(Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;->data:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;

    return-void
.end method
