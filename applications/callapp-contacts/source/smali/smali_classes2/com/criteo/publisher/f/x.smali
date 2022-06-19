.class public final Lcom/criteo/publisher/f/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/q$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/q$a<",
        "Lcom/criteo/publisher/f/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/f/v;

.field private final c:Lcom/criteo/publisher/m0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/f/v;Lcom/criteo/publisher/m0/g;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/f/x;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/criteo/publisher/f/x;->b:Lcom/criteo/publisher/f/v;

    .line 45
    iput-object p3, p0, Lcom/criteo/publisher/f/x;->c:Lcom/criteo/publisher/m0/g;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 1051
    new-instance v0, Lcom/criteo/publisher/f/t;

    iget-object v1, p0, Lcom/criteo/publisher/f/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/criteo/publisher/f/x;->c:Lcom/criteo/publisher/m0/g;

    iget-object v3, p0, Lcom/criteo/publisher/f/x;->b:Lcom/criteo/publisher/f/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/criteo/publisher/f/t;-><init>(Landroid/content/Context;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/f/v;)V

    .line 1052
    new-instance v1, Lcom/criteo/publisher/f/r;

    invoke-direct {v1, v0}, Lcom/criteo/publisher/f/r;-><init>(Lcom/criteo/publisher/f/t;)V

    .line 1053
    new-instance v0, Lcom/criteo/publisher/f/n;

    iget-object v2, p0, Lcom/criteo/publisher/f/x;->c:Lcom/criteo/publisher/m0/g;

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/f/n;-><init>(Lcom/criteo/publisher/f/w;Lcom/criteo/publisher/m0/g;)V

    return-object v0
.end method
