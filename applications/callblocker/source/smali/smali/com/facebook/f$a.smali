.class public Lcom/facebook/f$a;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()Lcom/facebook/f;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/internal/d;

    invoke-direct {v0}, Lcom/facebook/internal/d;-><init>()V

    return-object v0
.end method
