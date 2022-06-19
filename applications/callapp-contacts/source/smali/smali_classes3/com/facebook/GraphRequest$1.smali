.class final Lcom/facebook/GraphRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/facebook/GraphRequest$1;->a:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/j;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/facebook/GraphRequest$1;->a:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 304
    invoke-interface {v0, v1, p1}, Lcom/facebook/GraphRequest$GraphJSONObjectCallback;->onCompleted(Lorg/json/JSONObject;Lcom/facebook/j;)V

    :cond_0
    return-void
.end method
