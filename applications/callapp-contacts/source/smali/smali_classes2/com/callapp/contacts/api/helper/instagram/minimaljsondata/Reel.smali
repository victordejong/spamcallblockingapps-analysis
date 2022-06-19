.class public Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x692b3276c2a4af39L


# instance fields
.field private user:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;
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
.method public getUser()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;->user:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;

    return-object v0
.end method

.method public setUser(Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;->user:Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;

    return-void
.end method
