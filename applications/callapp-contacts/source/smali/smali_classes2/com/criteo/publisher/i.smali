.class public Lcom/criteo/publisher/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/criteo/publisher/e;

.field private final b:Lcom/criteo/publisher/logging/g;

.field private final c:Lcom/criteo/publisher/h;

.field private final d:Lcom/criteo/publisher/e/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/e;Lcom/criteo/publisher/h;Lcom/criteo/publisher/e/c;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/i;->b:Lcom/criteo/publisher/logging/g;

    .line 53
    iput-object p1, p0, Lcom/criteo/publisher/i;->a:Lcom/criteo/publisher/e;

    .line 54
    iput-object p2, p0, Lcom/criteo/publisher/i;->c:Lcom/criteo/publisher/h;

    .line 55
    iput-object p3, p0, Lcom/criteo/publisher/i;->d:Lcom/criteo/publisher/e/c;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/i;)Lcom/criteo/publisher/h;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/i;->c:Lcom/criteo/publisher/h;

    return-object p0
.end method

.method static synthetic b(Lcom/criteo/publisher/i;)Lcom/criteo/publisher/logging/g;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/i;->b:Lcom/criteo/publisher/logging/g;

    return-object p0
.end method

.method static synthetic c(Lcom/criteo/publisher/i;)Lcom/criteo/publisher/e/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/i;->d:Lcom/criteo/publisher/e/c;

    return-object p0
.end method
