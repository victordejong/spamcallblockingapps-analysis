.class Lcom/applovin/impl/adview/b$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/b$4;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/b$4;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/b$4$1;->a:Lcom/applovin/impl/adview/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/applovin/impl/adview/b$4$1;->a:Lcom/applovin/impl/adview/b$4;

    iget-object p1, p1, Lcom/applovin/impl/adview/b$4;->b:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->k()V

    return-void
.end method
