.class public Lcom/callerid/block/bean/EZCountryCode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public country_code:Ljava/lang/String;

.field public country_name:Ljava/lang/String;

.field public iso_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountry_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZCountryCode;->country_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZCountryCode;->country_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIso_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZCountryCode;->iso_code:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZCountryCode;->country_code:Ljava/lang/String;

    return-void
.end method

.method public setCountry_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZCountryCode;->country_name:Ljava/lang/String;

    return-void
.end method

.method public setIso_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZCountryCode;->iso_code:Ljava/lang/String;

    return-void
.end method
