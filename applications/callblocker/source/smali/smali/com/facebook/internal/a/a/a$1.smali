.class final Lcom/facebook/internal/a/a/a$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/a/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/internal/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a/a;Lcom/facebook/internal/a/a;)I
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1, p2}, Lcom/facebook/internal/a/a;->a(Lcom/facebook/internal/a/a;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 110
    check-cast p1, Lcom/facebook/internal/a/a;

    check-cast p2, Lcom/facebook/internal/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/a/a/a$1;->a(Lcom/facebook/internal/a/a;Lcom/facebook/internal/a/a;)I

    move-result v0

    return v0
.end method
