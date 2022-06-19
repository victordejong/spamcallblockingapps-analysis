.class public Ley$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ley;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ley;


# direct methods
.method public constructor <init>(Ley;)V
    .locals 0

    iput-object p1, p0, Ley$c;->a:Ley;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ley$c;->a:Ley;

    iget-object p1, p1, Ley;->d:Ldz$i;

    invoke-virtual {p1}, Ldz$i;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ley$c;->a:Ley;

    iget-object p1, p1, Ley;->a:Ldz;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ldz;->r(I)V

    :cond_0
    iget-object p1, p0, Ley$c;->a:Ley;

    invoke-virtual {p1}, Lt;->dismiss()V

    return-void
.end method
