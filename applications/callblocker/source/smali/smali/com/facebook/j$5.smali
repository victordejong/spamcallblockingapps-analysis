.class final Lcom/facebook/j$5;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/j;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/facebook/j$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/j$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/facebook/j$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/j$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 649
    return-void
.end method
