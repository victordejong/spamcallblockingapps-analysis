.class final Lcom/criteo/publisher/advancednative/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/e;->a(Landroid/view/View;Lcom/criteo/publisher/advancednative/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/n;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/e;Lcom/criteo/publisher/advancednative/n;)V
    .locals 0

    .line 43
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/e$a;->a:Lcom/criteo/publisher/advancednative/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/criteo/publisher/advancednative/e$a;->a:Lcom/criteo/publisher/advancednative/n;

    invoke-interface {p1}, Lcom/criteo/publisher/advancednative/n;->a()V

    return-void
.end method
