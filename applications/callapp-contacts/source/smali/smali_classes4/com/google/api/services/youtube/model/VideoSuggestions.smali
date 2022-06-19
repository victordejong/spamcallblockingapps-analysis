.class public final Lcom/google/api/services/youtube/model/VideoSuggestions;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private editorSuggestions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processingErrors:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processingHints:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processingWarnings:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagSuggestions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoSuggestionsTagSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoSuggestions;->clone()Lcom/google/api/services/youtube/model/VideoSuggestions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoSuggestions;->clone()Lcom/google/api/services/youtube/model/VideoSuggestions;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoSuggestions;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoSuggestions;->clone()Lcom/google/api/services/youtube/model/VideoSuggestions;

    move-result-object v0

    return-object v0
.end method

.method public final getEditorSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->editorSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public final getProcessingErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->processingErrors:Ljava/util/List;

    return-object v0
.end method

.method public final getProcessingHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->processingHints:Ljava/util/List;

    return-object v0
.end method

.method public final getProcessingWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->processingWarnings:Ljava/util/List;

    return-object v0
.end method

.method public final getTagSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoSuggestionsTagSuggestion;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->tagSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoSuggestions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoSuggestions;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoSuggestions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoSuggestions;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoSuggestions;

    return-object p1
.end method

.method public final setEditorSuggestions(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoSuggestions;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->editorSuggestions:Ljava/util/List;

    return-object p0
.end method

.method public final setProcessingErrors(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoSuggestions;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->processingErrors:Ljava/util/List;

    return-object p0
.end method

.method public final setProcessingHints(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoSuggestions;"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->processingHints:Ljava/util/List;

    return-object p0
.end method

.method public final setProcessingWarnings(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoSuggestions;"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->processingWarnings:Ljava/util/List;

    return-object p0
.end method

.method public final setTagSuggestions(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoSuggestionsTagSuggestion;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoSuggestions;"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSuggestions;->tagSuggestions:Ljava/util/List;

    return-object p0
.end method
