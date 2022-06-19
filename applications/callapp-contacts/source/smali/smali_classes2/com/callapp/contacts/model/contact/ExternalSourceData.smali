.class public abstract Lcom/callapp/contacts/model/contact/ExternalSourceData;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x66f8c2e14d7a49aL


# instance fields
.field private fullName:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExternalSourceData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExternalSourceData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExternalSourceData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExternalSourceData;->key:Ljava/lang/String;

    return-void
.end method
