.class final Lcom/facebook/internal/m$2;
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


# direct methods
.method constructor <init>(Lcom/facebook/internal/m$b;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/internal/m$2;->a:Lcom/facebook/internal/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/internal/m$2;->a:Lcom/facebook/internal/m$b;

    invoke-interface {v0}, Lcom/facebook/internal/m$b;->a()V

    .line 252
    return-void
.end method
