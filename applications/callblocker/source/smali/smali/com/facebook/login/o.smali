.class public Lcom/facebook/login/o;
.super Ljava/lang/Object;
.source "LoginResult.java"


# instance fields
.field private final a:Lcom/facebook/a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/a;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/login/o;->a:Lcom/facebook/a;

    .line 47
    iput-object p2, p0, Lcom/facebook/login/o;->b:Ljava/util/Set;

    .line 48
    iput-object p3, p0, Lcom/facebook/login/o;->c:Ljava/util/Set;

    .line 49
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/login/o;->a:Lcom/facebook/a;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/login/o;->b:Ljava/util/Set;

    return-object v0
.end method
