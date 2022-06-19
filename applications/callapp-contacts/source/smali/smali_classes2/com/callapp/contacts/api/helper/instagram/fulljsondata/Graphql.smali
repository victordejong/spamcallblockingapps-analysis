.class public Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3ee3533f5362daf6L


# instance fields
.field private user:Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
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
.method public getUser()Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;->user:Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;

    return-object v0
.end method
