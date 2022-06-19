.class final Lcom/criteo/publisher/advancednative/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/c;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/c;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/c$a;->a:Lcom/criteo/publisher/advancednative/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/c$a;->a:Lcom/criteo/publisher/advancednative/c;

    .line 1024
    iget-object v0, v0, Lcom/criteo/publisher/advancednative/c;->b:Lcom/criteo/publisher/advancednative/f;

    .line 52
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/c$a;->a:Lcom/criteo/publisher/advancednative/c;

    .line 2024
    iget-object v1, v1, Lcom/criteo/publisher/advancednative/c;->a:Ljava/lang/ref/Reference;

    .line 52
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/c$a;->a:Lcom/criteo/publisher/advancednative/c;

    .line 3024
    iget-object v0, v0, Lcom/criteo/publisher/advancednative/c;->b:Lcom/criteo/publisher/advancednative/f;

    .line 57
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/c$a;->a:Lcom/criteo/publisher/advancednative/c;

    .line 4024
    iget-object v1, v1, Lcom/criteo/publisher/advancednative/c;->a:Ljava/lang/ref/Reference;

    .line 57
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->b(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method
