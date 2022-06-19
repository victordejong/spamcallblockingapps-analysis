.class final Lcom/criteo/publisher/advancednative/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/a;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/a;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    .line 1024
    iget-object v0, v0, Lcom/criteo/publisher/advancednative/a;->b:Lcom/criteo/publisher/advancednative/f;

    .line 50
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    .line 2024
    iget-object v1, v1, Lcom/criteo/publisher/advancednative/a;->a:Ljava/lang/ref/Reference;

    .line 50
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    .line 3024
    iget-object v0, v0, Lcom/criteo/publisher/advancednative/a;->b:Lcom/criteo/publisher/advancednative/f;

    .line 55
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    .line 4024
    iget-object v1, v1, Lcom/criteo/publisher/advancednative/a;->a:Ljava/lang/ref/Reference;

    .line 55
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->b(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method
