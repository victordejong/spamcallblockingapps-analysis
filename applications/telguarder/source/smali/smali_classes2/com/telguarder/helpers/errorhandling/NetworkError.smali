.class public Lcom/telguarder/helpers/errorhandling/NetworkError;
.super Lcom/android/volley/VolleyError;
.source "NetworkError.java"


# instance fields
.field public final body:Ljava/lang/String;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final requestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

.field public final response:Lcom/android/volley/NetworkResponse;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/VolleyError;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/telguarder/helpers/backend/BackendRequest$Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/VolleyError;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/telguarder/helpers/backend/BackendRequest$Method;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 24
    iput-object p2, p0, Lcom/telguarder/helpers/errorhandling/NetworkError;->url:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/telguarder/helpers/errorhandling/NetworkError;->params:Ljava/util/Map;

    .line 26
    iput-object p4, p0, Lcom/telguarder/helpers/errorhandling/NetworkError;->body:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/telguarder/helpers/errorhandling/NetworkError;->headers:Ljava/util/Map;

    .line 28
    iput-object p6, p0, Lcom/telguarder/helpers/errorhandling/NetworkError;->requestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    .line 29
    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iput-object p1, p0, Lcom/telguarder/helpers/errorhandling/NetworkError;->response:Lcom/android/volley/NetworkResponse;

    return-void
.end method
