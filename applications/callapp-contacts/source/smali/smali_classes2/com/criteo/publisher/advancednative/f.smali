.class public final Lcom/criteo/publisher/advancednative/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/criteo/publisher/e/c;

.field private final b:Lcom/criteo/publisher/b/b;

.field private final c:Lcom/criteo/publisher/m/b;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/b/b;Lcom/criteo/publisher/m/b;Lcom/criteo/publisher/e/c;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/f;->b:Lcom/criteo/publisher/b/b;

    .line 46
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/f;->c:Lcom/criteo/publisher/m/b;

    .line 47
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/f;->a:Lcom/criteo/publisher/e/c;

    return-void
.end method


# virtual methods
.method final a(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/f;->a:Lcom/criteo/publisher/e/c;

    new-instance v1, Lcom/criteo/publisher/advancednative/f$b;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/advancednative/f$b;-><init>(Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/net/URI;Lcom/criteo/publisher/b/c;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/f;->c:Lcom/criteo/publisher/m/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/m/b;->a()Landroid/content/ComponentName;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/f;->b:Lcom/criteo/publisher/b/b;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lcom/criteo/publisher/b/b;->a(Ljava/lang/String;Landroid/content/ComponentName;Lcom/criteo/publisher/b/c;)V

    return-void
.end method

.method final b(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/f;->a:Lcom/criteo/publisher/e/c;

    new-instance v1, Lcom/criteo/publisher/advancednative/f$c;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/advancednative/f$c;-><init>(Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
