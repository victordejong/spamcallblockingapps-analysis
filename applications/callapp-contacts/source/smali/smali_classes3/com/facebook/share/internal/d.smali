.class public abstract Lcom/facebook/share/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/f;


# direct methods
.method public constructor <init>(Lcom/facebook/f;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/share/internal/d;->a:Lcom/facebook/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/facebook/share/internal/d;->a:Lcom/facebook/f;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/facebook/f;->c()V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
.end method

.method public a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/facebook/share/internal/d;->a:Lcom/facebook/f;

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Lcom/facebook/f;->k()V

    :cond_0
    return-void
.end method
