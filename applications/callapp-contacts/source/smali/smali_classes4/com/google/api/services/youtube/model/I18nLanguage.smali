.class public final Lcom/google/api/services/youtube/model/I18nLanguage;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/I18nLanguageSnippet;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/I18nLanguage;->clone()Lcom/google/api/services/youtube/model/I18nLanguage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/I18nLanguage;->clone()Lcom/google/api/services/youtube/model/I18nLanguage;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/I18nLanguage;
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/I18nLanguage;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/I18nLanguage;->clone()Lcom/google/api/services/youtube/model/I18nLanguage;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/I18nLanguageSnippet;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->snippet:Lcom/google/api/services/youtube/model/I18nLanguageSnippet;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/I18nLanguage;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/I18nLanguage;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/I18nLanguage;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/I18nLanguage;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/I18nLanguage;
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/I18nLanguage;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nLanguage;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nLanguage;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nLanguage;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/I18nLanguageSnippet;)Lcom/google/api/services/youtube/model/I18nLanguage;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nLanguage;->snippet:Lcom/google/api/services/youtube/model/I18nLanguageSnippet;

    return-object p0
.end method
