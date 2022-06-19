.class public Lu91$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu91;->k(Lr61$b;ILr61$c;Lv91;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu91;


# direct methods
.method public constructor <init>(Lu91;)V
    .locals 0

    iput-object p1, p0, Lu91$c;->a:Lu91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lv91;->n()V

    iget-object p1, p0, Lu91$c;->a:Lu91;

    invoke-static {p1}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu91$c;->a:Lu91;

    invoke-static {p1}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lu91$c;->a:Lu91;

    invoke-static {p1}, Lu91;->e(Lu91;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lbc1;->a()V

    :cond_0
    return-void
.end method
