.class public Lcom/callapp/contacts/model/contact/AuPersonLookupData;
.super Lcom/callapp/contacts/model/contact/PersonLookupData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0xb1df6ef242cd8f7L


# direct methods
.method public constructor <init>(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/model/contact/PersonLookupData;-><init>(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getCountryName()Ljava/lang/String;
    .locals 1

    const-string v0, "Australia"

    return-object v0
.end method
