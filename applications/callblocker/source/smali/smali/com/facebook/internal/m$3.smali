.class final Lcom/facebook/internal/m$3;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/m;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/m$b;

.field final synthetic b:Lcom/facebook/internal/l;


# direct methods
.method constructor <init>(Lcom/facebook/internal/m$b;Lcom/facebook/internal/l;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/facebook/internal/m$3;->a:Lcom/facebook/internal/m$b;

    iput-object p2, p0, Lcom/facebook/internal/m$3;->b:Lcom/facebook/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/internal/m$3;->a:Lcom/facebook/internal/m$b;

    iget-object v1, p0, Lcom/facebook/internal/m$3;->b:Lcom/facebook/internal/l;

    invoke-interface {v0, v1}, Lcom/facebook/internal/m$b;->a(Lcom/facebook/internal/l;)V

    .line 264
    return-void
.end method
