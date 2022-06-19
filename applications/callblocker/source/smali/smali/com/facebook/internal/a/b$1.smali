.class final Lcom/facebook/internal/a/b$1;
.super Ljava/lang/Object;
.source "InstrumentManager.java"

# interfaces
.implements Lcom/facebook/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-static {}, Lcom/facebook/internal/a/a/a;->a()V

    .line 52
    :cond_0
    return-void
.end method
