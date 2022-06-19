.class public Lcom/telguarder/helpers/backend/VolleyHelper;
.super Ljava/lang/Object;
.source "VolleyHelper.java"


# static fields
.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 30
    sget-object v0, Lcom/telguarder/helpers/backend/VolleyHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/telguarder/helpers/backend/VolleyHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 33
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/backend/VolleyHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_1

    const-string v0, "RequestQueue is not initialized!"

    .line 34
    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 36
    :cond_1
    sget-object v0, Lcom/telguarder/helpers/backend/VolleyHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static initWithContext(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    sput-object p0, Lcom/telguarder/helpers/backend/VolleyHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method
