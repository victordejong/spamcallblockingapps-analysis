.class final Lcom/facebook/a/d/a$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Lcom/facebook/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/a;->a(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/facebook/a/b/b;->a()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/facebook/a/b/b;->b()V

    goto :goto_0
.end method
