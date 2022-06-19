.class Lcom/facebook/FacebookException$1;
.super Ljava/lang/Object;
.source "FacebookException.java"

# interfaces
.implements Lcom/facebook/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/FacebookException;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/FacebookException$1;->b:Lcom/facebook/FacebookException;

    iput-object p2, p0, Lcom/facebook/FacebookException$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/facebook/FacebookException$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/a/b/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method
