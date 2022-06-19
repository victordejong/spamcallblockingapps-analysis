.class public final synthetic Lav;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcv$a;

.field public final b:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcv$a;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lav;->a:Lcv$a;

    iput-object p2, p0, Lav;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lav;->a:Lcv$a;

    iget-object v1, p0, Lav;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcv$a;->k(Landroid/view/Surface;)V

    return-void
.end method
