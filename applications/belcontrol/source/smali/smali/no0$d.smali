.class public final Lno0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lno0$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->V(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    iput p1, p0, Lno0$d;->a:I

    iput p2, p0, Lno0$d;->b:I

    iput-object p3, p0, Lno0$d;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lno0;Lri0;)V
    .locals 2

    if-nez p2, :cond_0

    iget p2, p0, Lno0$d;->a:I

    iget v0, p0, Lno0$d;->b:I

    iget-object v1, p0, Lno0$d;->c:Landroid/content/Intent;

    invoke-static {p1, p2, v0, v1}, Lno0;->a(Lno0;IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lfn0;->V(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
