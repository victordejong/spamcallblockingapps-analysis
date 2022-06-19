.class final Lcom/facebook/a/d/a$3;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/facebook/a/d/i;->a()Lcom/facebook/a/d/i;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/d/a;->a(Lcom/facebook/a/d/i;)Lcom/facebook/a/d/i;

    .line 163
    :cond_0
    return-void
.end method
