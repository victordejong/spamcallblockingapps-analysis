.class public final Lcom/google/api/services/youtube/model/LocalizedProperty;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private defaultLanguage:Lcom/google/api/services/youtube/model/LanguageTag;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private default__:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "default"
    .end annotation
.end field

.field private localized:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LocalizedString;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LocalizedProperty;->clone()Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LocalizedProperty;->clone()Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LocalizedProperty;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LocalizedProperty;->clone()Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final getDefault()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->default__:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultLanguage()Lcom/google/api/services/youtube/model/LanguageTag;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->defaultLanguage:Lcom/google/api/services/youtube/model/LanguageTag;

    return-object v0
.end method

.method public final getLocalized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LocalizedString;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->localized:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LocalizedProperty;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LocalizedProperty;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LocalizedProperty;

    return-object p1
.end method

.method public final setDefault(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->default__:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultLanguage(Lcom/google/api/services/youtube/model/LanguageTag;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->defaultLanguage:Lcom/google/api/services/youtube/model/LanguageTag;

    return-object p0
.end method

.method public final setLocalized(Ljava/util/List;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LocalizedString;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LocalizedProperty;"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->localized:Ljava/util/List;

    return-object p0
.end method
