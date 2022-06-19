.class final Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/context/ContextData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method
