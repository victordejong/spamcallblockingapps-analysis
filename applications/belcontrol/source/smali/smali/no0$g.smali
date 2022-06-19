.class public final Lno0$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->W(Lno0$o;Lno0;Lri0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0$o;

.field public final synthetic b:Lno0;

.field public final synthetic c:Lri0;


# direct methods
.method public constructor <init>(Lno0$o;Lno0;Lri0;)V
    .locals 0

    iput-object p1, p0, Lno0$g;->a:Lno0$o;

    iput-object p2, p0, Lno0$g;->b:Lno0;

    iput-object p3, p0, Lno0$g;->c:Lri0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lno0$g;->a:Lno0$o;

    iget-object v1, p0, Lno0$g;->b:Lno0;

    iget-object v2, p0, Lno0$g;->c:Lri0;

    invoke-interface {v0, v1, v2}, Lno0$o;->a(Lno0;Lri0;)V

    return-void
.end method
