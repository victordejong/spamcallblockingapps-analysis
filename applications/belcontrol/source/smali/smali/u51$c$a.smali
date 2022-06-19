.class public Lu51$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu51$c;-><init>(Lu51;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu51$c;


# direct methods
.method public constructor <init>(Lu51$c;Lu51;)V
    .locals 0

    iput-object p1, p0, Lu51$c$a;->a:Lu51$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lu51$c$a;->a:Lu51$c;

    iget-object v0, v0, Lu51$c;->i:Lu51;

    invoke-static {v0}, Lu51;->k(Lu51;)Lu51$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lu51$b;->d(Landroid/view/View;)V

    return-void
.end method
