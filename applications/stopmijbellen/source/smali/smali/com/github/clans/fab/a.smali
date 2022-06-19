.class public Lcom/github/clans/fab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/a;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/a;->a:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->j:Z

    .line 3
    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->a0:Lcom/github/clans/fab/FloatingActionMenu$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu$c;->d(Z)V

    :cond_0
    return-void
.end method
