.class final Lcom/facebook/a/i$2;
.super Ljava/lang/Object;
.source "AppEventsManager.java"

# interfaces
.implements Lcom/facebook/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/facebook/a/f/b;->a()V

    .line 61
    :cond_0
    return-void
.end method
