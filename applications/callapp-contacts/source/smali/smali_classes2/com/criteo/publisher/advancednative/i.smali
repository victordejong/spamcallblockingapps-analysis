.class public final Lcom/criteo/publisher/advancednative/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/advancednative/i$b;
    }
.end annotation


# instance fields
.field final a:Lcom/criteo/publisher/j0/g;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Lcom/criteo/publisher/e/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/j0/g;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/e/c;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/i;->a:Lcom/criteo/publisher/j0/g;

    .line 44
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/i;->b:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/i;->c:Lcom/criteo/publisher/e/c;

    return-void
.end method
