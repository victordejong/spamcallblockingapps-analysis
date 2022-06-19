.class public Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractedCountry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->a:Ljava/lang/String;

    .line 291
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->b:Z

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 286
    check-cast p1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;

    .line 1306
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1308
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->isReliable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getCountryISO()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isReliable()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->b:Z

    return v0
.end method
