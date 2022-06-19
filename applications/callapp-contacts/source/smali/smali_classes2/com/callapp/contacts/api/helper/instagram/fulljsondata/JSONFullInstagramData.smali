.class public Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x48a8803a3ac5213bL


# instance fields
.field private graphql:Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "graphql"
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
.method public getGraphql()Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;->graphql:Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;

    return-object v0
.end method

.method public setGraphql(Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;->graphql:Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;

    return-void
.end method
