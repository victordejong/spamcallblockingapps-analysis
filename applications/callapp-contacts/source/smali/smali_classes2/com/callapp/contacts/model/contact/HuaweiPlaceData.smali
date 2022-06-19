.class public Lcom/callapp/contacts/model/contact/HuaweiPlaceData;
.super Lcom/callapp/contacts/model/contact/ExtendedPlaceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7a664c8a63784938L


# instance fields
.field private siteId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;-><init>()V

    return-void
.end method


# virtual methods
.method public getSiteId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->siteId:Ljava/lang/String;

    return-void
.end method
