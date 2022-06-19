.class final Lcom/facebook/appevents/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/b/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/p;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/p;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/facebook/appevents/b/b$2;->a:Lcom/facebook/internal/p;

    iput-object p2, p0, Lcom/facebook/appevents/b/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/facebook/appevents/b/b$2;->a:Lcom/facebook/internal/p;

    if-eqz v0, :cond_0

    .line 1045
    iget-boolean v0, v0, Lcom/facebook/internal/p;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-static {}, Lcom/facebook/g;->q()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 103
    invoke-static {}, Lcom/facebook/appevents/b/b;->e()Lcom/facebook/appevents/b/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/b/b$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/appevents/b/b$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
