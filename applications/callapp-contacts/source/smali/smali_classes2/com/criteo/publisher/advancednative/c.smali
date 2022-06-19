.class final Lcom/criteo/publisher/advancednative/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/n;


# instance fields
.field final a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/criteo/publisher/advancednative/f;

.field private final c:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;",
            "Lcom/criteo/publisher/advancednative/f;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/c;->c:Ljava/net/URI;

    .line 41
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/c;->a:Ljava/lang/ref/Reference;

    .line 42
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/c;->b:Lcom/criteo/publisher/advancednative/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/c;->b:Lcom/criteo/publisher/advancednative/f;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v2, v0, Lcom/criteo/publisher/advancednative/f;->a:Lcom/criteo/publisher/e/c;

    new-instance v3, Lcom/criteo/publisher/advancednative/f$a;

    invoke-direct {v3, v0, v1}, Lcom/criteo/publisher/advancednative/f$a;-><init>(Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    invoke-virtual {v2, v3}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/c;->b:Lcom/criteo/publisher/advancednative/f;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/c;->c:Ljava/net/URI;

    new-instance v2, Lcom/criteo/publisher/advancednative/c$a;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/advancednative/c$a;-><init>(Lcom/criteo/publisher/advancednative/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/advancednative/f;->a(Ljava/net/URI;Lcom/criteo/publisher/b/c;)V

    return-void
.end method
