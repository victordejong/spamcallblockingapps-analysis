.class public final Lud$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud;->n(Lnd;ILud$h;Landroid/view/View;Lb4;Lud$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lud$g;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Lp9;


# direct methods
.method public constructor <init>(Lud$g;Landroidx/fragment/app/Fragment;Lp9;)V
    .locals 0

    iput-object p1, p0, Lud$c;->a:Lud$g;

    iput-object p2, p0, Lud$c;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lud$c;->c:Lp9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lud$c;->a:Lud$g;

    iget-object v1, p0, Lud$c;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lud$c;->c:Lp9;

    invoke-interface {v0, v1, v2}, Lud$g;->a(Landroidx/fragment/app/Fragment;Lp9;)V

    return-void
.end method
