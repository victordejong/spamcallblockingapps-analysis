.class public final Lqm0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqm0;->j(Lqm0$e;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrm0;

.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic f:Lrm0$c;


# direct methods
.method public constructor <init>(Lrm0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lrm0$c;)V
    .locals 0

    iput-object p1, p0, Lqm0$a;->a:Lrm0;

    iput-object p2, p0, Lqm0$a;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lqm0$a;->c:Z

    iput-object p4, p0, Lqm0$a;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lqm0$a;->f:Lrm0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lsm0;

    iget-object v1, p0, Lqm0$a;->a:Lrm0;

    iget-object v2, p0, Lqm0$a;->b:Ljava/lang/Exception;

    iget-boolean v3, p0, Lqm0$a;->c:Z

    iget-object v4, p0, Lqm0$a;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lsm0;-><init>(Lrm0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    iget-object v1, p0, Lqm0$a;->f:Lrm0$c;

    invoke-interface {v1, v0}, Lrm0$c;->a(Lsm0;)V

    return-void
.end method
