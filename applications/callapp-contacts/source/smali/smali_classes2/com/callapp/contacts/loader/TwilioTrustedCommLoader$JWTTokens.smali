.class Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JWTTokens"
.end annotation


# instance fields
.field private callInfoToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "call_info_token"
    .end annotation
.end field

.field private directoryToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "directory_token"
    .end annotation
.end field

.field private exp:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "exp"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    .line 94
    iget-object v1, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->exp:Ljava/util/Date;

    iget-object v2, p1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->exp:Ljava/util/Date;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->directoryToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->directoryToken:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->callInfoToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->callInfoToken:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getCallInfoToken()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->callInfoToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryToken()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->directoryToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()Ljava/util/Date;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->exp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->exp:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v2, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->directoryToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v2, p0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->callInfoToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
