.class public Lcom/callapp/contacts/model/contact/FastNameCache;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1d5aa939b69197e7L


# instance fields
.field private dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private fullName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FastNameCache;->fullName:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/FastNameCache;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method


# virtual methods
.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FastNameCache;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FastNameCache;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FastNameCache;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FastNameCache;->fullName:Ljava/lang/String;

    return-void
.end method
