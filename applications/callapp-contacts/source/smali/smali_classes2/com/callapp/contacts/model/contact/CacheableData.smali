.class public abstract Lcom/callapp/contacts/model/contact/CacheableData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastUpdated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/CacheableData;->lastUpdated:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getLastUpdated()Ljava/util/Date;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CacheableData;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public isExpired(I)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CacheableData;->lastUpdated:Ljava/util/Date;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;I)Z

    move-result p1

    return p1
.end method

.method public setLastUpdated(Ljava/util/Date;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/CacheableData;->lastUpdated:Ljava/util/Date;

    return-void
.end method
