.class final Lcom/facebook/appevents/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/a;Lcom/facebook/appevents/o;ZLcom/facebook/appevents/l;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lcom/facebook/appevents/o;

.field final synthetic d:Lcom/facebook/appevents/l;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/o;Lcom/facebook/appevents/l;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/facebook/appevents/e$5;->a:Lcom/facebook/appevents/a;

    iput-object p2, p0, Lcom/facebook/appevents/e$5;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/e$5;->c:Lcom/facebook/appevents/o;

    iput-object p4, p0, Lcom/facebook/appevents/e$5;->d:Lcom/facebook/appevents/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/j;)V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/facebook/appevents/e$5;->a:Lcom/facebook/appevents/a;

    iget-object v1, p0, Lcom/facebook/appevents/e$5;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/e$5;->c:Lcom/facebook/appevents/o;

    iget-object v3, p0, Lcom/facebook/appevents/e$5;->d:Lcom/facebook/appevents/l;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/a;Lcom/facebook/GraphRequest;Lcom/facebook/j;Lcom/facebook/appevents/o;Lcom/facebook/appevents/l;)V

    return-void
.end method
