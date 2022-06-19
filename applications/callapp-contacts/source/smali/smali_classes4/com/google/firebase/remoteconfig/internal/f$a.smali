.class public final Lcom/google/firebase/remoteconfig/internal/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field b:Ljava/util/Date;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->a:Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/f;->b()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->b:Ljava/util/Date;

    .line 161
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->c:Lorg/json/JSONArray;

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->d:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/f$1;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/f$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iget-object v0, p1, Lcom/google/firebase/remoteconfig/internal/f;->a:Lorg/json/JSONObject;

    .line 166
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->a:Lorg/json/JSONObject;

    .line 1117
    iget-object v0, p1, Lcom/google/firebase/remoteconfig/internal/f;->b:Ljava/util/Date;

    .line 167
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->b:Ljava/util/Date;

    .line 1121
    iget-object v0, p1, Lcom/google/firebase/remoteconfig/internal/f;->c:Lorg/json/JSONArray;

    .line 168
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->c:Lorg/json/JSONArray;

    .line 1125
    iget-object p1, p1, Lcom/google/firebase/remoteconfig/internal/f;->d:Lorg/json/JSONObject;

    .line 169
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)Lcom/google/firebase/remoteconfig/internal/f$a;
    .locals 1

    .line 196
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->c:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/f$a;
    .locals 1

    .line 179
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public final a()Lcom/google/firebase/remoteconfig/internal/f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 220
    new-instance v6, Lcom/google/firebase/remoteconfig/internal/f;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->b:Ljava/util/Date;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->c:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->d:Lorg/json/JSONObject;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/internal/f;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/google/firebase/remoteconfig/internal/f$1;)V

    return-object v6
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/f$a;
    .locals 1

    .line 208
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/f$a;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
