.class public final Lcom/google/api/services/youtube/model/LanguageTag;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LanguageTag;->clone()Lcom/google/api/services/youtube/model/LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LanguageTag;->clone()Lcom/google/api/services/youtube/model/LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LanguageTag;
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LanguageTag;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LanguageTag;->clone()Lcom/google/api/services/youtube/model/LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LanguageTag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LanguageTag;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LanguageTag;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LanguageTag;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LanguageTag;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LanguageTag;
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LanguageTag;

    return-object p1
.end method

.method public final setValue(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LanguageTag;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LanguageTag;->value:Ljava/lang/String;

    return-object p0
.end method
