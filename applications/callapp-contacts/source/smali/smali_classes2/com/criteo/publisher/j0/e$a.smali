.class final Lcom/criteo/publisher/j0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/j0/e;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/u;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/u;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/j0/e$a;->a:Lcom/criteo/publisher/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/j0/e$a;->a:Lcom/criteo/publisher/u;

    invoke-virtual {v0}, Lcom/criteo/publisher/u;->a()V

    return-void
.end method
